import bpy

rig_name = "minecraft_rig"

class MinecraftRigProperties(bpy.types.Panel):
    bl_space_type = 'VIEW_3D'
    bl_region_type = 'UI'
    bl_label = "Minecraft's Properties"
    
    @classmethod
    def poll(self, context):
        try:
            return (context.active_object.data.get("rig_name") == rig_name)
        except (AttributeError, KeyError, TypeError):
            return False

    def draw(self, context):
        layout = self.layout        
        col = layout.column()
        pose_bones = context.active_object.pose.bones
        
        col.label(text="Arm IK Switches")
        col.prop(pose_bones["root"], '["arm_ik/fk.L"]', text="IK/FK Left Arm", slider=True)
        col.prop(pose_bones["root"], '["arm_ik/fk.R"]', text="IK/FK Right Arm", slider=True)
        
        col.label(text="Arm Stretching (IK Only)")
        col.prop(pose_bones["root"], '["arm_stretch.L"]', text="Stretch Left Arm", slider=True)
        col.prop(pose_bones["root"], '["arm_stretch.R"]', text="Stretch Right Arm", slider=True)
        
        col.label(text="Legs")
        col.prop(pose_bones["root"], '["foot_ik/fk.L"]', text="IK/FK Left Leg", slider=True)
        col.prop(pose_bones["root"], '["foot_ik/fk.R"]', text="IK/FK Right Leg", slider=True)
        
        col.label(text="Leg Stretching (IK Only)")
        col.prop(pose_bones["root"], '["leg_stretch.L"]', text="Stretch Left Leg", slider=True)
        col.prop(pose_bones["root"], '["leg_stretch.R"]', text="Stretch Right Leg", slider=True)
        
        col.label(text="Subsurf")
        col.prop(pose_bones["root"], '["subsurf"]', text="Subsurf", toggle=True)
        
        
        col.label(text="Bone Layers")
        viscol01 = col.row()
        viscol01.prop(context.active_object.data, "layers", index=0, toggle=True, text="Base")
        viscol01.prop(context.active_object.data, "layers", index=23, toggle=True, text="Face")
        viscol01 = col.row()
        viscol01.prop(context.active_object.data, "layers", index=4, toggle=True, text="Arm L FK")
        viscol01.prop(context.active_object.data, "layers", index=3, toggle=True, text="Arm R FK")
        viscol01 = col.row()
        viscol01.prop(context.active_object.data, "layers", index=2, toggle=True, text="Arm L IK")
        viscol01.prop(context.active_object.data, "layers", index=1, toggle=True, text="Arm R IK")
        viscol01 = col.row()
        viscol01.prop(context.active_object.data, "layers", index=20, toggle=True, text="Leg L FK")
        viscol01.prop(context.active_object.data, "layers", index=19, toggle=True, text="Leg R FK")
        viscol01 = col.row()
        viscol01.prop(context.active_object.data, "layers", index=18, toggle=True, text="Leg L IK")
        viscol01.prop(context.active_object.data, "layers", index=17, toggle=True, text="Leg R IK")
        viscol01 = col.row()
        viscol01.prop(context.active_object.data, "layers", index=7, toggle=True, text="Eyes")
        viscol01.prop(context.active_object.data, "layers", index=16, toggle=True, text="Root")

        
        
        col.label(text="- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -")
        
        try:
            selected_bones = [bone.name for bone in context.selected_pose_bones]
            selected_bones += [context.active_pose_bone.name]
        except (AttributeError, TypeError):
            return
        

        
        def is_selected(names):
            # Returns whether any of the named bones are selected.
            if type(names) == list:
                for name in names:
                    if name in selected_bones:
                        return True
            elif names in selected_bones:
                return True
            return False
        
        
        
        #IK Switches
        ik_foot_left = "ik_foot_target.L"
        if is_selected([ik_foot_left]):
            col.prop(pose_bones["ik_foot_target.L"], '["foot_roll.L"]', text="Foot Roll Left", slider=True)
            
        ik_foot_right = "ik_foot_target.R"
        if is_selected([ik_foot_right]):
            col.prop(pose_bones["ik_foot_target.R"], '["foot_roll.R"]', text="Foot Roll Right", slider=True)


        MouthL = "mouth.L"
        if is_selected([MouthL]):
            col.prop(pose_bones["mouth.L"], '["cheek_puff.L"]', text="Cheek Puff", slider=True)

        MouthR = "mouth.R"
        if is_selected([MouthR]):
            col.prop(pose_bones["mouth.R"], '["cheek_puff.R"]', text="Cheek Puff", slider=True)

        Nose = "nose"
        if is_selected([Nose]):
            col.prop(pose_bones["nose"], '["sneer.L"]', text="Sneer Left", slider=True)
            col.prop(pose_bones["nose"], '["sneer.R"]', text="Sneer Right", slider=True)
           
        Eyes = "Eyes"
        if is_selected([Eyes]):
            col.label(text="Eyes")
            col.prop(pose_bones["Eyes"], '["pupil_small"]', text="Small Pupils", slider=True)

        #Mouth
        mouth = "mouth"

        if is_selected([mouth]):
            col.prop(pose_bones["mouth"], '["lip_top_in"]', text="Top Lip In", slider=True)
            col.prop(pose_bones["mouth"], '["lip_top_out"]', text="Top Lip Out", slider=True)
            col.prop(pose_bones["mouth"], '["lip_bottom_in"]', text="Bottom Lip In", slider=True)
            col.prop(pose_bones["mouth"], '["lip_bottom_out"]', text="Bottom Lip Out", slider=True)
            col.prop(pose_bones["mouth"], '["tongue_teeth"]', text="Tongue to Teeth", slider=True)

bpy.utils.register_class(MinecraftRigProperties)