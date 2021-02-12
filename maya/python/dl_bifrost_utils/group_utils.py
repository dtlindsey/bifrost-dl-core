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
            data = cmds.sets(deform_group,q=True)
            # if group isn't in the data yet
            my_data_groups[deform_group] = {}
            for polys in data:
                # make sure we're only dealing with faces
                if ".f[" in polys:
                    grp_split = polys.split(".")
                    mesh = grp_split[0]
                    faces = grp_split[-1].replace("f[","").replace("]","")
                    face_idx = []
                    if ":" in faces:
                        nums = faces.split(":")
                        for i in range(int(nums[0]), int(nums[1]) + 1):
                            face_idx.append(str(i))
                    else:
                        face_idx.append(str(int(faces)))
                    #
                    if mesh not in my_data_groups[deform_group].keys():
                        my_data_groups[deform_group][mesh] = "{0}:".format(deform_group)
                    my_data_groups[deform_group][mesh] += ",".join(face_idx)
    # build the attrs on each mesh, foreach mesh in each group
    for group, vals in my_data_groups.items():
        # get the polys on the meshes to fill in the data
        for mesh, attrs in vals.items():
            my_attrs = cmds.listAttr(mesh)
            # create the attr if it doesn't exist
            if not group in my_attrs:
                cmds.addAttr(mesh, dt="string", longName=group)
            cmds.setAttr(mesh + "." + group, attrs, type="string")
