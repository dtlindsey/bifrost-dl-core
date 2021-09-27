from maya import cmds


def build_group_attrs():
    """
    Simple script that will create string attributes on meshes.
    Names of the attributes will be based on the selection sets that the mesh has polygons in
    Values of the attributes will be name of the selection set : face idx list
    pSphere1 has faces 1,5,6,7,10,150 in selection set "mySphereDeform"
    You will end up with
    pSphere1.mySphereDeform filled with value "mySphereDeform:1,5,6,7,10,150"
    """
    sets = cmds.ls(sets=True)
    my_data_groups = {}
    for deform_group in sets:
        # parse only group that end in Deform for sanity of set tracking
        if deform_group.endswith("Deform"):
            data = cmds.sets(deform_group, q=True)
            # flatten the data
            data_flat = cmds.ls(data, flatten=True)
            # if group isn't in the data yet
            my_data_groups[deform_group] = {}
            # we may end up with multiple meshes in a set, account for it
            mesh_faces = {}
            for polys in data_flat:
                # make sure we're only dealing with faces
                if ".f[" in polys:
                    grp_split = polys.split(".")
                    mesh = grp_split[0]
                    if mesh not in mesh_faces:
                        mesh_faces[mesh] = []
                    face = int(grp_split[-1].replace("f[", "").replace("]", ""))
                    mesh_faces[mesh].append(str(face))
            # only create if we have mesh faces
            if mesh_faces:
                for mesh in mesh_faces.keys():
                    # create mesh if not in our data set
                    if mesh not in my_data_groups[deform_group].keys():
                        my_data_groups[deform_group][mesh] = "{0}:".format(deform_group)
                    # append then faces
                    my_data_groups[deform_group][mesh] += ",".join(mesh_faces[mesh])
    # build the attrs on each mesh, foreach mesh in each group
    for group, vals in my_data_groups.items():
        # get the polys on the meshes to fill in the data
        for mesh, attrs in vals.items():
            my_attrs = cmds.listAttr(mesh)
            # create the attr if it doesn't exist
            if not group in my_attrs:
                cmds.addAttr(mesh, dt="string", longName=group)
            # always update the data to the newest
            cmds.setAttr(mesh + "." + group, attrs, type="string")
