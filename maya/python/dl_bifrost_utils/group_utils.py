from maya import cmds


def build_group_attrs():
    sets = cmds.ls(sets=True)
    my_data_groups = {}
    for deform_group in sets:
        if deform_group.endswith("Deform"):
            data = cmds.sets(deform_group,q=True)
            my_data_groups[deform_group] = {}
            for polys in data:
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

    for group, vals in my_data_groups.items():
        for mesh, attrs in vals.items():
            cmds.addAttr(mesh, dt="string", longName=group)
            cmds.setAttr(mesh + "." + group, attrs, type="string")
