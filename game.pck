GDPC                                                                               <   res://.import/bone.png-a3e0618f4c9524c4388fc3350a8c3e98.stexD     z      ��d��
突r��:E<   res://.import/cave.tmx-e31e4a9a79d42a60a277d3e5ba4cef6a.scn �'           ]�(].b�9X=jw��D   res://.import/cave_tileset.png-ea6e9cc27b0413414dcf1b715660e66d.stex@b     �z      )di�����ʐ��D   res://.import/cave_tileset.tsx-664912ec42fbeafac01494085168b693.res ��     �     g���7�W�$ͯ� �`<   res://.import/key.png-0f95d143e0dfac18420b51d4e4b63e77.stex  I     a      ���o]�Z�f+�Q\l�@   res://.import/stalfaux.png-564ff99397dbda66287761ea342cd63c.stex ]     x      z'��KN%Y��?m��<   res://.import/test.tmx-ff3f06ea28cc71cadfa0020913bdeede.scn �>     B     kf�dH\2+���   res://game/cache/bone.tscn  �            ����S����S�h��H   res://game/cache/player.tscn�
      �      � �x�w�j#Ѫ`��    res://game/cache/stalfaux.tscn  �            1���Z���:ʌ�y��    res://game/maps/cave.tmx.import  =     �      {�+��1�L?�!��    res://game/maps/test.tmx.import 0B     �      &X}�ڤ��MtW>��J$   res://game/objects/bone.png.import  �F     �      rZ��Չ����Bst�X_$   res://game/objects/key.png.import   �Z     �      p�,�C�7|g��g{��(   res://game/objects/stalfaux.png.import  �_     �      �o"aMC�D;�M/;��(   res://game/tiled/cave_tileset.png.import �     �      J��8oV�@HQg��!(   res://game/tiled/cave_tileset.tsx.import��     �      ���r�"��:ɣ����   res://main.gd.remap �            ֤�\n�������Dݮ�   res://main.gdc  ��     �      2�{r�(�����   res://main.tscn P�     �       I34�Y��g�vAb�   res://project.binary�     �
      ���K[~Q���l\MD            [gd_scene load_steps=5 format=2]

[ext_resource path="res://engine/objects/weapon.gd" type="Script" id=1]
[ext_resource path="res://engine/state_machine.gd" type="Script" id=2]
[ext_resource path="res://game/objects/bone.png" type="Texture" id=3]

[sub_resource type="Animation" id=1]
length = 0.8
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.2, 0.4, 0.6 ),
"transitions": PoolRealArray( 1, 1, 1, 1 ),
"update": 0,
"values": [ 2, 3, 4, 5 ]
}

[node name="Bone" type="Node2D"]
script = ExtResource( 1 )
states = {

}

[node name="sprite" type="Sprite" parent="."]
texture = ExtResource( 3 )
hframes = 6

[node name="anim" type="AnimationPlayer" parent="."]
anims/spin = SubResource( 1 )

[node name="state_machine" type="Node" parent="."]
script = ExtResource( 2 )
states = {
"Spawn": {
"actions": [ [ "anim_play", PoolStringArray( "spin" ) ] ],
"triggers": [  ]
}
}
               [gd_scene load_steps=11 format=2]

[ext_resource path="res://engine/state_machine.gd" type="Script" id=1]
[ext_resource path="res://game/objects/key.png" type="Texture" id=2]
[ext_resource path="res://engine/objects/player.gd" type="Script" id=3]

[sub_resource type="CapsuleShape2D" id=1]
radius = 4.5
height = 6.0

[sub_resource type="Animation" id=2]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 1 ]
}

[sub_resource type="Animation" id=3]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 3 ]
}

[sub_resource type="Animation" id=4]
length = 0.001
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 5 ]
}

[sub_resource type="Animation" id=5]
length = 0.32
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0, 1 ]
}

[sub_resource type="Animation" id=6]
length = 0.32
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 2, 3 ]
}

[sub_resource type="Animation" id=7]
length = 0.32
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 4, 5 ]
}

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 3 )
health = 3.0
speed = 70.0
damage = 0.0

[node name="collision" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
vframes = 8
hframes = 6

[node name="anim" type="AnimationPlayer" parent="."]
anims/idleDown = SubResource( 2 )
anims/idleSide = SubResource( 3 )
anims/idleUp = SubResource( 4 )
anims/walkDown = SubResource( 5 )
anims/walkSide = SubResource( 6 )
anims/walkUp = SubResource( 7 )

[node name="state_machine" type="Node" parent="."]
script = ExtResource( 1 )
states = {
"Default": {
"actions": [ [ "default", [  ] ] ],
"triggers": [  ]
},
"Spawn": {
"actions": [  ],
"triggers": [ [ "timer", PoolStringArray( "0.01" ), "Default" ] ]
}
}

[node name="timer_Spawn" type="Timer" parent="."]
wait_time = 0.01
one_shot = true

[node name="camera" type="Camera2D" parent="."]
current = true
zoom = Vector2( 0.5, 0.5 )
               [gd_scene load_steps=12 format=2]

[ext_resource path="res://engine/state_machine.gd" type="Script" id=1]
[ext_resource path="res://game/objects/stalfaux.png" type="Texture" id=2]
[ext_resource path="res://engine/objects/enemy.gd" type="Script" id=3]

[sub_resource type="CapsuleShape2D" id=1]
radius = 4.5
height = 6.0

[sub_resource type="Animation" id=2]
length = 0.32
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 0, 1 ]
}

[sub_resource type="Animation" id=3]
length = 0.001
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0 ),
"transitions": PoolRealArray( 1 ),
"update": 0,
"values": [ 0 ]
}

[sub_resource type="Animation" id=4]
length = 0.32
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 4, 5 ]
}

[sub_resource type="Animation" id=5]
length = 0.32
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 1, 0 ]
}

[sub_resource type="Animation" id=6]
length = 0.32
loop = true
tracks/0/type = "value"
tracks/0/path = NodePath("sprite:frame")
tracks/0/interp = 0
tracks/0/loop_wrap = true
tracks/0/imported = false
tracks/0/enabled = true
tracks/0/keys = {
"times": PoolRealArray( 0, 0.16 ),
"transitions": PoolRealArray( 1, 1 ),
"update": 0,
"values": [ 2, 3 ]
}

[sub_resource type="CircleShape2D" id=7]
radius = 64.0

[sub_resource type="CircleShape2D" id=8]
radius = 64.0

[node name="Stalfaux" type="KinematicBody2D"]
script = ExtResource( 3 )
health = 0.5
speed = 40.0
damage = 0.5

[node name="collision" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )
hframes = 6

[node name="anim" type="AnimationPlayer" parent="."]
anims/animate = SubResource( 2 )
anims/inanimate = SubResource( 3 )
anims/throw = SubResource( 4 )
anims/unanimate = SubResource( 5 )
anims/walk = SubResource( 6 )

[node name="state_machine" type="Node" parent="."]
script = ExtResource( 1 )
states = {
"Active": {
"actions": [ [ "anim_play", PoolStringArray( "walk" ) ], [ "wander", PoolStringArray( "0.25" ) ] ],
"triggers": [ [ "timer", PoolStringArray( "1" ), "BeginThrow" ], [ "object_exited", PoolStringArray( "64", "player" ), "UnAnimate" ] ]
},
"Animate": {
"actions": [ [ "anim_play", PoolStringArray( "animate" ) ] ],
"triggers": [ [ "anim_finished", [  ], "Active" ] ]
},
"BeginThrow": {
"actions": [ [ "anim_play", PoolStringArray( "throw" ) ] ],
"triggers": [ [ "anim_finished", [  ], "Throw" ] ]
},
"Spawn": {
"actions": [ [ "anim_play", PoolStringArray( "inanimate" ) ] ],
"triggers": [ [ "object_entered", PoolStringArray( "64", "player" ), "Animate" ] ]
},
"Throw": {
"actions": [ [ "use_weapon", PoolStringArray( "Bone" ) ] ],
"triggers": [ [ "timer", PoolStringArray( "0.01" ), "Active" ] ]
},
"UnAnimate": {
"actions": [ [ "anim_play", PoolStringArray( "unanimate" ) ] ],
"triggers": [ [ "anim_finished", [  ], "Spawn" ] ]
}
}

[node name="area_Spawn" type="Area2D" parent="."]

[node name="radius" type="CollisionShape2D" parent="area_Spawn"]
shape = SubResource( 7 )

[node name="timer_Active" type="Timer" parent="."]
one_shot = true

[node name="area_Active" type="Area2D" parent="."]

[node name="radius" type="CollisionShape2D" parent="area_Active"]
shape = SubResource( 8 )

[node name="timer_Throw" type="Timer" parent="."]
wait_time = 0.01
one_shot = true
     RSRC                    PackedScene                                                                      resource_local_to_scene    resource_name    custom_solver_bias    extents    script 	   segments    points    1/name 
   1/texture    1/normal_map    1/tex_offset    1/material    1/modulate 	   1/region    1/tile_mode    1/occluder_offset    1/occluder    1/navigation_offset    1/navigation    1/shape_offset    1/shape_transform    1/shape    1/shape_one_way    1/shape_one_way_margin 	   1/shapes 
   1/z_index    2/name 
   2/texture    2/normal_map    2/tex_offset    2/material    2/modulate 	   2/region    2/tile_mode    2/occluder_offset    2/occluder    2/navigation_offset    2/navigation    2/shape_offset    2/shape_transform    2/shape    2/shape_one_way    2/shape_one_way_margin 	   2/shapes 
   2/z_index    3/name 
   3/texture    3/normal_map    3/tex_offset    3/material    3/modulate 	   3/region    3/tile_mode    3/occluder_offset    3/occluder    3/navigation_offset    3/navigation    3/shape_offset    3/shape_transform    3/shape    3/shape_one_way    3/shape_one_way_margin 	   3/shapes 
   3/z_index    4/name 
   4/texture    4/normal_map    4/tex_offset    4/material    4/modulate 	   4/region    4/tile_mode    4/occluder_offset    4/occluder    4/navigation_offset    4/navigation    4/shape_offset    4/shape_transform    4/shape    4/shape_one_way    4/shape_one_way_margin 	   4/shapes 
   4/z_index    5/name 
   5/texture    5/normal_map    5/tex_offset    5/material    5/modulate 	   5/region    5/tile_mode    5/occluder_offset    5/occluder    5/navigation_offset    5/navigation    5/shape_offset    5/shape_transform    5/shape    5/shape_one_way    5/shape_one_way_margin 	   5/shapes 
   5/z_index    6/name 
   6/texture    6/normal_map    6/tex_offset    6/material    6/modulate 	   6/region    6/tile_mode    6/occluder_offset    6/occluder    6/navigation_offset    6/navigation    6/shape_offset    6/shape_transform    6/shape    6/shape_one_way    6/shape_one_way_margin 	   6/shapes 
   6/z_index    7/name 
   7/texture    7/normal_map    7/tex_offset    7/material    7/modulate 	   7/region    7/tile_mode    7/occluder_offset    7/occluder    7/navigation_offset    7/navigation    7/shape_offset    7/shape_transform    7/shape    7/shape_one_way    7/shape_one_way_margin 	   7/shapes 
   7/z_index    8/name 
   8/texture    8/normal_map    8/tex_offset    8/material    8/modulate 	   8/region    8/tile_mode    8/occluder_offset    8/occluder    8/navigation_offset    8/navigation    8/shape_offset    8/shape_transform    8/shape    8/shape_one_way    8/shape_one_way_margin 	   8/shapes 
   8/z_index    9/name 
   9/texture    9/normal_map    9/tex_offset    9/material    9/modulate 	   9/region    9/tile_mode    9/occluder_offset    9/occluder    9/navigation_offset    9/navigation    9/shape_offset    9/shape_transform    9/shape    9/shape_one_way    9/shape_one_way_margin 	   9/shapes 
   9/z_index    10/name    10/texture    10/normal_map    10/tex_offset    10/material    10/modulate 
   10/region    10/tile_mode    10/occluder_offset    10/occluder    10/navigation_offset    10/navigation    10/shape_offset    10/shape_transform 	   10/shape    10/shape_one_way    10/shape_one_way_margin 
   10/shapes    10/z_index    11/name    11/texture    11/normal_map    11/tex_offset    11/material    11/modulate 
   11/region    11/tile_mode    11/occluder_offset    11/occluder    11/navigation_offset    11/navigation    11/shape_offset    11/shape_transform 	   11/shape    11/shape_one_way    11/shape_one_way_margin 
   11/shapes    11/z_index    12/name    12/texture    12/normal_map    12/tex_offset    12/material    12/modulate 
   12/region    12/tile_mode    12/occluder_offset    12/occluder    12/navigation_offset    12/navigation    12/shape_offset    12/shape_transform 	   12/shape    12/shape_one_way    12/shape_one_way_margin 
   12/shapes    12/z_index    13/name    13/texture    13/normal_map    13/tex_offset    13/material    13/modulate 
   13/region    13/tile_mode    13/occluder_offset    13/occluder    13/navigation_offset    13/navigation    13/shape_offset    13/shape_transform 	   13/shape    13/shape_one_way    13/shape_one_way_margin 
   13/shapes    13/z_index    14/name    14/texture    14/normal_map    14/tex_offset    14/material    14/modulate 
   14/region    14/tile_mode    14/occluder_offset    14/occluder    14/navigation_offset    14/navigation    14/shape_offset    14/shape_transform 	   14/shape    14/shape_one_way    14/shape_one_way_margin 
   14/shapes    14/z_index    15/name    15/texture    15/normal_map    15/tex_offset    15/material    15/modulate 
   15/region    15/tile_mode    15/occluder_offset    15/occluder    15/navigation_offset    15/navigation    15/shape_offset    15/shape_transform 	   15/shape    15/shape_one_way    15/shape_one_way_margin 
   15/shapes    15/z_index    16/name    16/texture    16/normal_map    16/tex_offset    16/material    16/modulate 
   16/region    16/tile_mode    16/occluder_offset    16/occluder    16/navigation_offset    16/navigation    16/shape_offset    16/shape_transform 	   16/shape    16/shape_one_way    16/shape_one_way_margin 
   16/shapes    16/z_index    17/name    17/texture    17/normal_map    17/tex_offset    17/material    17/modulate 
   17/region    17/tile_mode    17/occluder_offset    17/occluder    17/navigation_offset    17/navigation    17/shape_offset    17/shape_transform 	   17/shape    17/shape_one_way    17/shape_one_way_margin 
   17/shapes    17/z_index    18/name    18/texture    18/normal_map    18/tex_offset    18/material    18/modulate 
   18/region    18/tile_mode    18/occluder_offset    18/occluder    18/navigation_offset    18/navigation    18/shape_offset    18/shape_transform 	   18/shape    18/shape_one_way    18/shape_one_way_margin 
   18/shapes    18/z_index    19/name    19/texture    19/normal_map    19/tex_offset    19/material    19/modulate 
   19/region    19/tile_mode    19/occluder_offset    19/occluder    19/navigation_offset    19/navigation    19/shape_offset    19/shape_transform 	   19/shape    19/shape_one_way    19/shape_one_way_margin 
   19/shapes    19/z_index    20/name    20/texture    20/normal_map    20/tex_offset    20/material    20/modulate 
   20/region    20/tile_mode    20/occluder_offset    20/occluder    20/navigation_offset    20/navigation    20/shape_offset    20/shape_transform 	   20/shape    20/shape_one_way    20/shape_one_way_margin 
   20/shapes    20/z_index    21/name    21/texture    21/normal_map    21/tex_offset    21/material    21/modulate 
   21/region    21/tile_mode    21/occluder_offset    21/occluder    21/navigation_offset    21/navigation    21/shape_offset    21/shape_transform 	   21/shape    21/shape_one_way    21/shape_one_way_margin 
   21/shapes    21/z_index    22/name    22/texture    22/normal_map    22/tex_offset    22/material    22/modulate 
   22/region    22/tile_mode    22/occluder_offset    22/occluder    22/navigation_offset    22/navigation    22/shape_offset    22/shape_transform 	   22/shape    22/shape_one_way    22/shape_one_way_margin 
   22/shapes    22/z_index    23/name    23/texture    23/normal_map    23/tex_offset    23/material    23/modulate 
   23/region    23/tile_mode    23/occluder_offset    23/occluder    23/navigation_offset    23/navigation    23/shape_offset    23/shape_transform 	   23/shape    23/shape_one_way    23/shape_one_way_margin 
   23/shapes    23/z_index    24/name    24/texture    24/normal_map    24/tex_offset    24/material    24/modulate 
   24/region    24/tile_mode    24/occluder_offset    24/occluder    24/navigation_offset    24/navigation    24/shape_offset    24/shape_transform 	   24/shape    24/shape_one_way    24/shape_one_way_margin 
   24/shapes    24/z_index    25/name    25/texture    25/normal_map    25/tex_offset    25/material    25/modulate 
   25/region    25/tile_mode    25/occluder_offset    25/occluder    25/navigation_offset    25/navigation    25/shape_offset    25/shape_transform 	   25/shape    25/shape_one_way    25/shape_one_way_margin 
   25/shapes    25/z_index    26/name    26/texture    26/normal_map    26/tex_offset    26/material    26/modulate 
   26/region    26/tile_mode    26/occluder_offset    26/occluder    26/navigation_offset    26/navigation    26/shape_offset    26/shape_transform 	   26/shape    26/shape_one_way    26/shape_one_way_margin 
   26/shapes    26/z_index    27/name    27/texture    27/normal_map    27/tex_offset    27/material    27/modulate 
   27/region    27/tile_mode    27/occluder_offset    27/occluder    27/navigation_offset    27/navigation    27/shape_offset    27/shape_transform 	   27/shape    27/shape_one_way    27/shape_one_way_margin 
   27/shapes    27/z_index    28/name    28/texture    28/normal_map    28/tex_offset    28/material    28/modulate 
   28/region    28/tile_mode    28/occluder_offset    28/occluder    28/navigation_offset    28/navigation    28/shape_offset    28/shape_transform 	   28/shape    28/shape_one_way    28/shape_one_way_margin 
   28/shapes    28/z_index    29/name    29/texture    29/normal_map    29/tex_offset    29/material    29/modulate 
   29/region    29/tile_mode    29/occluder_offset    29/occluder    29/navigation_offset    29/navigation    29/shape_offset    29/shape_transform 	   29/shape    29/shape_one_way    29/shape_one_way_margin 
   29/shapes    29/z_index    30/name    30/texture    30/normal_map    30/tex_offset    30/material    30/modulate 
   30/region    30/tile_mode    30/occluder_offset    30/occluder    30/navigation_offset    30/navigation    30/shape_offset    30/shape_transform 	   30/shape    30/shape_one_way    30/shape_one_way_margin 
   30/shapes    30/z_index    31/name    31/texture    31/normal_map    31/tex_offset    31/material    31/modulate 
   31/region    31/tile_mode    31/occluder_offset    31/occluder    31/navigation_offset    31/navigation    31/shape_offset    31/shape_transform 	   31/shape    31/shape_one_way    31/shape_one_way_margin 
   31/shapes    31/z_index    32/name    32/texture    32/normal_map    32/tex_offset    32/material    32/modulate 
   32/region    32/tile_mode    32/occluder_offset    32/occluder    32/navigation_offset    32/navigation    32/shape_offset    32/shape_transform 	   32/shape    32/shape_one_way    32/shape_one_way_margin 
   32/shapes    32/z_index    33/name    33/texture    33/normal_map    33/tex_offset    33/material    33/modulate 
   33/region    33/tile_mode    33/occluder_offset    33/occluder    33/navigation_offset    33/navigation    33/shape_offset    33/shape_transform 	   33/shape    33/shape_one_way    33/shape_one_way_margin 
   33/shapes    33/z_index    34/name    34/texture    34/normal_map    34/tex_offset    34/material    34/modulate 
   34/region    34/tile_mode    34/occluder_offset    34/occluder    34/navigation_offset    34/navigation    34/shape_offset    34/shape_transform 	   34/shape    34/shape_one_way    34/shape_one_way_margin 
   34/shapes    34/z_index    35/name    35/texture    35/normal_map    35/tex_offset    35/material    35/modulate 
   35/region    35/tile_mode    35/occluder_offset    35/occluder    35/navigation_offset    35/navigation    35/shape_offset    35/shape_transform 	   35/shape    35/shape_one_way    35/shape_one_way_margin 
   35/shapes    35/z_index    36/name    36/texture    36/normal_map    36/tex_offset    36/material    36/modulate 
   36/region    36/tile_mode    36/occluder_offset    36/occluder    36/navigation_offset    36/navigation    36/shape_offset    36/shape_transform 	   36/shape    36/shape_one_way    36/shape_one_way_margin 
   36/shapes    36/z_index    37/name    37/texture    37/normal_map    37/tex_offset    37/material    37/modulate 
   37/region    37/tile_mode    37/occluder_offset    37/occluder    37/navigation_offset    37/navigation    37/shape_offset    37/shape_transform 	   37/shape    37/shape_one_way    37/shape_one_way_margin 
   37/shapes    37/z_index    38/name    38/texture    38/normal_map    38/tex_offset    38/material    38/modulate 
   38/region    38/tile_mode    38/occluder_offset    38/occluder    38/navigation_offset    38/navigation    38/shape_offset    38/shape_transform 	   38/shape    38/shape_one_way    38/shape_one_way_margin 
   38/shapes    38/z_index    39/name    39/texture    39/normal_map    39/tex_offset    39/material    39/modulate 
   39/region    39/tile_mode    39/occluder_offset    39/occluder    39/navigation_offset    39/navigation    39/shape_offset    39/shape_transform 	   39/shape    39/shape_one_way    39/shape_one_way_margin 
   39/shapes    39/z_index    40/name    40/texture    40/normal_map    40/tex_offset    40/material    40/modulate 
   40/region    40/tile_mode    40/occluder_offset    40/occluder    40/navigation_offset    40/navigation    40/shape_offset    40/shape_transform 	   40/shape    40/shape_one_way    40/shape_one_way_margin 
   40/shapes    40/z_index    41/name    41/texture    41/normal_map    41/tex_offset    41/material    41/modulate 
   41/region    41/tile_mode    41/occluder_offset    41/occluder    41/navigation_offset    41/navigation    41/shape_offset    41/shape_transform 	   41/shape    41/shape_one_way    41/shape_one_way_margin 
   41/shapes    41/z_index    42/name    42/texture    42/normal_map    42/tex_offset    42/material    42/modulate 
   42/region    42/tile_mode    42/occluder_offset    42/occluder    42/navigation_offset    42/navigation    42/shape_offset    42/shape_transform 	   42/shape    42/shape_one_way    42/shape_one_way_margin 
   42/shapes    42/z_index    43/name    43/texture    43/normal_map    43/tex_offset    43/material    43/modulate 
   43/region    43/tile_mode    43/occluder_offset    43/occluder    43/navigation_offset    43/navigation    43/shape_offset    43/shape_transform 	   43/shape    43/shape_one_way    43/shape_one_way_margin 
   43/shapes    43/z_index    44/name    44/texture    44/normal_map    44/tex_offset    44/material    44/modulate 
   44/region    44/tile_mode    44/occluder_offset    44/occluder    44/navigation_offset    44/navigation    44/shape_offset    44/shape_transform 	   44/shape    44/shape_one_way    44/shape_one_way_margin 
   44/shapes    44/z_index    45/name    45/texture    45/normal_map    45/tex_offset    45/material    45/modulate 
   45/region    45/tile_mode    45/occluder_offset    45/occluder    45/navigation_offset    45/navigation    45/shape_offset    45/shape_transform 	   45/shape    45/shape_one_way    45/shape_one_way_margin 
   45/shapes    45/z_index    46/name    46/texture    46/normal_map    46/tex_offset    46/material    46/modulate 
   46/region    46/tile_mode    46/occluder_offset    46/occluder    46/navigation_offset    46/navigation    46/shape_offset    46/shape_transform 	   46/shape    46/shape_one_way    46/shape_one_way_margin 
   46/shapes    46/z_index    47/name    47/texture    47/normal_map    47/tex_offset    47/material    47/modulate 
   47/region    47/tile_mode    47/occluder_offset    47/occluder    47/navigation_offset    47/navigation    47/shape_offset    47/shape_transform 	   47/shape    47/shape_one_way    47/shape_one_way_margin 
   47/shapes    47/z_index    48/name    48/texture    48/normal_map    48/tex_offset    48/material    48/modulate 
   48/region    48/tile_mode    48/occluder_offset    48/occluder    48/navigation_offset    48/navigation    48/shape_offset    48/shape_transform 	   48/shape    48/shape_one_way    48/shape_one_way_margin 
   48/shapes    48/z_index    49/name    49/texture    49/normal_map    49/tex_offset    49/material    49/modulate 
   49/region    49/tile_mode    49/occluder_offset    49/occluder    49/navigation_offset    49/navigation    49/shape_offset    49/shape_transform 	   49/shape    49/shape_one_way    49/shape_one_way_margin 
   49/shapes    49/z_index    50/name    50/texture    50/normal_map    50/tex_offset    50/material    50/modulate 
   50/region    50/tile_mode    50/occluder_offset    50/occluder    50/navigation_offset    50/navigation    50/shape_offset    50/shape_transform 	   50/shape    50/shape_one_way    50/shape_one_way_margin 
   50/shapes    50/z_index    51/name    51/texture    51/normal_map    51/tex_offset    51/material    51/modulate 
   51/region    51/tile_mode    51/occluder_offset    51/occluder    51/navigation_offset    51/navigation    51/shape_offset    51/shape_transform 	   51/shape    51/shape_one_way    51/shape_one_way_margin 
   51/shapes    51/z_index    52/name    52/texture    52/normal_map    52/tex_offset    52/material    52/modulate 
   52/region    52/tile_mode    52/occluder_offset    52/occluder    52/navigation_offset    52/navigation    52/shape_offset    52/shape_transform 	   52/shape    52/shape_one_way    52/shape_one_way_margin 
   52/shapes    52/z_index    53/name    53/texture    53/normal_map    53/tex_offset    53/material    53/modulate 
   53/region    53/tile_mode    53/occluder_offset    53/occluder    53/navigation_offset    53/navigation    53/shape_offset    53/shape_transform 	   53/shape    53/shape_one_way    53/shape_one_way_margin 
   53/shapes    53/z_index    54/name    54/texture    54/normal_map    54/tex_offset    54/material    54/modulate 
   54/region    54/tile_mode    54/occluder_offset    54/occluder    54/navigation_offset    54/navigation    54/shape_offset    54/shape_transform 	   54/shape    54/shape_one_way    54/shape_one_way_margin 
   54/shapes    54/z_index    55/name    55/texture    55/normal_map    55/tex_offset    55/material    55/modulate 
   55/region    55/tile_mode    55/occluder_offset    55/occluder    55/navigation_offset    55/navigation    55/shape_offset    55/shape_transform 	   55/shape    55/shape_one_way    55/shape_one_way_margin 
   55/shapes    55/z_index    56/name    56/texture    56/normal_map    56/tex_offset    56/material    56/modulate 
   56/region    56/tile_mode    56/occluder_offset    56/occluder    56/navigation_offset    56/navigation    56/shape_offset    56/shape_transform 	   56/shape    56/shape_one_way    56/shape_one_way_margin 
   56/shapes    56/z_index    57/name    57/texture    57/normal_map    57/tex_offset    57/material    57/modulate 
   57/region    57/tile_mode    57/occluder_offset    57/occluder    57/navigation_offset    57/navigation    57/shape_offset    57/shape_transform 	   57/shape    57/shape_one_way    57/shape_one_way_margin 
   57/shapes    57/z_index    58/name    58/texture    58/normal_map    58/tex_offset    58/material    58/modulate 
   58/region    58/tile_mode    58/occluder_offset    58/occluder    58/navigation_offset    58/navigation    58/shape_offset    58/shape_transform 	   58/shape    58/shape_one_way    58/shape_one_way_margin 
   58/shapes    58/z_index    59/name    59/texture    59/normal_map    59/tex_offset    59/material    59/modulate 
   59/region    59/tile_mode    59/occluder_offset    59/occluder    59/navigation_offset    59/navigation    59/shape_offset    59/shape_transform 	   59/shape    59/shape_one_way    59/shape_one_way_margin 
   59/shapes    59/z_index    60/name    60/texture    60/normal_map    60/tex_offset    60/material    60/modulate 
   60/region    60/tile_mode    60/occluder_offset    60/occluder    60/navigation_offset    60/navigation    60/shape_offset    60/shape_transform 	   60/shape    60/shape_one_way    60/shape_one_way_margin 
   60/shapes    60/z_index    61/name    61/texture    61/normal_map    61/tex_offset    61/material    61/modulate 
   61/region    61/tile_mode    61/occluder_offset    61/occluder    61/navigation_offset    61/navigation    61/shape_offset    61/shape_transform 	   61/shape    61/shape_one_way    61/shape_one_way_margin 
   61/shapes    61/z_index    62/name    62/texture    62/normal_map    62/tex_offset    62/material    62/modulate 
   62/region    62/tile_mode    62/occluder_offset    62/occluder    62/navigation_offset    62/navigation    62/shape_offset    62/shape_transform 	   62/shape    62/shape_one_way    62/shape_one_way_margin 
   62/shapes    62/z_index    63/name    63/texture    63/normal_map    63/tex_offset    63/material    63/modulate 
   63/region    63/tile_mode    63/occluder_offset    63/occluder    63/navigation_offset    63/navigation    63/shape_offset    63/shape_transform 	   63/shape    63/shape_one_way    63/shape_one_way_margin 
   63/shapes    63/z_index    64/name    64/texture    64/normal_map    64/tex_offset    64/material    64/modulate 
   64/region    64/tile_mode    64/occluder_offset    64/occluder    64/navigation_offset    64/navigation    64/shape_offset    64/shape_transform 	   64/shape    64/shape_one_way    64/shape_one_way_margin 
   64/shapes    64/z_index    65/name    65/texture    65/normal_map    65/tex_offset    65/material    65/modulate 
   65/region    65/tile_mode    65/occluder_offset    65/occluder    65/navigation_offset    65/navigation    65/shape_offset    65/shape_transform 	   65/shape    65/shape_one_way    65/shape_one_way_margin 
   65/shapes    65/z_index    66/name    66/texture    66/normal_map    66/tex_offset    66/material    66/modulate 
   66/region    66/tile_mode    66/occluder_offset    66/occluder    66/navigation_offset    66/navigation    66/shape_offset    66/shape_transform 	   66/shape    66/shape_one_way    66/shape_one_way_margin 
   66/shapes    66/z_index    67/name    67/texture    67/normal_map    67/tex_offset    67/material    67/modulate 
   67/region    67/tile_mode    67/occluder_offset    67/occluder    67/navigation_offset    67/navigation    67/shape_offset    67/shape_transform 	   67/shape    67/shape_one_way    67/shape_one_way_margin 
   67/shapes    67/z_index    68/name    68/texture    68/normal_map    68/tex_offset    68/material    68/modulate 
   68/region    68/tile_mode    68/occluder_offset    68/occluder    68/navigation_offset    68/navigation    68/shape_offset    68/shape_transform 	   68/shape    68/shape_one_way    68/shape_one_way_margin 
   68/shapes    68/z_index    69/name    69/texture    69/normal_map    69/tex_offset    69/material    69/modulate 
   69/region    69/tile_mode    69/occluder_offset    69/occluder    69/navigation_offset    69/navigation    69/shape_offset    69/shape_transform 	   69/shape    69/shape_one_way    69/shape_one_way_margin 
   69/shapes    69/z_index    70/name    70/texture    70/normal_map    70/tex_offset    70/material    70/modulate 
   70/region    70/tile_mode    70/occluder_offset    70/occluder    70/navigation_offset    70/navigation    70/shape_offset    70/shape_transform 	   70/shape    70/shape_one_way    70/shape_one_way_margin 
   70/shapes    70/z_index    71/name    71/texture    71/normal_map    71/tex_offset    71/material    71/modulate 
   71/region    71/tile_mode    71/occluder_offset    71/occluder    71/navigation_offset    71/navigation    71/shape_offset    71/shape_transform 	   71/shape    71/shape_one_way    71/shape_one_way_margin 
   71/shapes    71/z_index    72/name    72/texture    72/normal_map    72/tex_offset    72/material    72/modulate 
   72/region    72/tile_mode    72/occluder_offset    72/occluder    72/navigation_offset    72/navigation    72/shape_offset    72/shape_transform 	   72/shape    72/shape_one_way    72/shape_one_way_margin 
   72/shapes    72/z_index    73/name    73/texture    73/normal_map    73/tex_offset    73/material    73/modulate 
   73/region    73/tile_mode    73/occluder_offset    73/occluder    73/navigation_offset    73/navigation    73/shape_offset    73/shape_transform 	   73/shape    73/shape_one_way    73/shape_one_way_margin 
   73/shapes    73/z_index    74/name    74/texture    74/normal_map    74/tex_offset    74/material    74/modulate 
   74/region    74/tile_mode    74/occluder_offset    74/occluder    74/navigation_offset    74/navigation    74/shape_offset    74/shape_transform 	   74/shape    74/shape_one_way    74/shape_one_way_margin 
   74/shapes    74/z_index    75/name    75/texture    75/normal_map    75/tex_offset    75/material    75/modulate 
   75/region    75/tile_mode    75/occluder_offset    75/occluder    75/navigation_offset    75/navigation    75/shape_offset    75/shape_transform 	   75/shape    75/shape_one_way    75/shape_one_way_margin 
   75/shapes    75/z_index    76/name    76/texture    76/normal_map    76/tex_offset    76/material    76/modulate 
   76/region    76/tile_mode    76/occluder_offset    76/occluder    76/navigation_offset    76/navigation    76/shape_offset    76/shape_transform 	   76/shape    76/shape_one_way    76/shape_one_way_margin 
   76/shapes    76/z_index    77/name    77/texture    77/normal_map    77/tex_offset    77/material    77/modulate 
   77/region    77/tile_mode    77/occluder_offset    77/occluder    77/navigation_offset    77/navigation    77/shape_offset    77/shape_transform 	   77/shape    77/shape_one_way    77/shape_one_way_margin 
   77/shapes    77/z_index    78/name    78/texture    78/normal_map    78/tex_offset    78/material    78/modulate 
   78/region    78/tile_mode    78/occluder_offset    78/occluder    78/navigation_offset    78/navigation    78/shape_offset    78/shape_transform 	   78/shape    78/shape_one_way    78/shape_one_way_margin 
   78/shapes    78/z_index    79/name    79/texture    79/normal_map    79/tex_offset    79/material    79/modulate 
   79/region    79/tile_mode    79/occluder_offset    79/occluder    79/navigation_offset    79/navigation    79/shape_offset    79/shape_transform 	   79/shape    79/shape_one_way    79/shape_one_way_margin 
   79/shapes    79/z_index    80/name    80/texture    80/normal_map    80/tex_offset    80/material    80/modulate 
   80/region    80/tile_mode    80/occluder_offset    80/occluder    80/navigation_offset    80/navigation    80/shape_offset    80/shape_transform 	   80/shape    80/shape_one_way    80/shape_one_way_margin 
   80/shapes    80/z_index    81/name    81/texture    81/normal_map    81/tex_offset    81/material    81/modulate 
   81/region    81/tile_mode    81/occluder_offset    81/occluder    81/navigation_offset    81/navigation    81/shape_offset    81/shape_transform 	   81/shape    81/shape_one_way    81/shape_one_way_margin 
   81/shapes    81/z_index    82/name    82/texture    82/normal_map    82/tex_offset    82/material    82/modulate 
   82/region    82/tile_mode    82/occluder_offset    82/occluder    82/navigation_offset    82/navigation    82/shape_offset    82/shape_transform 	   82/shape    82/shape_one_way    82/shape_one_way_margin 
   82/shapes    82/z_index    83/name    83/texture    83/normal_map    83/tex_offset    83/material    83/modulate 
   83/region    83/tile_mode    83/occluder_offset    83/occluder    83/navigation_offset    83/navigation    83/shape_offset    83/shape_transform 	   83/shape    83/shape_one_way    83/shape_one_way_margin 
   83/shapes    83/z_index    84/name    84/texture    84/normal_map    84/tex_offset    84/material    84/modulate 
   84/region    84/tile_mode    84/occluder_offset    84/occluder    84/navigation_offset    84/navigation    84/shape_offset    84/shape_transform 	   84/shape    84/shape_one_way    84/shape_one_way_margin 
   84/shapes    84/z_index    85/name    85/texture    85/normal_map    85/tex_offset    85/material    85/modulate 
   85/region    85/tile_mode    85/occluder_offset    85/occluder    85/navigation_offset    85/navigation    85/shape_offset    85/shape_transform 	   85/shape    85/shape_one_way    85/shape_one_way_margin 
   85/shapes    85/z_index    86/name    86/texture    86/normal_map    86/tex_offset    86/material    86/modulate 
   86/region    86/tile_mode    86/occluder_offset    86/occluder    86/navigation_offset    86/navigation    86/shape_offset    86/shape_transform 	   86/shape    86/shape_one_way    86/shape_one_way_margin 
   86/shapes    86/z_index    87/name    87/texture    87/normal_map    87/tex_offset    87/material    87/modulate 
   87/region    87/tile_mode    87/occluder_offset    87/occluder    87/navigation_offset    87/navigation    87/shape_offset    87/shape_transform 	   87/shape    87/shape_one_way    87/shape_one_way_margin 
   87/shapes    87/z_index    88/name    88/texture    88/normal_map    88/tex_offset    88/material    88/modulate 
   88/region    88/tile_mode    88/occluder_offset    88/occluder    88/navigation_offset    88/navigation    88/shape_offset    88/shape_transform 	   88/shape    88/shape_one_way    88/shape_one_way_margin 
   88/shapes    88/z_index    89/name    89/texture    89/normal_map    89/tex_offset    89/material    89/modulate 
   89/region    89/tile_mode    89/occluder_offset    89/occluder    89/navigation_offset    89/navigation    89/shape_offset    89/shape_transform 	   89/shape    89/shape_one_way    89/shape_one_way_margin 
   89/shapes    89/z_index    90/name    90/texture    90/normal_map    90/tex_offset    90/material    90/modulate 
   90/region    90/tile_mode    90/occluder_offset    90/occluder    90/navigation_offset    90/navigation    90/shape_offset    90/shape_transform 	   90/shape    90/shape_one_way    90/shape_one_way_margin 
   90/shapes    90/z_index    91/name    91/texture    91/normal_map    91/tex_offset    91/material    91/modulate 
   91/region    91/tile_mode    91/occluder_offset    91/occluder    91/navigation_offset    91/navigation    91/shape_offset    91/shape_transform 	   91/shape    91/shape_one_way    91/shape_one_way_margin 
   91/shapes    91/z_index    92/name    92/texture    92/normal_map    92/tex_offset    92/material    92/modulate 
   92/region    92/tile_mode    92/occluder_offset    92/occluder    92/navigation_offset    92/navigation    92/shape_offset    92/shape_transform 	   92/shape    92/shape_one_way    92/shape_one_way_margin 
   92/shapes    92/z_index    93/name    93/texture    93/normal_map    93/tex_offset    93/material    93/modulate 
   93/region    93/tile_mode    93/occluder_offset    93/occluder    93/navigation_offset    93/navigation    93/shape_offset    93/shape_transform 	   93/shape    93/shape_one_way    93/shape_one_way_margin 
   93/shapes    93/z_index    94/name    94/texture    94/normal_map    94/tex_offset    94/material    94/modulate 
   94/region    94/tile_mode    94/occluder_offset    94/occluder    94/navigation_offset    94/navigation    94/shape_offset    94/shape_transform 	   94/shape    94/shape_one_way    94/shape_one_way_margin 
   94/shapes    94/z_index    95/name    95/texture    95/normal_map    95/tex_offset    95/material    95/modulate 
   95/region    95/tile_mode    95/occluder_offset    95/occluder    95/navigation_offset    95/navigation    95/shape_offset    95/shape_transform 	   95/shape    95/shape_one_way    95/shape_one_way_margin 
   95/shapes    95/z_index    96/name    96/texture    96/normal_map    96/tex_offset    96/material    96/modulate 
   96/region    96/tile_mode    96/occluder_offset    96/occluder    96/navigation_offset    96/navigation    96/shape_offset    96/shape_transform 	   96/shape    96/shape_one_way    96/shape_one_way_margin 
   96/shapes    96/z_index    97/name    97/texture    97/normal_map    97/tex_offset    97/material    97/modulate 
   97/region    97/tile_mode    97/occluder_offset    97/occluder    97/navigation_offset    97/navigation    97/shape_offset    97/shape_transform 	   97/shape    97/shape_one_way    97/shape_one_way_margin 
   97/shapes    97/z_index    98/name    98/texture    98/normal_map    98/tex_offset    98/material    98/modulate 
   98/region    98/tile_mode    98/occluder_offset    98/occluder    98/navigation_offset    98/navigation    98/shape_offset    98/shape_transform 	   98/shape    98/shape_one_way    98/shape_one_way_margin 
   98/shapes    98/z_index    99/name    99/texture    99/normal_map    99/tex_offset    99/material    99/modulate 
   99/region    99/tile_mode    99/occluder_offset    99/occluder    99/navigation_offset    99/navigation    99/shape_offset    99/shape_transform 	   99/shape    99/shape_one_way    99/shape_one_way_margin 
   99/shapes    99/z_index 	   100/name    100/texture    100/normal_map    100/tex_offset    100/material    100/modulate    100/region    100/tile_mode    100/occluder_offset    100/occluder    100/navigation_offset    100/navigation    100/shape_offset    100/shape_transform 
   100/shape    100/shape_one_way    100/shape_one_way_margin    100/shapes    100/z_index 	   101/name    101/texture    101/normal_map    101/tex_offset    101/material    101/modulate    101/region    101/tile_mode    101/occluder_offset    101/occluder    101/navigation_offset    101/navigation    101/shape_offset    101/shape_transform 
   101/shape    101/shape_one_way    101/shape_one_way_margin    101/shapes    101/z_index 	   102/name    102/texture    102/normal_map    102/tex_offset    102/material    102/modulate    102/region    102/tile_mode    102/occluder_offset    102/occluder    102/navigation_offset    102/navigation    102/shape_offset    102/shape_transform 
   102/shape    102/shape_one_way    102/shape_one_way_margin    102/shapes    102/z_index 	   103/name    103/texture    103/normal_map    103/tex_offset    103/material    103/modulate    103/region    103/tile_mode    103/occluder_offset    103/occluder    103/navigation_offset    103/navigation    103/shape_offset    103/shape_transform 
   103/shape    103/shape_one_way    103/shape_one_way_margin    103/shapes    103/z_index 	   104/name    104/texture    104/normal_map    104/tex_offset    104/material    104/modulate    104/region    104/tile_mode    104/occluder_offset    104/occluder    104/navigation_offset    104/navigation    104/shape_offset    104/shape_transform 
   104/shape    104/shape_one_way    104/shape_one_way_margin    104/shapes    104/z_index 	   105/name    105/texture    105/normal_map    105/tex_offset    105/material    105/modulate    105/region    105/tile_mode    105/occluder_offset    105/occluder    105/navigation_offset    105/navigation    105/shape_offset    105/shape_transform 
   105/shape    105/shape_one_way    105/shape_one_way_margin    105/shapes    105/z_index 	   106/name    106/texture    106/normal_map    106/tex_offset    106/material    106/modulate    106/region    106/tile_mode    106/occluder_offset    106/occluder    106/navigation_offset    106/navigation    106/shape_offset    106/shape_transform 
   106/shape    106/shape_one_way    106/shape_one_way_margin    106/shapes    106/z_index 	   107/name    107/texture    107/normal_map    107/tex_offset    107/material    107/modulate    107/region    107/tile_mode    107/occluder_offset    107/occluder    107/navigation_offset    107/navigation    107/shape_offset    107/shape_transform 
   107/shape    107/shape_one_way    107/shape_one_way_margin    107/shapes    107/z_index 	   108/name    108/texture    108/normal_map    108/tex_offset    108/material    108/modulate    108/region    108/tile_mode    108/occluder_offset    108/occluder    108/navigation_offset    108/navigation    108/shape_offset    108/shape_transform 
   108/shape    108/shape_one_way    108/shape_one_way_margin    108/shapes    108/z_index 	   109/name    109/texture    109/normal_map    109/tex_offset    109/material    109/modulate    109/region    109/tile_mode    109/occluder_offset    109/occluder    109/navigation_offset    109/navigation    109/shape_offset    109/shape_transform 
   109/shape    109/shape_one_way    109/shape_one_way_margin    109/shapes    109/z_index 	   110/name    110/texture    110/normal_map    110/tex_offset    110/material    110/modulate    110/region    110/tile_mode    110/occluder_offset    110/occluder    110/navigation_offset    110/navigation    110/shape_offset    110/shape_transform 
   110/shape    110/shape_one_way    110/shape_one_way_margin    110/shapes    110/z_index 	   111/name    111/texture    111/normal_map    111/tex_offset    111/material    111/modulate    111/region    111/tile_mode    111/occluder_offset    111/occluder    111/navigation_offset    111/navigation    111/shape_offset    111/shape_transform 
   111/shape    111/shape_one_way    111/shape_one_way_margin    111/shapes    111/z_index 	   112/name    112/texture    112/normal_map    112/tex_offset    112/material    112/modulate    112/region    112/tile_mode    112/occluder_offset    112/occluder    112/navigation_offset    112/navigation    112/shape_offset    112/shape_transform 
   112/shape    112/shape_one_way    112/shape_one_way_margin    112/shapes    112/z_index 	   113/name    113/texture    113/normal_map    113/tex_offset    113/material    113/modulate    113/region    113/tile_mode    113/occluder_offset    113/occluder    113/navigation_offset    113/navigation    113/shape_offset    113/shape_transform 
   113/shape    113/shape_one_way    113/shape_one_way_margin    113/shapes    113/z_index 	   114/name    114/texture    114/normal_map    114/tex_offset    114/material    114/modulate    114/region    114/tile_mode    114/occluder_offset    114/occluder    114/navigation_offset    114/navigation    114/shape_offset    114/shape_transform 
   114/shape    114/shape_one_way    114/shape_one_way_margin    114/shapes    114/z_index 	   115/name    115/texture    115/normal_map    115/tex_offset    115/material    115/modulate    115/region    115/tile_mode    115/occluder_offset    115/occluder    115/navigation_offset    115/navigation    115/shape_offset    115/shape_transform 
   115/shape    115/shape_one_way    115/shape_one_way_margin    115/shapes    115/z_index 	   116/name    116/texture    116/normal_map    116/tex_offset    116/material    116/modulate    116/region    116/tile_mode    116/occluder_offset    116/occluder    116/navigation_offset    116/navigation    116/shape_offset    116/shape_transform 
   116/shape    116/shape_one_way    116/shape_one_way_margin    116/shapes    116/z_index 	   117/name    117/texture    117/normal_map    117/tex_offset    117/material    117/modulate    117/region    117/tile_mode    117/occluder_offset    117/occluder    117/navigation_offset    117/navigation    117/shape_offset    117/shape_transform 
   117/shape    117/shape_one_way    117/shape_one_way_margin    117/shapes    117/z_index 	   118/name    118/texture    118/normal_map    118/tex_offset    118/material    118/modulate    118/region    118/tile_mode    118/occluder_offset    118/occluder    118/navigation_offset    118/navigation    118/shape_offset    118/shape_transform 
   118/shape    118/shape_one_way    118/shape_one_way_margin    118/shapes    118/z_index 	   119/name    119/texture    119/normal_map    119/tex_offset    119/material    119/modulate    119/region    119/tile_mode    119/occluder_offset    119/occluder    119/navigation_offset    119/navigation    119/shape_offset    119/shape_transform 
   119/shape    119/shape_one_way    119/shape_one_way_margin    119/shapes    119/z_index 	   120/name    120/texture    120/normal_map    120/tex_offset    120/material    120/modulate    120/region    120/tile_mode    120/occluder_offset    120/occluder    120/navigation_offset    120/navigation    120/shape_offset    120/shape_transform 
   120/shape    120/shape_one_way    120/shape_one_way_margin    120/shapes    120/z_index 	   121/name    121/texture    121/normal_map    121/tex_offset    121/material    121/modulate    121/region    121/tile_mode    121/occluder_offset    121/occluder    121/navigation_offset    121/navigation    121/shape_offset    121/shape_transform 
   121/shape    121/shape_one_way    121/shape_one_way_margin    121/shapes    121/z_index 	   122/name    122/texture    122/normal_map    122/tex_offset    122/material    122/modulate    122/region    122/tile_mode    122/occluder_offset    122/occluder    122/navigation_offset    122/navigation    122/shape_offset    122/shape_transform 
   122/shape    122/shape_one_way    122/shape_one_way_margin    122/shapes    122/z_index 	   123/name    123/texture    123/normal_map    123/tex_offset    123/material    123/modulate    123/region    123/tile_mode    123/occluder_offset    123/occluder    123/navigation_offset    123/navigation    123/shape_offset    123/shape_transform 
   123/shape    123/shape_one_way    123/shape_one_way_margin    123/shapes    123/z_index 	   124/name    124/texture    124/normal_map    124/tex_offset    124/material    124/modulate    124/region    124/tile_mode    124/occluder_offset    124/occluder    124/navigation_offset    124/navigation    124/shape_offset    124/shape_transform 
   124/shape    124/shape_one_way    124/shape_one_way_margin    124/shapes    124/z_index 	   125/name    125/texture    125/normal_map    125/tex_offset    125/material    125/modulate    125/region    125/tile_mode    125/occluder_offset    125/occluder    125/navigation_offset    125/navigation    125/shape_offset    125/shape_transform 
   125/shape    125/shape_one_way    125/shape_one_way_margin    125/shapes    125/z_index 	   126/name    126/texture    126/normal_map    126/tex_offset    126/material    126/modulate    126/region    126/tile_mode    126/occluder_offset    126/occluder    126/navigation_offset    126/navigation    126/shape_offset    126/shape_transform 
   126/shape    126/shape_one_way    126/shape_one_way_margin    126/shapes    126/z_index 	   127/name    127/texture    127/normal_map    127/tex_offset    127/material    127/modulate    127/region    127/tile_mode    127/occluder_offset    127/occluder    127/navigation_offset    127/navigation    127/shape_offset    127/shape_transform 
   127/shape    127/shape_one_way    127/shape_one_way_margin    127/shapes    127/z_index 	   128/name    128/texture    128/normal_map    128/tex_offset    128/material    128/modulate    128/region    128/tile_mode    128/occluder_offset    128/occluder    128/navigation_offset    128/navigation    128/shape_offset    128/shape_transform 
   128/shape    128/shape_one_way    128/shape_one_way_margin    128/shapes    128/z_index 	   129/name    129/texture    129/normal_map    129/tex_offset    129/material    129/modulate    129/region    129/tile_mode    129/occluder_offset    129/occluder    129/navigation_offset    129/navigation    129/shape_offset    129/shape_transform 
   129/shape    129/shape_one_way    129/shape_one_way_margin    129/shapes    129/z_index 	   130/name    130/texture    130/normal_map    130/tex_offset    130/material    130/modulate    130/region    130/tile_mode    130/occluder_offset    130/occluder    130/navigation_offset    130/navigation    130/shape_offset    130/shape_transform 
   130/shape    130/shape_one_way    130/shape_one_way_margin    130/shapes    130/z_index 	   131/name    131/texture    131/normal_map    131/tex_offset    131/material    131/modulate    131/region    131/tile_mode    131/occluder_offset    131/occluder    131/navigation_offset    131/navigation    131/shape_offset    131/shape_transform 
   131/shape    131/shape_one_way    131/shape_one_way_margin    131/shapes    131/z_index 	   132/name    132/texture    132/normal_map    132/tex_offset    132/material    132/modulate    132/region    132/tile_mode    132/occluder_offset    132/occluder    132/navigation_offset    132/navigation    132/shape_offset    132/shape_transform 
   132/shape    132/shape_one_way    132/shape_one_way_margin    132/shapes    132/z_index 	   133/name    133/texture    133/normal_map    133/tex_offset    133/material    133/modulate    133/region    133/tile_mode    133/occluder_offset    133/occluder    133/navigation_offset    133/navigation    133/shape_offset    133/shape_transform 
   133/shape    133/shape_one_way    133/shape_one_way_margin    133/shapes    133/z_index 	   134/name    134/texture    134/normal_map    134/tex_offset    134/material    134/modulate    134/region    134/tile_mode    134/occluder_offset    134/occluder    134/navigation_offset    134/navigation    134/shape_offset    134/shape_transform 
   134/shape    134/shape_one_way    134/shape_one_way_margin    134/shapes    134/z_index 	   135/name    135/texture    135/normal_map    135/tex_offset    135/material    135/modulate    135/region    135/tile_mode    135/occluder_offset    135/occluder    135/navigation_offset    135/navigation    135/shape_offset    135/shape_transform 
   135/shape    135/shape_one_way    135/shape_one_way_margin    135/shapes    135/z_index 	   136/name    136/texture    136/normal_map    136/tex_offset    136/material    136/modulate    136/region    136/tile_mode    136/occluder_offset    136/occluder    136/navigation_offset    136/navigation    136/shape_offset    136/shape_transform 
   136/shape    136/shape_one_way    136/shape_one_way_margin    136/shapes    136/z_index 	   137/name    137/texture    137/normal_map    137/tex_offset    137/material    137/modulate    137/region    137/tile_mode    137/occluder_offset    137/occluder    137/navigation_offset    137/navigation    137/shape_offset    137/shape_transform 
   137/shape    137/shape_one_way    137/shape_one_way_margin    137/shapes    137/z_index 	   138/name    138/texture    138/normal_map    138/tex_offset    138/material    138/modulate    138/region    138/tile_mode    138/occluder_offset    138/occluder    138/navigation_offset    138/navigation    138/shape_offset    138/shape_transform 
   138/shape    138/shape_one_way    138/shape_one_way_margin    138/shapes    138/z_index 	   139/name    139/texture    139/normal_map    139/tex_offset    139/material    139/modulate    139/region    139/tile_mode    139/occluder_offset    139/occluder    139/navigation_offset    139/navigation    139/shape_offset    139/shape_transform 
   139/shape    139/shape_one_way    139/shape_one_way_margin    139/shapes    139/z_index 	   140/name    140/texture    140/normal_map    140/tex_offset    140/material    140/modulate    140/region    140/tile_mode    140/occluder_offset    140/occluder    140/navigation_offset    140/navigation    140/shape_offset    140/shape_transform 
   140/shape    140/shape_one_way    140/shape_one_way_margin    140/shapes    140/z_index 	   141/name    141/texture    141/normal_map    141/tex_offset    141/material    141/modulate    141/region    141/tile_mode    141/occluder_offset    141/occluder    141/navigation_offset    141/navigation    141/shape_offset    141/shape_transform 
   141/shape    141/shape_one_way    141/shape_one_way_margin    141/shapes    141/z_index 	   142/name    142/texture    142/normal_map    142/tex_offset    142/material    142/modulate    142/region    142/tile_mode    142/occluder_offset    142/occluder    142/navigation_offset    142/navigation    142/shape_offset    142/shape_transform 
   142/shape    142/shape_one_way    142/shape_one_way_margin    142/shapes    142/z_index 	   143/name    143/texture    143/normal_map    143/tex_offset    143/material    143/modulate    143/region    143/tile_mode    143/occluder_offset    143/occluder    143/navigation_offset    143/navigation    143/shape_offset    143/shape_transform 
   143/shape    143/shape_one_way    143/shape_one_way_margin    143/shapes    143/z_index 	   144/name    144/texture    144/normal_map    144/tex_offset    144/material    144/modulate    144/region    144/tile_mode    144/occluder_offset    144/occluder    144/navigation_offset    144/navigation    144/shape_offset    144/shape_transform 
   144/shape    144/shape_one_way    144/shape_one_way_margin    144/shapes    144/z_index 	   145/name    145/texture    145/normal_map    145/tex_offset    145/material    145/modulate    145/region    145/tile_mode    145/occluder_offset    145/occluder    145/navigation_offset    145/navigation    145/shape_offset    145/shape_transform 
   145/shape    145/shape_one_way    145/shape_one_way_margin    145/shapes    145/z_index 	   146/name    146/texture    146/normal_map    146/tex_offset    146/material    146/modulate    146/region    146/tile_mode    146/occluder_offset    146/occluder    146/navigation_offset    146/navigation    146/shape_offset    146/shape_transform 
   146/shape    146/shape_one_way    146/shape_one_way_margin    146/shapes    146/z_index 	   147/name    147/texture    147/normal_map    147/tex_offset    147/material    147/modulate    147/region    147/tile_mode    147/occluder_offset    147/occluder    147/navigation_offset    147/navigation    147/shape_offset    147/shape_transform 
   147/shape    147/shape_one_way    147/shape_one_way_margin    147/shapes    147/z_index 	   148/name    148/texture    148/normal_map    148/tex_offset    148/material    148/modulate    148/region    148/tile_mode    148/occluder_offset    148/occluder    148/navigation_offset    148/navigation    148/shape_offset    148/shape_transform 
   148/shape    148/shape_one_way    148/shape_one_way_margin    148/shapes    148/z_index 	   149/name    149/texture    149/normal_map    149/tex_offset    149/material    149/modulate    149/region    149/tile_mode    149/occluder_offset    149/occluder    149/navigation_offset    149/navigation    149/shape_offset    149/shape_transform 
   149/shape    149/shape_one_way    149/shape_one_way_margin    149/shapes    149/z_index 	   150/name    150/texture    150/normal_map    150/tex_offset    150/material    150/modulate    150/region    150/tile_mode    150/occluder_offset    150/occluder    150/navigation_offset    150/navigation    150/shape_offset    150/shape_transform 
   150/shape    150/shape_one_way    150/shape_one_way_margin    150/shapes    150/z_index 	   151/name    151/texture    151/normal_map    151/tex_offset    151/material    151/modulate    151/region    151/tile_mode    151/occluder_offset    151/occluder    151/navigation_offset    151/navigation    151/shape_offset    151/shape_transform 
   151/shape    151/shape_one_way    151/shape_one_way_margin    151/shapes    151/z_index 	   152/name    152/texture    152/normal_map    152/tex_offset    152/material    152/modulate    152/region    152/tile_mode    152/occluder_offset    152/occluder    152/navigation_offset    152/navigation    152/shape_offset    152/shape_transform 
   152/shape    152/shape_one_way    152/shape_one_way_margin    152/shapes    152/z_index 	   153/name    153/texture    153/normal_map    153/tex_offset    153/material    153/modulate    153/region    153/tile_mode    153/occluder_offset    153/occluder    153/navigation_offset    153/navigation    153/shape_offset    153/shape_transform 
   153/shape    153/shape_one_way    153/shape_one_way_margin    153/shapes    153/z_index 	   154/name    154/texture    154/normal_map    154/tex_offset    154/material    154/modulate    154/region    154/tile_mode    154/occluder_offset    154/occluder    154/navigation_offset    154/navigation    154/shape_offset    154/shape_transform 
   154/shape    154/shape_one_way    154/shape_one_way_margin    154/shapes    154/z_index 	   155/name    155/texture    155/normal_map    155/tex_offset    155/material    155/modulate    155/region    155/tile_mode    155/occluder_offset    155/occluder    155/navigation_offset    155/navigation    155/shape_offset    155/shape_transform 
   155/shape    155/shape_one_way    155/shape_one_way_margin    155/shapes    155/z_index 	   156/name    156/texture    156/normal_map    156/tex_offset    156/material    156/modulate    156/region    156/tile_mode    156/occluder_offset    156/occluder    156/navigation_offset    156/navigation    156/shape_offset    156/shape_transform 
   156/shape    156/shape_one_way    156/shape_one_way_margin    156/shapes    156/z_index 	   157/name    157/texture    157/normal_map    157/tex_offset    157/material    157/modulate    157/region    157/tile_mode    157/occluder_offset    157/occluder    157/navigation_offset    157/navigation    157/shape_offset    157/shape_transform 
   157/shape    157/shape_one_way    157/shape_one_way_margin    157/shapes    157/z_index 	   158/name    158/texture    158/normal_map    158/tex_offset    158/material    158/modulate    158/region    158/tile_mode    158/occluder_offset    158/occluder    158/navigation_offset    158/navigation    158/shape_offset    158/shape_transform 
   158/shape    158/shape_one_way    158/shape_one_way_margin    158/shapes    158/z_index 	   159/name    159/texture    159/normal_map    159/tex_offset    159/material    159/modulate    159/region    159/tile_mode    159/occluder_offset    159/occluder    159/navigation_offset    159/navigation    159/shape_offset    159/shape_transform 
   159/shape    159/shape_one_way    159/shape_one_way_margin    159/shapes    159/z_index 	   160/name    160/texture    160/normal_map    160/tex_offset    160/material    160/modulate    160/region    160/tile_mode    160/occluder_offset    160/occluder    160/navigation_offset    160/navigation    160/shape_offset    160/shape_transform 
   160/shape    160/shape_one_way    160/shape_one_way_margin    160/shapes    160/z_index 	   161/name    161/texture    161/normal_map    161/tex_offset    161/material    161/modulate    161/region    161/tile_mode    161/occluder_offset    161/occluder    161/navigation_offset    161/navigation    161/shape_offset    161/shape_transform 
   161/shape    161/shape_one_way    161/shape_one_way_margin    161/shapes    161/z_index 	   162/name    162/texture    162/normal_map    162/tex_offset    162/material    162/modulate    162/region    162/tile_mode    162/occluder_offset    162/occluder    162/navigation_offset    162/navigation    162/shape_offset    162/shape_transform 
   162/shape    162/shape_one_way    162/shape_one_way_margin    162/shapes    162/z_index 	   163/name    163/texture    163/normal_map    163/tex_offset    163/material    163/modulate    163/region    163/tile_mode    163/occluder_offset    163/occluder    163/navigation_offset    163/navigation    163/shape_offset    163/shape_transform 
   163/shape    163/shape_one_way    163/shape_one_way_margin    163/shapes    163/z_index 	   164/name    164/texture    164/normal_map    164/tex_offset    164/material    164/modulate    164/region    164/tile_mode    164/occluder_offset    164/occluder    164/navigation_offset    164/navigation    164/shape_offset    164/shape_transform 
   164/shape    164/shape_one_way    164/shape_one_way_margin    164/shapes    164/z_index 	   165/name    165/texture    165/normal_map    165/tex_offset    165/material    165/modulate    165/region    165/tile_mode    165/occluder_offset    165/occluder    165/navigation_offset    165/navigation    165/shape_offset    165/shape_transform 
   165/shape    165/shape_one_way    165/shape_one_way_margin    165/shapes    165/z_index 	   166/name    166/texture    166/normal_map    166/tex_offset    166/material    166/modulate    166/region    166/tile_mode    166/occluder_offset    166/occluder    166/navigation_offset    166/navigation    166/shape_offset    166/shape_transform 
   166/shape    166/shape_one_way    166/shape_one_way_margin    166/shapes    166/z_index 	   167/name    167/texture    167/normal_map    167/tex_offset    167/material    167/modulate    167/region    167/tile_mode    167/occluder_offset    167/occluder    167/navigation_offset    167/navigation    167/shape_offset    167/shape_transform 
   167/shape    167/shape_one_way    167/shape_one_way_margin    167/shapes    167/z_index 	   168/name    168/texture    168/normal_map    168/tex_offset    168/material    168/modulate    168/region    168/tile_mode    168/occluder_offset    168/occluder    168/navigation_offset    168/navigation    168/shape_offset    168/shape_transform 
   168/shape    168/shape_one_way    168/shape_one_way_margin    168/shapes    168/z_index 	   169/name    169/texture    169/normal_map    169/tex_offset    169/material    169/modulate    169/region    169/tile_mode    169/occluder_offset    169/occluder    169/navigation_offset    169/navigation    169/shape_offset    169/shape_transform 
   169/shape    169/shape_one_way    169/shape_one_way_margin    169/shapes    169/z_index 	   170/name    170/texture    170/normal_map    170/tex_offset    170/material    170/modulate    170/region    170/tile_mode    170/occluder_offset    170/occluder    170/navigation_offset    170/navigation    170/shape_offset    170/shape_transform 
   170/shape    170/shape_one_way    170/shape_one_way_margin    170/shapes    170/z_index 	   171/name    171/texture    171/normal_map    171/tex_offset    171/material    171/modulate    171/region    171/tile_mode    171/occluder_offset    171/occluder    171/navigation_offset    171/navigation    171/shape_offset    171/shape_transform 
   171/shape    171/shape_one_way    171/shape_one_way_margin    171/shapes    171/z_index 	   172/name    172/texture    172/normal_map    172/tex_offset    172/material    172/modulate    172/region    172/tile_mode    172/occluder_offset    172/occluder    172/navigation_offset    172/navigation    172/shape_offset    172/shape_transform 
   172/shape    172/shape_one_way    172/shape_one_way_margin    172/shapes    172/z_index 	   173/name    173/texture    173/normal_map    173/tex_offset    173/material    173/modulate    173/region    173/tile_mode    173/occluder_offset    173/occluder    173/navigation_offset    173/navigation    173/shape_offset    173/shape_transform 
   173/shape    173/shape_one_way    173/shape_one_way_margin    173/shapes    173/z_index 	   174/name    174/texture    174/normal_map    174/tex_offset    174/material    174/modulate    174/region    174/tile_mode    174/occluder_offset    174/occluder    174/navigation_offset    174/navigation    174/shape_offset    174/shape_transform 
   174/shape    174/shape_one_way    174/shape_one_way_margin    174/shapes    174/z_index 	   175/name    175/texture    175/normal_map    175/tex_offset    175/material    175/modulate    175/region    175/tile_mode    175/occluder_offset    175/occluder    175/navigation_offset    175/navigation    175/shape_offset    175/shape_transform 
   175/shape    175/shape_one_way    175/shape_one_way_margin    175/shapes    175/z_index 	   176/name    176/texture    176/normal_map    176/tex_offset    176/material    176/modulate    176/region    176/tile_mode    176/occluder_offset    176/occluder    176/navigation_offset    176/navigation    176/shape_offset    176/shape_transform 
   176/shape    176/shape_one_way    176/shape_one_way_margin    176/shapes    176/z_index 	   177/name    177/texture    177/normal_map    177/tex_offset    177/material    177/modulate    177/region    177/tile_mode    177/occluder_offset    177/occluder    177/navigation_offset    177/navigation    177/shape_offset    177/shape_transform 
   177/shape    177/shape_one_way    177/shape_one_way_margin    177/shapes    177/z_index 	   178/name    178/texture    178/normal_map    178/tex_offset    178/material    178/modulate    178/region    178/tile_mode    178/occluder_offset    178/occluder    178/navigation_offset    178/navigation    178/shape_offset    178/shape_transform 
   178/shape    178/shape_one_way    178/shape_one_way_margin    178/shapes    178/z_index 	   179/name    179/texture    179/normal_map    179/tex_offset    179/material    179/modulate    179/region    179/tile_mode    179/occluder_offset    179/occluder    179/navigation_offset    179/navigation    179/shape_offset    179/shape_transform 
   179/shape    179/shape_one_way    179/shape_one_way_margin    179/shapes    179/z_index 	   180/name    180/texture    180/normal_map    180/tex_offset    180/material    180/modulate    180/region    180/tile_mode    180/occluder_offset    180/occluder    180/navigation_offset    180/navigation    180/shape_offset    180/shape_transform 
   180/shape    180/shape_one_way    180/shape_one_way_margin    180/shapes    180/z_index 	   181/name    181/texture    181/normal_map    181/tex_offset    181/material    181/modulate    181/region    181/tile_mode    181/occluder_offset    181/occluder    181/navigation_offset    181/navigation    181/shape_offset    181/shape_transform 
   181/shape    181/shape_one_way    181/shape_one_way_margin    181/shapes    181/z_index 	   182/name    182/texture    182/normal_map    182/tex_offset    182/material    182/modulate    182/region    182/tile_mode    182/occluder_offset    182/occluder    182/navigation_offset    182/navigation    182/shape_offset    182/shape_transform 
   182/shape    182/shape_one_way    182/shape_one_way_margin    182/shapes    182/z_index 	   183/name    183/texture    183/normal_map    183/tex_offset    183/material    183/modulate    183/region    183/tile_mode    183/occluder_offset    183/occluder    183/navigation_offset    183/navigation    183/shape_offset    183/shape_transform 
   183/shape    183/shape_one_way    183/shape_one_way_margin    183/shapes    183/z_index 	   184/name    184/texture    184/normal_map    184/tex_offset    184/material    184/modulate    184/region    184/tile_mode    184/occluder_offset    184/occluder    184/navigation_offset    184/navigation    184/shape_offset    184/shape_transform 
   184/shape    184/shape_one_way    184/shape_one_way_margin    184/shapes    184/z_index 	   185/name    185/texture    185/normal_map    185/tex_offset    185/material    185/modulate    185/region    185/tile_mode    185/occluder_offset    185/occluder    185/navigation_offset    185/navigation    185/shape_offset    185/shape_transform 
   185/shape    185/shape_one_way    185/shape_one_way_margin    185/shapes    185/z_index 	   186/name    186/texture    186/normal_map    186/tex_offset    186/material    186/modulate    186/region    186/tile_mode    186/occluder_offset    186/occluder    186/navigation_offset    186/navigation    186/shape_offset    186/shape_transform 
   186/shape    186/shape_one_way    186/shape_one_way_margin    186/shapes    186/z_index 	   187/name    187/texture    187/normal_map    187/tex_offset    187/material    187/modulate    187/region    187/tile_mode    187/occluder_offset    187/occluder    187/navigation_offset    187/navigation    187/shape_offset    187/shape_transform 
   187/shape    187/shape_one_way    187/shape_one_way_margin    187/shapes    187/z_index 	   188/name    188/texture    188/normal_map    188/tex_offset    188/material    188/modulate    188/region    188/tile_mode    188/occluder_offset    188/occluder    188/navigation_offset    188/navigation    188/shape_offset    188/shape_transform 
   188/shape    188/shape_one_way    188/shape_one_way_margin    188/shapes    188/z_index 	   189/name    189/texture    189/normal_map    189/tex_offset    189/material    189/modulate    189/region    189/tile_mode    189/occluder_offset    189/occluder    189/navigation_offset    189/navigation    189/shape_offset    189/shape_transform 
   189/shape    189/shape_one_way    189/shape_one_way_margin    189/shapes    189/z_index 	   190/name    190/texture    190/normal_map    190/tex_offset    190/material    190/modulate    190/region    190/tile_mode    190/occluder_offset    190/occluder    190/navigation_offset    190/navigation    190/shape_offset    190/shape_transform 
   190/shape    190/shape_one_way    190/shape_one_way_margin    190/shapes    190/z_index 	   191/name    191/texture    191/normal_map    191/tex_offset    191/material    191/modulate    191/region    191/tile_mode    191/occluder_offset    191/occluder    191/navigation_offset    191/navigation    191/shape_offset    191/shape_transform 
   191/shape    191/shape_one_way    191/shape_one_way_margin    191/shapes    191/z_index 	   192/name    192/texture    192/normal_map    192/tex_offset    192/material    192/modulate    192/region    192/tile_mode    192/occluder_offset    192/occluder    192/navigation_offset    192/navigation    192/shape_offset    192/shape_transform 
   192/shape    192/shape_one_way    192/shape_one_way_margin    192/shapes    192/z_index 	   193/name    193/texture    193/normal_map    193/tex_offset    193/material    193/modulate    193/region    193/tile_mode    193/occluder_offset    193/occluder    193/navigation_offset    193/navigation    193/shape_offset    193/shape_transform 
   193/shape    193/shape_one_way    193/shape_one_way_margin    193/shapes    193/z_index 	   194/name    194/texture    194/normal_map    194/tex_offset    194/material    194/modulate    194/region    194/tile_mode    194/occluder_offset    194/occluder    194/navigation_offset    194/navigation    194/shape_offset    194/shape_transform 
   194/shape    194/shape_one_way    194/shape_one_way_margin    194/shapes    194/z_index 	   195/name    195/texture    195/normal_map    195/tex_offset    195/material    195/modulate    195/region    195/tile_mode    195/occluder_offset    195/occluder    195/navigation_offset    195/navigation    195/shape_offset    195/shape_transform 
   195/shape    195/shape_one_way    195/shape_one_way_margin    195/shapes    195/z_index 	   196/name    196/texture    196/normal_map    196/tex_offset    196/material    196/modulate    196/region    196/tile_mode    196/occluder_offset    196/occluder    196/navigation_offset    196/navigation    196/shape_offset    196/shape_transform 
   196/shape    196/shape_one_way    196/shape_one_way_margin    196/shapes    196/z_index 	   197/name    197/texture    197/normal_map    197/tex_offset    197/material    197/modulate    197/region    197/tile_mode    197/occluder_offset    197/occluder    197/navigation_offset    197/navigation    197/shape_offset    197/shape_transform 
   197/shape    197/shape_one_way    197/shape_one_way_margin    197/shapes    197/z_index 	   198/name    198/texture    198/normal_map    198/tex_offset    198/material    198/modulate    198/region    198/tile_mode    198/occluder_offset    198/occluder    198/navigation_offset    198/navigation    198/shape_offset    198/shape_transform 
   198/shape    198/shape_one_way    198/shape_one_way_margin    198/shapes    198/z_index 	   199/name    199/texture    199/normal_map    199/tex_offset    199/material    199/modulate    199/region    199/tile_mode    199/occluder_offset    199/occluder    199/navigation_offset    199/navigation    199/shape_offset    199/shape_transform 
   199/shape    199/shape_one_way    199/shape_one_way_margin    199/shapes    199/z_index 	   200/name    200/texture    200/normal_map    200/tex_offset    200/material    200/modulate    200/region    200/tile_mode    200/occluder_offset    200/occluder    200/navigation_offset    200/navigation    200/shape_offset    200/shape_transform 
   200/shape    200/shape_one_way    200/shape_one_way_margin    200/shapes    200/z_index 	   201/name    201/texture    201/normal_map    201/tex_offset    201/material    201/modulate    201/region    201/tile_mode    201/occluder_offset    201/occluder    201/navigation_offset    201/navigation    201/shape_offset    201/shape_transform 
   201/shape    201/shape_one_way    201/shape_one_way_margin    201/shapes    201/z_index 	   202/name    202/texture    202/normal_map    202/tex_offset    202/material    202/modulate    202/region    202/tile_mode    202/occluder_offset    202/occluder    202/navigation_offset    202/navigation    202/shape_offset    202/shape_transform 
   202/shape    202/shape_one_way    202/shape_one_way_margin    202/shapes    202/z_index 	   203/name    203/texture    203/normal_map    203/tex_offset    203/material    203/modulate    203/region    203/tile_mode    203/occluder_offset    203/occluder    203/navigation_offset    203/navigation    203/shape_offset    203/shape_transform 
   203/shape    203/shape_one_way    203/shape_one_way_margin    203/shapes    203/z_index 	   204/name    204/texture    204/normal_map    204/tex_offset    204/material    204/modulate    204/region    204/tile_mode    204/occluder_offset    204/occluder    204/navigation_offset    204/navigation    204/shape_offset    204/shape_transform 
   204/shape    204/shape_one_way    204/shape_one_way_margin    204/shapes    204/z_index 	   205/name    205/texture    205/normal_map    205/tex_offset    205/material    205/modulate    205/region    205/tile_mode    205/occluder_offset    205/occluder    205/navigation_offset    205/navigation    205/shape_offset    205/shape_transform 
   205/shape    205/shape_one_way    205/shape_one_way_margin    205/shapes    205/z_index 	   206/name    206/texture    206/normal_map    206/tex_offset    206/material    206/modulate    206/region    206/tile_mode    206/occluder_offset    206/occluder    206/navigation_offset    206/navigation    206/shape_offset    206/shape_transform 
   206/shape    206/shape_one_way    206/shape_one_way_margin    206/shapes    206/z_index 	   207/name    207/texture    207/normal_map    207/tex_offset    207/material    207/modulate    207/region    207/tile_mode    207/occluder_offset    207/occluder    207/navigation_offset    207/navigation    207/shape_offset    207/shape_transform 
   207/shape    207/shape_one_way    207/shape_one_way_margin    207/shapes    207/z_index 	   208/name    208/texture    208/normal_map    208/tex_offset    208/material    208/modulate    208/region    208/tile_mode    208/occluder_offset    208/occluder    208/navigation_offset    208/navigation    208/shape_offset    208/shape_transform 
   208/shape    208/shape_one_way    208/shape_one_way_margin    208/shapes    208/z_index 	   209/name    209/texture    209/normal_map    209/tex_offset    209/material    209/modulate    209/region    209/tile_mode    209/occluder_offset    209/occluder    209/navigation_offset    209/navigation    209/shape_offset    209/shape_transform 
   209/shape    209/shape_one_way    209/shape_one_way_margin    209/shapes    209/z_index 	   210/name    210/texture    210/normal_map    210/tex_offset    210/material    210/modulate    210/region    210/tile_mode    210/occluder_offset    210/occluder    210/navigation_offset    210/navigation    210/shape_offset    210/shape_transform 
   210/shape    210/shape_one_way    210/shape_one_way_margin    210/shapes    210/z_index 	   211/name    211/texture    211/normal_map    211/tex_offset    211/material    211/modulate    211/region    211/tile_mode    211/occluder_offset    211/occluder    211/navigation_offset    211/navigation    211/shape_offset    211/shape_transform 
   211/shape    211/shape_one_way    211/shape_one_way_margin    211/shapes    211/z_index 	   212/name    212/texture    212/normal_map    212/tex_offset    212/material    212/modulate    212/region    212/tile_mode    212/occluder_offset    212/occluder    212/navigation_offset    212/navigation    212/shape_offset    212/shape_transform 
   212/shape    212/shape_one_way    212/shape_one_way_margin    212/shapes    212/z_index 	   213/name    213/texture    213/normal_map    213/tex_offset    213/material    213/modulate    213/region    213/tile_mode    213/occluder_offset    213/occluder    213/navigation_offset    213/navigation    213/shape_offset    213/shape_transform 
   213/shape    213/shape_one_way    213/shape_one_way_margin    213/shapes    213/z_index 	   214/name    214/texture    214/normal_map    214/tex_offset    214/material    214/modulate    214/region    214/tile_mode    214/occluder_offset    214/occluder    214/navigation_offset    214/navigation    214/shape_offset    214/shape_transform 
   214/shape    214/shape_one_way    214/shape_one_way_margin    214/shapes    214/z_index 	   215/name    215/texture    215/normal_map    215/tex_offset    215/material    215/modulate    215/region    215/tile_mode    215/occluder_offset    215/occluder    215/navigation_offset    215/navigation    215/shape_offset    215/shape_transform 
   215/shape    215/shape_one_way    215/shape_one_way_margin    215/shapes    215/z_index 	   216/name    216/texture    216/normal_map    216/tex_offset    216/material    216/modulate    216/region    216/tile_mode    216/occluder_offset    216/occluder    216/navigation_offset    216/navigation    216/shape_offset    216/shape_transform 
   216/shape    216/shape_one_way    216/shape_one_way_margin    216/shapes    216/z_index 	   217/name    217/texture    217/normal_map    217/tex_offset    217/material    217/modulate    217/region    217/tile_mode    217/occluder_offset    217/occluder    217/navigation_offset    217/navigation    217/shape_offset    217/shape_transform 
   217/shape    217/shape_one_way    217/shape_one_way_margin    217/shapes    217/z_index 	   218/name    218/texture    218/normal_map    218/tex_offset    218/material    218/modulate    218/region    218/tile_mode    218/occluder_offset    218/occluder    218/navigation_offset    218/navigation    218/shape_offset    218/shape_transform 
   218/shape    218/shape_one_way    218/shape_one_way_margin    218/shapes    218/z_index 	   219/name    219/texture    219/normal_map    219/tex_offset    219/material    219/modulate    219/region    219/tile_mode    219/occluder_offset    219/occluder    219/navigation_offset    219/navigation    219/shape_offset    219/shape_transform 
   219/shape    219/shape_one_way    219/shape_one_way_margin    219/shapes    219/z_index 	   220/name    220/texture    220/normal_map    220/tex_offset    220/material    220/modulate    220/region    220/tile_mode    220/occluder_offset    220/occluder    220/navigation_offset    220/navigation    220/shape_offset    220/shape_transform 
   220/shape    220/shape_one_way    220/shape_one_way_margin    220/shapes    220/z_index 	   221/name    221/texture    221/normal_map    221/tex_offset    221/material    221/modulate    221/region    221/tile_mode    221/occluder_offset    221/occluder    221/navigation_offset    221/navigation    221/shape_offset    221/shape_transform 
   221/shape    221/shape_one_way    221/shape_one_way_margin    221/shapes    221/z_index 	   222/name    222/texture    222/normal_map    222/tex_offset    222/material    222/modulate    222/region    222/tile_mode    222/occluder_offset    222/occluder    222/navigation_offset    222/navigation    222/shape_offset    222/shape_transform 
   222/shape    222/shape_one_way    222/shape_one_way_margin    222/shapes    222/z_index 	   223/name    223/texture    223/normal_map    223/tex_offset    223/material    223/modulate    223/region    223/tile_mode    223/occluder_offset    223/occluder    223/navigation_offset    223/navigation    223/shape_offset    223/shape_transform 
   223/shape    223/shape_one_way    223/shape_one_way_margin    223/shapes    223/z_index 	   224/name    224/texture    224/normal_map    224/tex_offset    224/material    224/modulate    224/region    224/tile_mode    224/occluder_offset    224/occluder    224/navigation_offset    224/navigation    224/shape_offset    224/shape_transform 
   224/shape    224/shape_one_way    224/shape_one_way_margin    224/shapes    224/z_index 	   225/name    225/texture    225/normal_map    225/tex_offset    225/material    225/modulate    225/region    225/tile_mode    225/occluder_offset    225/occluder    225/navigation_offset    225/navigation    225/shape_offset    225/shape_transform 
   225/shape    225/shape_one_way    225/shape_one_way_margin    225/shapes    225/z_index 	   226/name    226/texture    226/normal_map    226/tex_offset    226/material    226/modulate    226/region    226/tile_mode    226/occluder_offset    226/occluder    226/navigation_offset    226/navigation    226/shape_offset    226/shape_transform 
   226/shape    226/shape_one_way    226/shape_one_way_margin    226/shapes    226/z_index 	   227/name    227/texture    227/normal_map    227/tex_offset    227/material    227/modulate    227/region    227/tile_mode    227/occluder_offset    227/occluder    227/navigation_offset    227/navigation    227/shape_offset    227/shape_transform 
   227/shape    227/shape_one_way    227/shape_one_way_margin    227/shapes    227/z_index 	   228/name    228/texture    228/normal_map    228/tex_offset    228/material    228/modulate    228/region    228/tile_mode    228/occluder_offset    228/occluder    228/navigation_offset    228/navigation    228/shape_offset    228/shape_transform 
   228/shape    228/shape_one_way    228/shape_one_way_margin    228/shapes    228/z_index 	   229/name    229/texture    229/normal_map    229/tex_offset    229/material    229/modulate    229/region    229/tile_mode    229/occluder_offset    229/occluder    229/navigation_offset    229/navigation    229/shape_offset    229/shape_transform 
   229/shape    229/shape_one_way    229/shape_one_way_margin    229/shapes    229/z_index 	   230/name    230/texture    230/normal_map    230/tex_offset    230/material    230/modulate    230/region    230/tile_mode    230/occluder_offset    230/occluder    230/navigation_offset    230/navigation    230/shape_offset    230/shape_transform 
   230/shape    230/shape_one_way    230/shape_one_way_margin    230/shapes    230/z_index 	   231/name    231/texture    231/normal_map    231/tex_offset    231/material    231/modulate    231/region    231/tile_mode    231/occluder_offset    231/occluder    231/navigation_offset    231/navigation    231/shape_offset    231/shape_transform 
   231/shape    231/shape_one_way    231/shape_one_way_margin    231/shapes    231/z_index 	   232/name    232/texture    232/normal_map    232/tex_offset    232/material    232/modulate    232/region    232/tile_mode    232/occluder_offset    232/occluder    232/navigation_offset    232/navigation    232/shape_offset    232/shape_transform 
   232/shape    232/shape_one_way    232/shape_one_way_margin    232/shapes    232/z_index 	   233/name    233/texture    233/normal_map    233/tex_offset    233/material    233/modulate    233/region    233/tile_mode    233/occluder_offset    233/occluder    233/navigation_offset    233/navigation    233/shape_offset    233/shape_transform 
   233/shape    233/shape_one_way    233/shape_one_way_margin    233/shapes    233/z_index 	   234/name    234/texture    234/normal_map    234/tex_offset    234/material    234/modulate    234/region    234/tile_mode    234/occluder_offset    234/occluder    234/navigation_offset    234/navigation    234/shape_offset    234/shape_transform 
   234/shape    234/shape_one_way    234/shape_one_way_margin    234/shapes    234/z_index 	   235/name    235/texture    235/normal_map    235/tex_offset    235/material    235/modulate    235/region    235/tile_mode    235/occluder_offset    235/occluder    235/navigation_offset    235/navigation    235/shape_offset    235/shape_transform 
   235/shape    235/shape_one_way    235/shape_one_way_margin    235/shapes    235/z_index 	   236/name    236/texture    236/normal_map    236/tex_offset    236/material    236/modulate    236/region    236/tile_mode    236/occluder_offset    236/occluder    236/navigation_offset    236/navigation    236/shape_offset    236/shape_transform 
   236/shape    236/shape_one_way    236/shape_one_way_margin    236/shapes    236/z_index 	   237/name    237/texture    237/normal_map    237/tex_offset    237/material    237/modulate    237/region    237/tile_mode    237/occluder_offset    237/occluder    237/navigation_offset    237/navigation    237/shape_offset    237/shape_transform 
   237/shape    237/shape_one_way    237/shape_one_way_margin    237/shapes    237/z_index 	   238/name    238/texture    238/normal_map    238/tex_offset    238/material    238/modulate    238/region    238/tile_mode    238/occluder_offset    238/occluder    238/navigation_offset    238/navigation    238/shape_offset    238/shape_transform 
   238/shape    238/shape_one_way    238/shape_one_way_margin    238/shapes    238/z_index 	   239/name    239/texture    239/normal_map    239/tex_offset    239/material    239/modulate    239/region    239/tile_mode    239/occluder_offset    239/occluder    239/navigation_offset    239/navigation    239/shape_offset    239/shape_transform 
   239/shape    239/shape_one_way    239/shape_one_way_margin    239/shapes    239/z_index 	   240/name    240/texture    240/normal_map    240/tex_offset    240/material    240/modulate    240/region    240/tile_mode    240/occluder_offset    240/occluder    240/navigation_offset    240/navigation    240/shape_offset    240/shape_transform 
   240/shape    240/shape_one_way    240/shape_one_way_margin    240/shapes    240/z_index 	   241/name    241/texture    241/normal_map    241/tex_offset    241/material    241/modulate    241/region    241/tile_mode    241/occluder_offset    241/occluder    241/navigation_offset    241/navigation    241/shape_offset    241/shape_transform 
   241/shape    241/shape_one_way    241/shape_one_way_margin    241/shapes    241/z_index 	   242/name    242/texture    242/normal_map    242/tex_offset    242/material    242/modulate    242/region    242/tile_mode    242/occluder_offset    242/occluder    242/navigation_offset    242/navigation    242/shape_offset    242/shape_transform 
   242/shape    242/shape_one_way    242/shape_one_way_margin    242/shapes    242/z_index 	   243/name    243/texture    243/normal_map    243/tex_offset    243/material    243/modulate    243/region    243/tile_mode    243/occluder_offset    243/occluder    243/navigation_offset    243/navigation    243/shape_offset    243/shape_transform 
   243/shape    243/shape_one_way    243/shape_one_way_margin    243/shapes    243/z_index 	   244/name    244/texture    244/normal_map    244/tex_offset    244/material    244/modulate    244/region    244/tile_mode    244/occluder_offset    244/occluder    244/navigation_offset    244/navigation    244/shape_offset    244/shape_transform 
   244/shape    244/shape_one_way    244/shape_one_way_margin    244/shapes    244/z_index 	   245/name    245/texture    245/normal_map    245/tex_offset    245/material    245/modulate    245/region    245/tile_mode    245/occluder_offset    245/occluder    245/navigation_offset    245/navigation    245/shape_offset    245/shape_transform 
   245/shape    245/shape_one_way    245/shape_one_way_margin    245/shapes    245/z_index 	   246/name    246/texture    246/normal_map    246/tex_offset    246/material    246/modulate    246/region    246/tile_mode    246/occluder_offset    246/occluder    246/navigation_offset    246/navigation    246/shape_offset    246/shape_transform 
   246/shape    246/shape_one_way    246/shape_one_way_margin    246/shapes    246/z_index 	   247/name    247/texture    247/normal_map    247/tex_offset    247/material    247/modulate    247/region    247/tile_mode    247/occluder_offset    247/occluder    247/navigation_offset    247/navigation    247/shape_offset    247/shape_transform 
   247/shape    247/shape_one_way    247/shape_one_way_margin    247/shapes    247/z_index 	   248/name    248/texture    248/normal_map    248/tex_offset    248/material    248/modulate    248/region    248/tile_mode    248/occluder_offset    248/occluder    248/navigation_offset    248/navigation    248/shape_offset    248/shape_transform 
   248/shape    248/shape_one_way    248/shape_one_way_margin    248/shapes    248/z_index 	   249/name    249/texture    249/normal_map    249/tex_offset    249/material    249/modulate    249/region    249/tile_mode    249/occluder_offset    249/occluder    249/navigation_offset    249/navigation    249/shape_offset    249/shape_transform 
   249/shape    249/shape_one_way    249/shape_one_way_margin    249/shapes    249/z_index 	   250/name    250/texture    250/normal_map    250/tex_offset    250/material    250/modulate    250/region    250/tile_mode    250/occluder_offset    250/occluder    250/navigation_offset    250/navigation    250/shape_offset    250/shape_transform 
   250/shape    250/shape_one_way    250/shape_one_way_margin    250/shapes    250/z_index 	   251/name    251/texture    251/normal_map    251/tex_offset    251/material    251/modulate    251/region    251/tile_mode    251/occluder_offset    251/occluder    251/navigation_offset    251/navigation    251/shape_offset    251/shape_transform 
   251/shape    251/shape_one_way    251/shape_one_way_margin    251/shapes    251/z_index 	   252/name    252/texture    252/normal_map    252/tex_offset    252/material    252/modulate    252/region    252/tile_mode    252/occluder_offset    252/occluder    252/navigation_offset    252/navigation    252/shape_offset    252/shape_transform 
   252/shape    252/shape_one_way    252/shape_one_way_margin    252/shapes    252/z_index 	   253/name    253/texture    253/normal_map    253/tex_offset    253/material    253/modulate    253/region    253/tile_mode    253/occluder_offset    253/occluder    253/navigation_offset    253/navigation    253/shape_offset    253/shape_transform 
   253/shape    253/shape_one_way    253/shape_one_way_margin    253/shapes    253/z_index 	   254/name    254/texture    254/normal_map    254/tex_offset    254/material    254/modulate    254/region    254/tile_mode    254/occluder_offset    254/occluder    254/navigation_offset    254/navigation    254/shape_offset    254/shape_transform 
   254/shape    254/shape_one_way    254/shape_one_way_margin    254/shapes    254/z_index 	   255/name    255/texture    255/normal_map    255/tex_offset    255/material    255/modulate    255/region    255/tile_mode    255/occluder_offset    255/occluder    255/navigation_offset    255/navigation    255/shape_offset    255/shape_transform 
   255/shape    255/shape_one_way    255/shape_one_way_margin    255/shapes    255/z_index 	   256/name    256/texture    256/normal_map    256/tex_offset    256/material    256/modulate    256/region    256/tile_mode    256/occluder_offset    256/occluder    256/navigation_offset    256/navigation    256/shape_offset    256/shape_transform 
   256/shape    256/shape_one_way    256/shape_one_way_margin    256/shapes    256/z_index 	   257/name    257/texture    257/normal_map    257/tex_offset    257/material    257/modulate    257/region    257/tile_mode    257/occluder_offset    257/occluder    257/navigation_offset    257/navigation    257/shape_offset    257/shape_transform 
   257/shape    257/shape_one_way    257/shape_one_way_margin    257/shapes    257/z_index 	   258/name    258/texture    258/normal_map    258/tex_offset    258/material    258/modulate    258/region    258/tile_mode    258/occluder_offset    258/occluder    258/navigation_offset    258/navigation    258/shape_offset    258/shape_transform 
   258/shape    258/shape_one_way    258/shape_one_way_margin    258/shapes    258/z_index 	   259/name    259/texture    259/normal_map    259/tex_offset    259/material    259/modulate    259/region    259/tile_mode    259/occluder_offset    259/occluder    259/navigation_offset    259/navigation    259/shape_offset    259/shape_transform 
   259/shape    259/shape_one_way    259/shape_one_way_margin    259/shapes    259/z_index 	   260/name    260/texture    260/normal_map    260/tex_offset    260/material    260/modulate    260/region    260/tile_mode    260/occluder_offset    260/occluder    260/navigation_offset    260/navigation    260/shape_offset    260/shape_transform 
   260/shape    260/shape_one_way    260/shape_one_way_margin    260/shapes    260/z_index 	   261/name    261/texture    261/normal_map    261/tex_offset    261/material    261/modulate    261/region    261/tile_mode    261/occluder_offset    261/occluder    261/navigation_offset    261/navigation    261/shape_offset    261/shape_transform 
   261/shape    261/shape_one_way    261/shape_one_way_margin    261/shapes    261/z_index 	   262/name    262/texture    262/normal_map    262/tex_offset    262/material    262/modulate    262/region    262/tile_mode    262/occluder_offset    262/occluder    262/navigation_offset    262/navigation    262/shape_offset    262/shape_transform 
   262/shape    262/shape_one_way    262/shape_one_way_margin    262/shapes    262/z_index 	   263/name    263/texture    263/normal_map    263/tex_offset    263/material    263/modulate    263/region    263/tile_mode    263/occluder_offset    263/occluder    263/navigation_offset    263/navigation    263/shape_offset    263/shape_transform 
   263/shape    263/shape_one_way    263/shape_one_way_margin    263/shapes    263/z_index 	   264/name    264/texture    264/normal_map    264/tex_offset    264/material    264/modulate    264/region    264/tile_mode    264/occluder_offset    264/occluder    264/navigation_offset    264/navigation    264/shape_offset    264/shape_transform 
   264/shape    264/shape_one_way    264/shape_one_way_margin    264/shapes    264/z_index 	   265/name    265/texture    265/normal_map    265/tex_offset    265/material    265/modulate    265/region    265/tile_mode    265/occluder_offset    265/occluder    265/navigation_offset    265/navigation    265/shape_offset    265/shape_transform 
   265/shape    265/shape_one_way    265/shape_one_way_margin    265/shapes    265/z_index 	   266/name    266/texture    266/normal_map    266/tex_offset    266/material    266/modulate    266/region    266/tile_mode    266/occluder_offset    266/occluder    266/navigation_offset    266/navigation    266/shape_offset    266/shape_transform 
   266/shape    266/shape_one_way    266/shape_one_way_margin    266/shapes    266/z_index 	   267/name    267/texture    267/normal_map    267/tex_offset    267/material    267/modulate    267/region    267/tile_mode    267/occluder_offset    267/occluder    267/navigation_offset    267/navigation    267/shape_offset    267/shape_transform 
   267/shape    267/shape_one_way    267/shape_one_way_margin    267/shapes    267/z_index 	   268/name    268/texture    268/normal_map    268/tex_offset    268/material    268/modulate    268/region    268/tile_mode    268/occluder_offset    268/occluder    268/navigation_offset    268/navigation    268/shape_offset    268/shape_transform 
   268/shape    268/shape_one_way    268/shape_one_way_margin    268/shapes    268/z_index 	   269/name    269/texture    269/normal_map    269/tex_offset    269/material    269/modulate    269/region    269/tile_mode    269/occluder_offset    269/occluder    269/navigation_offset    269/navigation    269/shape_offset    269/shape_transform 
   269/shape    269/shape_one_way    269/shape_one_way_margin    269/shapes    269/z_index 	   270/name    270/texture    270/normal_map    270/tex_offset    270/material    270/modulate    270/region    270/tile_mode    270/occluder_offset    270/occluder    270/navigation_offset    270/navigation    270/shape_offset    270/shape_transform 
   270/shape    270/shape_one_way    270/shape_one_way_margin    270/shapes    270/z_index 	   271/name    271/texture    271/normal_map    271/tex_offset    271/material    271/modulate    271/region    271/tile_mode    271/occluder_offset    271/occluder    271/navigation_offset    271/navigation    271/shape_offset    271/shape_transform 
   271/shape    271/shape_one_way    271/shape_one_way_margin    271/shapes    271/z_index 	   272/name    272/texture    272/normal_map    272/tex_offset    272/material    272/modulate    272/region    272/tile_mode    272/occluder_offset    272/occluder    272/navigation_offset    272/navigation    272/shape_offset    272/shape_transform 
   272/shape    272/shape_one_way    272/shape_one_way_margin    272/shapes    272/z_index 	   273/name    273/texture    273/normal_map    273/tex_offset    273/material    273/modulate    273/region    273/tile_mode    273/occluder_offset    273/occluder    273/navigation_offset    273/navigation    273/shape_offset    273/shape_transform 
   273/shape    273/shape_one_way    273/shape_one_way_margin    273/shapes    273/z_index 	   274/name    274/texture    274/normal_map    274/tex_offset    274/material    274/modulate    274/region    274/tile_mode    274/occluder_offset    274/occluder    274/navigation_offset    274/navigation    274/shape_offset    274/shape_transform 
   274/shape    274/shape_one_way    274/shape_one_way_margin    274/shapes    274/z_index 	   275/name    275/texture    275/normal_map    275/tex_offset    275/material    275/modulate    275/region    275/tile_mode    275/occluder_offset    275/occluder    275/navigation_offset    275/navigation    275/shape_offset    275/shape_transform 
   275/shape    275/shape_one_way    275/shape_one_way_margin    275/shapes    275/z_index 	   276/name    276/texture    276/normal_map    276/tex_offset    276/material    276/modulate    276/region    276/tile_mode    276/occluder_offset    276/occluder    276/navigation_offset    276/navigation    276/shape_offset    276/shape_transform 
   276/shape    276/shape_one_way    276/shape_one_way_margin    276/shapes    276/z_index 	   277/name    277/texture    277/normal_map    277/tex_offset    277/material    277/modulate    277/region    277/tile_mode    277/occluder_offset    277/occluder    277/navigation_offset    277/navigation    277/shape_offset    277/shape_transform 
   277/shape    277/shape_one_way    277/shape_one_way_margin    277/shapes    277/z_index 	   278/name    278/texture    278/normal_map    278/tex_offset    278/material    278/modulate    278/region    278/tile_mode    278/occluder_offset    278/occluder    278/navigation_offset    278/navigation    278/shape_offset    278/shape_transform 
   278/shape    278/shape_one_way    278/shape_one_way_margin    278/shapes    278/z_index 	   279/name    279/texture    279/normal_map    279/tex_offset    279/material    279/modulate    279/region    279/tile_mode    279/occluder_offset    279/occluder    279/navigation_offset    279/navigation    279/shape_offset    279/shape_transform 
   279/shape    279/shape_one_way    279/shape_one_way_margin    279/shapes    279/z_index 	   280/name    280/texture    280/normal_map    280/tex_offset    280/material    280/modulate    280/region    280/tile_mode    280/occluder_offset    280/occluder    280/navigation_offset    280/navigation    280/shape_offset    280/shape_transform 
   280/shape    280/shape_one_way    280/shape_one_way_margin    280/shapes    280/z_index 	   281/name    281/texture    281/normal_map    281/tex_offset    281/material    281/modulate    281/region    281/tile_mode    281/occluder_offset    281/occluder    281/navigation_offset    281/navigation    281/shape_offset    281/shape_transform 
   281/shape    281/shape_one_way    281/shape_one_way_margin    281/shapes    281/z_index 	   282/name    282/texture    282/normal_map    282/tex_offset    282/material    282/modulate    282/region    282/tile_mode    282/occluder_offset    282/occluder    282/navigation_offset    282/navigation    282/shape_offset    282/shape_transform 
   282/shape    282/shape_one_way    282/shape_one_way_margin    282/shapes    282/z_index 	   283/name    283/texture    283/normal_map    283/tex_offset    283/material    283/modulate    283/region    283/tile_mode    283/occluder_offset    283/occluder    283/navigation_offset    283/navigation    283/shape_offset    283/shape_transform 
   283/shape    283/shape_one_way    283/shape_one_way_margin    283/shapes    283/z_index 	   284/name    284/texture    284/normal_map    284/tex_offset    284/material    284/modulate    284/region    284/tile_mode    284/occluder_offset    284/occluder    284/navigation_offset    284/navigation    284/shape_offset    284/shape_transform 
   284/shape    284/shape_one_way    284/shape_one_way_margin    284/shapes    284/z_index 	   285/name    285/texture    285/normal_map    285/tex_offset    285/material    285/modulate    285/region    285/tile_mode    285/occluder_offset    285/occluder    285/navigation_offset    285/navigation    285/shape_offset    285/shape_transform 
   285/shape    285/shape_one_way    285/shape_one_way_margin    285/shapes    285/z_index 	   286/name    286/texture    286/normal_map    286/tex_offset    286/material    286/modulate    286/region    286/tile_mode    286/occluder_offset    286/occluder    286/navigation_offset    286/navigation    286/shape_offset    286/shape_transform 
   286/shape    286/shape_one_way    286/shape_one_way_margin    286/shapes    286/z_index 	   287/name    287/texture    287/normal_map    287/tex_offset    287/material    287/modulate    287/region    287/tile_mode    287/occluder_offset    287/occluder    287/navigation_offset    287/navigation    287/shape_offset    287/shape_transform 
   287/shape    287/shape_one_way    287/shape_one_way_margin    287/shapes    287/z_index 	   288/name    288/texture    288/normal_map    288/tex_offset    288/material    288/modulate    288/region    288/tile_mode    288/occluder_offset    288/occluder    288/navigation_offset    288/navigation    288/shape_offset    288/shape_transform 
   288/shape    288/shape_one_way    288/shape_one_way_margin    288/shapes    288/z_index 	   289/name    289/texture    289/normal_map    289/tex_offset    289/material    289/modulate    289/region    289/tile_mode    289/occluder_offset    289/occluder    289/navigation_offset    289/navigation    289/shape_offset    289/shape_transform 
   289/shape    289/shape_one_way    289/shape_one_way_margin    289/shapes    289/z_index 	   290/name    290/texture    290/normal_map    290/tex_offset    290/material    290/modulate    290/region    290/tile_mode    290/occluder_offset    290/occluder    290/navigation_offset    290/navigation    290/shape_offset    290/shape_transform 
   290/shape    290/shape_one_way    290/shape_one_way_margin    290/shapes    290/z_index 	   291/name    291/texture    291/normal_map    291/tex_offset    291/material    291/modulate    291/region    291/tile_mode    291/occluder_offset    291/occluder    291/navigation_offset    291/navigation    291/shape_offset    291/shape_transform 
   291/shape    291/shape_one_way    291/shape_one_way_margin    291/shapes    291/z_index 	   292/name    292/texture    292/normal_map    292/tex_offset    292/material    292/modulate    292/region    292/tile_mode    292/occluder_offset    292/occluder    292/navigation_offset    292/navigation    292/shape_offset    292/shape_transform 
   292/shape    292/shape_one_way    292/shape_one_way_margin    292/shapes    292/z_index 	   293/name    293/texture    293/normal_map    293/tex_offset    293/material    293/modulate    293/region    293/tile_mode    293/occluder_offset    293/occluder    293/navigation_offset    293/navigation    293/shape_offset    293/shape_transform 
   293/shape    293/shape_one_way    293/shape_one_way_margin    293/shapes    293/z_index 	   294/name    294/texture    294/normal_map    294/tex_offset    294/material    294/modulate    294/region    294/tile_mode    294/occluder_offset    294/occluder    294/navigation_offset    294/navigation    294/shape_offset    294/shape_transform 
   294/shape    294/shape_one_way    294/shape_one_way_margin    294/shapes    294/z_index 	   295/name    295/texture    295/normal_map    295/tex_offset    295/material    295/modulate    295/region    295/tile_mode    295/occluder_offset    295/occluder    295/navigation_offset    295/navigation    295/shape_offset    295/shape_transform 
   295/shape    295/shape_one_way    295/shape_one_way_margin    295/shapes    295/z_index 	   296/name    296/texture    296/normal_map    296/tex_offset    296/material    296/modulate    296/region    296/tile_mode    296/occluder_offset    296/occluder    296/navigation_offset    296/navigation    296/shape_offset    296/shape_transform 
   296/shape    296/shape_one_way    296/shape_one_way_margin    296/shapes    296/z_index 	   297/name    297/texture    297/normal_map    297/tex_offset    297/material    297/modulate    297/region    297/tile_mode    297/occluder_offset    297/occluder    297/navigation_offset    297/navigation    297/shape_offset    297/shape_transform 
   297/shape    297/shape_one_way    297/shape_one_way_margin    297/shapes    297/z_index 	   298/name    298/texture    298/normal_map    298/tex_offset    298/material    298/modulate    298/region    298/tile_mode    298/occluder_offset    298/occluder    298/navigation_offset    298/navigation    298/shape_offset    298/shape_transform 
   298/shape    298/shape_one_way    298/shape_one_way_margin    298/shapes    298/z_index 	   299/name    299/texture    299/normal_map    299/tex_offset    299/material    299/modulate    299/region    299/tile_mode    299/occluder_offset    299/occluder    299/navigation_offset    299/navigation    299/shape_offset    299/shape_transform 
   299/shape    299/shape_one_way    299/shape_one_way_margin    299/shapes    299/z_index 	   300/name    300/texture    300/normal_map    300/tex_offset    300/material    300/modulate    300/region    300/tile_mode    300/occluder_offset    300/occluder    300/navigation_offset    300/navigation    300/shape_offset    300/shape_transform 
   300/shape    300/shape_one_way    300/shape_one_way_margin    300/shapes    300/z_index 	   301/name    301/texture    301/normal_map    301/tex_offset    301/material    301/modulate    301/region    301/tile_mode    301/occluder_offset    301/occluder    301/navigation_offset    301/navigation    301/shape_offset    301/shape_transform 
   301/shape    301/shape_one_way    301/shape_one_way_margin    301/shapes    301/z_index 	   302/name    302/texture    302/normal_map    302/tex_offset    302/material    302/modulate    302/region    302/tile_mode    302/occluder_offset    302/occluder    302/navigation_offset    302/navigation    302/shape_offset    302/shape_transform 
   302/shape    302/shape_one_way    302/shape_one_way_margin    302/shapes    302/z_index 	   303/name    303/texture    303/normal_map    303/tex_offset    303/material    303/modulate    303/region    303/tile_mode    303/occluder_offset    303/occluder    303/navigation_offset    303/navigation    303/shape_offset    303/shape_transform 
   303/shape    303/shape_one_way    303/shape_one_way_margin    303/shapes    303/z_index 	   304/name    304/texture    304/normal_map    304/tex_offset    304/material    304/modulate    304/region    304/tile_mode    304/occluder_offset    304/occluder    304/navigation_offset    304/navigation    304/shape_offset    304/shape_transform 
   304/shape    304/shape_one_way    304/shape_one_way_margin    304/shapes    304/z_index 	   305/name    305/texture    305/normal_map    305/tex_offset    305/material    305/modulate    305/region    305/tile_mode    305/occluder_offset    305/occluder    305/navigation_offset    305/navigation    305/shape_offset    305/shape_transform 
   305/shape    305/shape_one_way    305/shape_one_way_margin    305/shapes    305/z_index 	   306/name    306/texture    306/normal_map    306/tex_offset    306/material    306/modulate    306/region    306/tile_mode    306/occluder_offset    306/occluder    306/navigation_offset    306/navigation    306/shape_offset    306/shape_transform 
   306/shape    306/shape_one_way    306/shape_one_way_margin    306/shapes    306/z_index 	   307/name    307/texture    307/normal_map    307/tex_offset    307/material    307/modulate    307/region    307/tile_mode    307/occluder_offset    307/occluder    307/navigation_offset    307/navigation    307/shape_offset    307/shape_transform 
   307/shape    307/shape_one_way    307/shape_one_way_margin    307/shapes    307/z_index 	   308/name    308/texture    308/normal_map    308/tex_offset    308/material    308/modulate    308/region    308/tile_mode    308/occluder_offset    308/occluder    308/navigation_offset    308/navigation    308/shape_offset    308/shape_transform 
   308/shape    308/shape_one_way    308/shape_one_way_margin    308/shapes    308/z_index 	   309/name    309/texture    309/normal_map    309/tex_offset    309/material    309/modulate    309/region    309/tile_mode    309/occluder_offset    309/occluder    309/navigation_offset    309/navigation    309/shape_offset    309/shape_transform 
   309/shape    309/shape_one_way    309/shape_one_way_margin    309/shapes    309/z_index 	   310/name    310/texture    310/normal_map    310/tex_offset    310/material    310/modulate    310/region    310/tile_mode    310/occluder_offset    310/occluder    310/navigation_offset    310/navigation    310/shape_offset    310/shape_transform 
   310/shape    310/shape_one_way    310/shape_one_way_margin    310/shapes    310/z_index 	   __meta__ 	   _bundled       Texture "   res://game/tiled/cave_tileset.png    PackedScene    res://game/cache/stalfaux.tscn    Script    res://engine/objects/enemy.gd    PackedScene    res://game/cache/player.tscn    Script    res://engine/objects/player.gd �   
   local://1 �     
   local://2 :�     
   local://3 c�     
   local://4 ��     
   local://5 ��     
   local://6 ޿     
   local://7 �     
   local://8 0�     
   local://9 Y�        local://10 ��        local://11 ��        local://12 ��        local://13 ��        local://14 &�        local://15 O�        local://16 x�        local://17 ��        local://18 ��        local://19 ��        local://20 �        local://21 E�        local://22 n�        local://23 ��        local://24 ��        local://25 ��        local://26 �        local://27 ;�        local://28 d�        local://29 ��        local://30 ��        local://31 ��        local://32 �        local://33 ��        local://34 ��        local://35 E�        local://36 n�        local://37 ��        local://38 ��        local://39 ��        local://40 �        local://41 ;�        local://42 ��        local://43 ��        local://44 x�        local://45 ��        local://46 ��        local://47 ��        local://48 �        local://49 E�        local://50 n�        local://51 ��        local://52 ��        local://53 ��        local://54 �        local://55 ;�        local://56 d�        local://57 ��        local://58 ��        local://59 ��        local://60 �        local://61 1�        local://62 Z�        local://63 ��        local://64 ��        local://65 ��        local://66 ��        local://67 G�        local://68 ��        local://69 ��        local://70 �        local://71 <�        local://72 e�        local://73 ��        local://74 ��        local://75 @�        local://76 i�        local://77 ��        local://78 ��        local://79 �        local://80 -�        local://81 V�        local://82 �        local://83 ��        local://84 ��        local://85 ��        local://86 #�        local://87 L�        local://88 u�        local://89 ��        local://90 ��        local://91 ��        local://92 �        local://93 B�        local://94 k�        local://95 ��        local://96 ��        local://97 ��        local://98 �        local://99 8�        local://100 a�        local://101 ��        local://102 ��        local://103 ��        local://104 �        local://105 .�        local://106 W�        local://107 ��        local://108 ��        local://109 ��        local://110 ��        local://111 $�        local://112 M�        local://113 v�        local://114 ��        local://115 ��        local://116 ��        local://117 �        local://118 C�        local://119 l�        local://120 ��        local://121 ��        local://122 ��        local://123 �        local://124 9�        local://125 b�        local://126 ��        local://127 ��        local://128 ��        local://129 �        local://130 /�        local://131 X�        local://132 ��        local://133 ��        local://134 ��        local://135 ��        local://136 %�        local://137 N�        local://138 w�        local://139 ��        local://140 ��        local://141 ��        local://142 �        local://143 D�        local://144 m�        local://145 ��        local://146 ��        local://147 ��        local://148 �        local://149 :�        local://150 c�        local://151 ��        local://152 ��        local://153 ��        local://154 G�        local://155 p�        local://156 ��        local://157 ��        local://158 ��        local://159 �        local://160 =�        local://161 f�        local://162 ��        local://163 	�        local://164 R�        local://165 ��        local://166 ��        local://167 �        local://168 ��        local://169 ��        local://170 ��        local://171 �        local://172 <�        local://173 e�        local://174 ��        local://175 ��        RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConcavePolygonShape2D       %                    ��      ��  �A  ��  �A  ��r�A�� �r�A�� �? AÁ��? AÁ��� A�� A�           RectangleShape2D       
      A  �@   ConcavePolygonShape2D       %                �A      �A      �A  �A  �A  �A� AY�A� AY�A   AЛ�@   AЛ�@M2=Л�@M2=Л�@           RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   ConcavePolygonShape2D       %                    �A      �A  �A  �A  �A  �A  �A� A  �A� AЛ�@Л�@Л�@Л�@Л�@M2=Л�@M2=           RectangleShape2D       
      A  �@   ConcavePolygonShape2D       %                    �A      �A  ��  �A  ��  �A�M�   A�M�   AЛ��   AЛ��   A   �M2�   �M2�           RectangleShape2D       
      A  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %        ~�      ��  ��      ��           ConcavePolygonShape2D       %   
                 �A      �A  BA  A  BA  A  �@  ��  �@  ��                           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %        ��      ��  �      ��           ConvexPolygonShape2D       %            �A          �@   �  GA  �A   ConvexPolygonShape2D       %        ��      �� ���      ��           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %            �A          �@  �=  NA  �A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     @@  �@   RectangleShape2D       
     @@  �@   RectangleShape2D       
      ?   A   RectangleShape2D       
      ?   A   RectangleShape2D       
     @@  �@   RectangleShape2D       
     @@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �?  �@   RectangleShape2D       
     @@   @   RectangleShape2D       
     �?  �@   RectangleShape2D       
     @@   @   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   ConvexPolygonShape2D       %        ��  �AD��.:�              �A   ConvexPolygonShape2D       %            �A        ]�@�.�=�EGA��~A   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   ConcavePolygonShape2D       %   
             ��      ��    ����*�������*���      ��      ��                           ConvexPolygonShape2D       %                    ��D�@��~�N�EA�.�=   ConcavePolygonShape2D       %   
                 ��      ��D��Y}�D��Y}�  ��      ��                               RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConcavePolygonShape2D       %   
           �EGA    �EGA    Tt�@*���Tt�@*���      ��      ��                           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   TileSet            cave_tileset                        	          
   
         ��                  �?  �?  �?  �?                �A  �A             
                        
                        
      A   �        �?       �  �?   A   �                              �?                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                         
         ��                  �?  �?  �?  �?         �A      �A  �A!          "   
           #          $   
           %          &   
      A   �'        �?       �  �?   A   �(            )          *        �?+                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ,          -          .             /          0   
         ��1          2        �?  �?  �?  �?3         B      �A  �A4          5   
           6          7   
           8          9   
      A   �:        �?       �  �?   A   �;            <          =        �?>                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ?          @          A             B          C   
         ��D          E        �?  �?  �?  �?F        @B      �A  �AG          H   
           I          J   
           K          L   
      A   �M        �?       �  �?   A   �N            O          P        �?Q                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           R          S          T             U          V   
         ��W          X        �?  �?  �?  �?Y        �B      �A  �AZ          [   
           \          ]   
           ^          _   
      A   �`        �?       �  �?   A   �a            b          c        �?d                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           e          f          g             h          i   
         ��j          k        �?  �?  �?  �?l            �A  �A  �Am          n   
           o          p   
           q          r   
      A   �s        �?       �  �?   A   �t            u          v        �?w                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           x          y          z             {          |   
         ��}          ~        �?  �?  �?  �?        �A  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                       shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�         B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��         	   �          �        �?�                     shape       	         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�        @B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��         
   �          �        �?�                     shape       
         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�        �B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�             B  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�        �A   B  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�         B   B  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �                         
         ��                �?  �?  �?  �?       @B   B  �A  �A           
                      
           	         
  
      A   �       �?       �  �?   A   �                           �?                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �B   B  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �                     !       �?"                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           #         $         %            &         '  
         ��(         )       �?  �?  �?  �?*           @B  �A  �A+         ,  
           -         .  
           /         0  
      A   �1       �?       �  �?   A   �2           3         4       �?5                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           6         7         8            9         :  
         ��;         <       �?  �?  �?  �?=       �A  @B  �A  �A>         ?  
           @         A  
           B         C  
      A   �D       �?       �  �?   A   �E           F         G       �?H                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           I         J         K            L         M  
         ��N         O       �?  �?  �?  �?P        B  @B  �A  �AQ         R  
           S         T  
           U         V  
      A   �W       �?       �  �?   A   �X           Y         Z       �?[                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           \         ]         ^            _         `  
         ��a         b       �?  �?  �?  �?c       @B  @B  �A  �Ad         e  
           f         g  
           h         i  
      A   �j       �?       �  �?   A   �k           l         m       �?n                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           o         p         q            r         s  
         ��t         u       �?  �?  �?  �?v       �B  @B  �A  �Aw         x  
           y         z  
           {         |  
      A   �}       �?       �  �?   A   �~                    �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
                       
      A   �       �?       �  �?   A   �                           �?                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                             	            
           
         ��                �?  �?  �?  �?        B  �B  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �                           �?                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                 �?  �?  �?  �?!       @B  �B  �A  �A"         #  
           $         %  
           &         '  
      A   �(       �?       �  �?   A   �)           *         +       �?,                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           -         .         /            0         1  
         ��2         3       �?  �?  �?  �?4       �B  �B  �A  �A5         6  
           7         8  
           9         :  
      A   �;       �?       �  �?   A   �<           =         >       �??                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           @         A         B            C         D  
         ��E         F       �?  �?  �?  �?G           �B  �A  �AH         I  
           J         K  
           L         M  
           N       �?       �  �?        O            P         Q       �?R                    shape                 shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           S         T         U            V         W  
         ��X         Y       �?  �?  �?  �?Z       �A  �B  �A  �A[         \  
           ]         ^  
           _         `  
      A  @�a       �?       �  �?   A  @�b        !   c         d       �?e                    shape       !         shape_transform      �?       �  �?   A  @�      one_way              one_way_margin      �?      autotile_coord 
           f         g         h            i         j  
         ��k         l       �?  �?  �?  �?m        B  �B  �A  �An         o  
           p         q  
           r         s  
         ��t       �?       �  �?      ��u        "   v         w       �?x                    shape       "         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           y         z         {            |         }  
         ��~                �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A  ���       �?       �  �?  @A  ���        #   �         �       �?�                    shape       #         shape_transform      �?       �  �?  @A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
     �@  ���       �?       �  �?  �@  ���        $   �         �       �?�                    shape       $         shape_transform      �?       �  �?  �@  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
     �@   ��       �?       �  �?  �@   ��        %   �         �       �?�                    shape       %         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A   ��       �?       �  �?  @A   ��        &   �         �       �?�                    shape       &         shape_transform      �?       �  �?  @A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A  @��       �?       �  �?  @A  @��        '   �         �       �?�                    shape       '         shape_transform      �?       �  �?  @A  @�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
     �@  @��       �?       �  �?  �@  @��        (   �         �       �?�                    shape       (         shape_transform      �?       �  �?  �@  @�      one_way              one_way_margin      �?      autotile_coord 
           �         �                                 
         ��                �?  �?  �?  �?            C  �A  �A           
                    	  
           
           
         ��       �?       �  �?      ��        )                   �?                    shape       )         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �A   C  �A  �A           
                      
                      
      A  ��       �?       �  �?   A  ��         *   !         "       �?#                    shape       *         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           $         %         &            '         (  
         ��)         *       �?  �?  �?  �?+        B   C  �A  �A,         -  
           .         /  
           0         1  
     �A  ��2       �?       �  �?  �A  ��3        +   4         5       �?6                    shape       +         shape_transform      �?       �  �?  �A  ��      one_way              one_way_margin      �?      autotile_coord 
           7         8         9            :         ;  
         ��<         =       �?  �?  �?  �?>       @B   C  �A  �A?         @  
           A         B  
           C         D  
      A  @�E       �?       �  �?   A  @�F        ,   G         H       �?I                    shape       ,         shape_transform      �?       �  �?   A  @�      one_way              one_way_margin      �?      autotile_coord 
           J         K         L            M         N  
         ��O         P       �?  �?  �?  �?Q       �B   C  �A  �AR         S  
           T         U  
           V         W  
     @A   �X       �?       �  �?  @A   �Y        -   Z         [       �?\                    shape       -         shape_transform      �?       �  �?  @A   �      one_way              one_way_margin      �?      autotile_coord 
           ]         ^         _            `         a  
         ��b         c       �?  �?  �?  �?d           C  �A  �Ae         f  
           g         h  
           i         j  
      A  ��k       �?       �  �?   A  ��l        .   m         n       �?o                    shape       .         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           p         q         r            s         t  
         ��u         v       �?  �?  �?  �?w       �A  C  �A  �Ax         y  
           z         {  
           |         }  
      A  ��~       �?       �  �?   A  ��        /   �         �       �?�                    shape       /         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  C  �A  �A�         �  
           �         �  
           �         �  
     �@   ��       �?       �  �?  �@   ��        0   �         �       �?�                    shape       0         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  C  �A  �A�         �  
           �         �  
           �         �  
     �@   ��       �?       �  �?  �@   ��        1   �         �       �?�                    shape       1         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  C  �A  �A�         �  
           �         �  
           �         �  
     @A   ��       �?       �  �?  @A   ��        2   �         �       �?�                    shape       2         shape_transform      �?       �  �?  @A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�            C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A   C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B   C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B   C  �A  �A�         �  
           �            
                      
                  �?          �?                                                     	         
                       
         ��                �?  �?  �?  �?       �B   C  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��          !       �?  �?  �?  �?"           0C  �A  �A#         $  
           %         &  
           '         (  
           )       �?          �?        *         +         ,         -         .         /         0            1         2  
         ��3         4       �?  �?  �?  �?5       �A  0C  �A  �A6         7  
           8         9  
           :         ;  
           <       �?          �?        =         >         ?         @         A         B         C            D         E  
         ��F         G       �?  �?  �?  �?H        B  0C  �A  �AI         J  
           K         L  
           M         N  
           O       �?          �?        P         Q         R         S         T         U         V            W         X  
         ��Y         Z       �?  �?  �?  �?[       @B  0C  �A  �A\         ]  
           ^         _  
           `         a  
           b       �?          �?        c         d         e         f         g         h         i            j         k  
         ��l         m       �?  �?  �?  �?n       �B  0C  �A  �Ao         p  
           q         r  
           s         t  
           u       �?          �?        v         w         x         y         z         {         |            }         ~  
         ��         �       �?  �?  �?  �?�           @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  @C  �A  �A�         �  
           �         �  
           �         �  
      A  @��       �?       �  �?   A  @��        3   �         �       �?�                    shape       3         shape_transform      �?       �  �?   A  @�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           PC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  PC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �                                          
         ��                �?  �?  �?  �?        B  PC  �A  �A           
           	         
  
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?       @B  PC  �A  �A           
                      
                      
                   �?          �?        !         "         #         $         %         &         '            (         )  
         ��*         +       �?  �?  �?  �?,       �B  PC  �A  �A-         .  
           /         0  
           1         2  
           3       �?          �?        4         5         6         7         8         9         :            ;         <  
         ��=         >       �?  �?  �?  �??           `C  �A  �A@         A  
           B         C  
           D         E  
           F       �?          �?        G         H         I         J         K         L         M            N         O  
         ��P         Q       �?  �?  �?  �?R       �A  `C  �A  �AS         T  
           U         V  
           W         X  
           Y       �?          �?        Z         [         \         ]         ^         _         `            a         b  
         ��c         d       �?  �?  �?  �?e        B  `C  �A  �Af         g  
           h         i  
           j         k  
           l       �?          �?        m         n         o         p         q         r         s            t         u  
         ��v         w       �?  �?  �?  �?x       @B  `C  �A  �Ay         z  
           {         |  
           }         ~  
                  �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  `C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
                       
                      
                  �?          �?                                            	         
                                
         ��                �?  �?  �?  �?       �A  �C  �A  �A           
                      
                      
                  �?          �?                                                                                      
         ��!         "       �?  �?  �?  �?#        B  �C  �A  �A$         %  
           &         '  
           (         )  
           *       �?          �?        +         ,         -         .         /         0         1            2         3  
         ��4         5       �?  �?  �?  �?6       @B  �C  �A  �A7         8  
           9         :  
           ;         <  
           =       �?          �?        >         ?         @         A         B         C         D            E         F  
         ��G         H       �?  �?  �?  �?I       �B  �C  �A  �AJ         K  
           L         M  
           N         O  
           P       �?          �?        Q         R         S         T         U         V         W            X         Y  
         ��Z         [       �?  �?  �?  �?\           �C  �A  �A]         ^  
           _         `  
           a         b  
           c       �?          �?        d         e         f         g         h         i         j            k         l  
         ��m         n       �?  �?  �?  �?o       �A  �C  �A  �Ap         q  
           r         s  
           t         u  
           v       �?          �?        w         x         y         z         {         |         }            ~           
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �                                                   
         ��                �?  �?  �?  �?       �B  �C  �A  �A         	  
           
           
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?           �C  �A  �A           
                      
                       
           !       �?          �?        "         #         $         %         &         '         (            )         *  
         ��+         ,       �?  �?  �?  �?-       �A  �C  �A  �A.         /  
           0         1  
           2         3  
           4       �?          �?        5         6         7         8         9         :         ;            <         =  
         ��>         ?       �?  �?  �?  �?@        B  �C  �A  �AA         B  
           C         D  
           E         F  
           G       �?          �?        H         I         J         K         L         M         N            O         P  
         ��Q         R       �?  �?  �?  �?S       @B  �C  �A  �AT         U  
           V         W  
           X         Y  
           Z       �?          �?        [         \         ]         ^         _         `         a            b         c  
         ��d         e       �?  �?  �?  �?f       �B  �C  �A  �Ag         h  
           i         j  
           k         l  
           m       �?          �?        n         o         p         q         r         s         t            u         v  
         ��w         x       �?  �?  �?  �?y           �C  �A  �Az         {  
           |         }  
           ~           
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�            
                      
                      
      A   �       �?       �  �?   A   �        4                   �?	                    shape       4         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           
                                         
         ��                �?  �?  �?  �?       @B  �C  �A  �A           
                      
                      
                  �?          �?                                                                                    !  
         ��"         #       �?  �?  �?  �?$       �B  �C  �A  �A%         &  
           '         (  
           )         *  
      A   �+       �?       �  �?   A   �,        5   -         .       �?/                    shape       5         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           0         1         2            3         4  
         ��5         6       �?  �?  �?  �?7           �C  �A  �A8         9  
           :         ;  
           <         =  
           >       �?          �?        ?         @         A         B         C         D         E            F         G  
         ��H         I       �?  �?  �?  �?J       �A  �C  �A  �AK         L  
           M         N  
           O         P  
      A   �Q       �?       �  �?   A   �R        6   S         T       �?U                    shape       6         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           V         W         X            Y         Z  
         ��[         \       �?  �?  �?  �?]        B  �C  �A  �A^         _  
           `         a  
           b         c  
           d       �?          �?        e         f         g         h         i         j         k            l         m  
         ��n         o       �?  �?  �?  �?p       @B  �C  �A  �Aq         r  
           s         t  
           u         v  
      A   �w       �?       �  �?   A   �x        7   y         z       �?{                    shape       7         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           |         }         ~                     �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        8   �         �       �?�                    shape       8         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        9   �         �       �?�                    shape       9         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        :   �         �       �?�                    shape       :         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        ;   �         �       �?�                    shape       ;         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �          	         	         	         	            	         	  
         ��	         	       �?  �?  �?  �?	       �A  �C  �A  �A		         
	  
           	         	  
           	         	  
           	       �?          �?        	         	         	         	         	         	         	            	         	  
         ��	         	       �?  �?  �?  �?	        B  �C  �A  �A	         	  
           	         	  
            	         !	  
           "	       �?          �?        #	         $	         %	         &	         '	         (	         )	            *	         +	  
         ��,	         -	       �?  �?  �?  �?.	       @B  �C  �A  �A/	         0	  
           1	         2	  
           3	         4	  
           5	       �?          �?        6	         7	         8	         9	         :	         ;	         <	            =	         >	  
         ��?	         @	       �?  �?  �?  �?A	       �B  �C  �A  �AB	         C	  
           D	         E	  
           F	         G	  
      A   �H	       �?       �  �?   A   �I	        <   J	         K	       �?L	                    shape       <         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           M	         N	         O	            P	         Q	  
         ��R	         S	       �?  �?  �?  �?T	           �C  �A  �AU	         V	  
           W	         X	  
           Y	         Z	  
      A   �[	       �?       �  �?   A   �\	        =   ]	         ^	       �?_	                    shape       =         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           `	         a	         b	            c	         d	  
         ��e	         f	       �?  �?  �?  �?g	       �A  �C  �A  �Ah	         i	  
           j	         k	  
           l	         m	  
      A   �n	       �?       �  �?   A   �o	        >   p	         q	       �?r	                    shape       >         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           s	         t	         u	            v	         w	  
         ��x	         y	       �?  �?  �?  �?z	        B  �C  �A  �A{	         |	  
           }	         ~	  
           	         �	  
      A   ��	       �?       �  �?   A   ��	        ?   �	         �	       �?�	                    shape       ?         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       @B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
      A   ��	       �?       �  �?   A   ��	        @   �	         �	       �?�	                    shape       @         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       �B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
      A   ��	       �?       �  �?   A   ��	        A   �	         �	       �?�	                    shape       A         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	           �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
     �A    �	       �?       �  �?  �A    �	        B   �	         �	       �?�	                    shape       B         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       �A  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
         ���	       �?       �  �?      ���	        C   �	         �	       �?�	                    shape       C         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	        B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?          �?        �	         �	         �	         �	         �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       @B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?          �?        �	         �	         �	         �	         �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       �B  �C  �A  �A 
         
  
           
         
  
           
         
  
      A   �
       �?       �  �?   A   �
        D   
         	
       �?

                    shape       D         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           
         
         
            
         
  
         ��
         
       �?  �?  �?  �?
           �C  �A  �A
         
  
           
         
  
           
         
  
      A   �
       �?       �  �?   A   �
        E   
         
       �?
                    shape       E         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           
         
          
            !
         "
  
         ��#
         $
       �?  �?  �?  �?%
       �A  �C  �A  �A&
         '
  
           (
         )
  
           *
         +
  
      A   �,
       �?       �  �?   A   �-
        F   .
         /
       �?0
                    shape       F         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           1
         2
         3
            4
         5
  
         ��6
         7
       �?  �?  �?  �?8
        B  �C  �A  �A9
         :
  
           ;
         <
  
           =
         >
  
           ?
       �?          �?        @
         A
         B
         C
         D
         E
         F
            G
         H
  
         ��I
         J
       �?  �?  �?  �?K
       @B  �C  �A  �AL
         M
  
           N
         O
  
           P
         Q
  
           R
       �?          �?        S
         T
         U
         V
         W
         X
         Y
            Z
         [
  
         ��\
         ]
       �?  �?  �?  �?^
       �B  �C  �A  �A_
         `
  
           a
         b
  
           c
         d
  
      A   �e
       �?       �  �?   A   �f
        G   g
         h
       �?i
                    shape       G         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           j
         k
         l
            m
         n
  
         ��o
         p
       �?  �?  �?  �?q
           �C  �A  �Ar
         s
  
           t
         u
  
           v
         w
  
           x
       �?          �?        y
         z
         {
         |
         }
         ~
         
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       �A  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
     �A    �
       �?       �  �?  �A    �
        H   �
         �
       �?�
                    shape       H         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
        B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
         ���
       �?       �  �?      ���
        I   �
         �
       �?�
                    shape       I         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       @B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?          �?        �
         �
         �
         �
         �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       �B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?          �?        �
         �
         �
         �
         �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
           �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
     �A    �
       �?       �  �?  �A    �
        J   �
         �
       �?�
                    shape       J         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       �A  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
      A   ��
       �?       �  �?   A   ��
        K   �
         �
       �?�
                    shape       K         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
        B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
      A   ��
       �?       �  �?   A   ��
        L   �
                 �?                    shape       L         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?	       @B  �C  �A  �A
           
                      
                      
         ��       �?       �  �?      ��        M                   �?                    shape       M         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �B  �C  �A  �A           
                       
           !         "  
           #       �?          �?        $         %         &         '         (         )         *            +         ,  
         ��-         .       �?  �?  �?  �?/           �C  �A  �A0         1  
           2         3  
           4         5  
      A   �6       �?       �  �?   A   �7        N   8         9       �?:                    shape       N         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ;         <         =            >         ?  
         ��@         A       �?  �?  �?  �?B       �A  �C  �A  �AC         D  
           E         F  
           G         H  
      A   �I       �?       �  �?   A   �J        O   K         L       �?M                    shape       O         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           N         O         P            Q         R  
         ��S         T       �?  �?  �?  �?U        B  �C  �A  �AV         W  
           X         Y  
           Z         [  
      A   �\       �?       �  �?   A   �]        P   ^         _       �?`                    shape       P         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           a         b         c            d         e  
         ��f         g       �?  �?  �?  �?h       @B  �C  �A  �Ai         j  
           k         l  
           m         n  
      A   �o       �?       �  �?   A   �p        Q   q         r       �?s                    shape       Q         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           t         u         v            w         x  
         ��y         z       �?  �?  �?  �?{       �B  �C  �A  �A|         }  
           ~           
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        R   �         �       �?�                    shape       R         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        S   �         �       �?�                    shape       S         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�            D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        T   �         �       �?�                    shape       T         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?        �A   D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        U   	         
       �?                    shape       U         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?        B   D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        V                   �?                    shape       V         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                              !            "         #  
         ��$         %       �?  �?  �?  �?&       @B   D  �A  �A'         (  
           )         *  
           +         ,  
      A   �-       �?       �  �?   A   �.        W   /         0       �?1                    shape       W         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           2         3         4            5         6  
         ��7         8       �?  �?  �?  �?9       �B   D  �A  �A:         ;  
           <         =  
           >         ?  
      A   �@       �?       �  �?   A   �A        X   B         C       �?D                    shape       X         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           E         F         G            H         I  
         ��J         K       �?  �?  �?  �?L           D  �A  �AM         N  
           O         P  
           Q         R  
      A   �S       �?       �  �?   A   �T        Y   U         V       �?W                    shape       Y         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           X         Y         Z            [         \  
         ��]         ^       �?  �?  �?  �?_       �A  D  �A  �A`         a  
           b         c  
           d         e  
      A   �f       �?       �  �?   A   �g        Z   h         i       �?j                    shape       Z         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           k         l         m            n         o  
         ��p         q       �?  �?  �?  �?r        B  D  �A  �As         t  
           u         v  
           w         x  
      A   �y       �?       �  �?   A   �z        [   {         |       �?}                    shape       [         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ~                  �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        \   �         �       �?�                    shape       \         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        ]   �         �       �?�                    shape       ]         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        ^   �         �       �?�                    shape       ^         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        _   �         �       �?�                    shape       _         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        `   �         �       �?�                    shape       `         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        a   �         �       �?�                    shape       a         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �                                                                              
         ��         	       �?  �?  �?  �?
           D  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?       �A  D  �A  �A           
                     !  
           "         #  
           $       �?          �?        %         &         '         (         )         *         +            ,         -  
         ��.         /       �?  �?  �?  �?0        B  D  �A  �A1         2  
           3         4  
           5         6  
           7       �?          �?        8         9         :         ;         <         =         >            ?         @  
         ��A         B       �?  �?  �?  �?C       @B  D  �A  �AD         E  
           F         G  
           H         I  
           J       �?          �?        K         L         M         N         O         P         Q            R         S  
         ��T         U       �?  �?  �?  �?V       �B  D  �A  �AW         X  
           Y         Z  
           [         \  
           ]       �?          �?        ^         _         `         a         b         c         d            e         f  
         ��g         h       �?  �?  �?  �?i           D  �A  �Aj         k  
           l         m  
           n         o  
           p       �?          �?        q         r         s         t         u         v         w            x         y  
         ��z         {       �?  �?  �?  �?|       �A  D  �A  �A}         ~  
                    �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���                 �?  �?  �?  �?       @B  D  �A  �A           
                      
                      
                  �?          �?        	         
                                                                    
         ��                �?  �?  �?  �?       �B  D  �A  �A           
                      
                      
                  �?          �?                                                      !         "            #         $  
         ��%         &       �?  �?  �?  �?'           D  �A  �A(         )  
           *         +  
           ,         -  
           .       �?          �?        /         0         1         2         3         4         5            6         7  
         ��8         9       �?  �?  �?  �?:       �A  D  �A  �A;         <  
           =         >  
           ?         @  
           A       �?          �?        B         C         D         E         F         G         H            I         J  
         ��K         L       �?  �?  �?  �?M        B  D  �A  �AN         O  
           P         Q  
           R         S  
           T       �?          �?        U         V         W         X         Y         Z         [            \         ]  
         ��^         _       �?  �?  �?  �?`       @B  D  �A  �Aa         b  
           c         d  
           e         f  
           g       �?          �?        h         i         j         k         l         m         n            o         p  
         ��q         r       �?  �?  �?  �?s       �B  D  �A  �At         u  
           v         w  
           x         y  
           z       �?          �?        {         |         }         ~                  �         �            �         �  
         ���         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        b   �         �       �?�                    shape       b         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        c   �         �       �?�                    shape       c         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�            D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        d   �         �       �?�                    shape       d         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A   D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   �         e                   �?                    shape       e         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��	         
       �?  �?  �?  �?        B   D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        f                   �?                    shape       f         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       @B   D  �A  �A            
           !         "  
           #         $  
           %       �?          �?        &         '         (         )         *         +         ,            -         .  
         ��/         0       �?  �?  �?  �?1       �B   D  �A  �A2         3  
           4         5  
           6         7  
           8       �?          �?        9         :         ;         <         =         >         ?            @         A  
         ��B         C       �?  �?  �?  �?D           $D  �A  �AE         F  
           G         H  
           I         J  
      A   �K       �?       �  �?   A   �L        g   M         N       �?O                    shape       g         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           P         Q         R            S         T  
         ��U         V       �?  �?  �?  �?W       �A  $D  �A  �AX         Y  
           Z         [  
           \         ]  
      A   �^       �?       �  �?   A   �_        h   `         a       �?b                    shape       h         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           c         d         e            f         g  
         ��h         i       �?  �?  �?  �?j        B  $D  �A  �Ak         l  
           m         n  
           o         p  
      A   �q       �?       �  �?   A   �r        i   s         t       �?u                    shape       i         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           v         w         x            y         z  
         ��{         |       �?  �?  �?  �?}       @B  $D  �A  �A~           
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        j   �         �       �?�                    shape       j         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  $D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        k   �         �       �?�                    shape       k         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        l   �         �       �?�                    shape       l         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        m   �         �       �?�                    shape       m         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        n   �         �       �?�                    shape       n         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        o   �         �       �?�                    shape       o         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        p   �         �       �?�                    shape       p         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ��                 �?  �?  �?  �?           ,D  �A  �A           
                      
                      
      A   �	       �?       �  �?   A   �
        q                   �?                    shape       q         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �A  ,D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        r                   �?                     shape       r         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           !         "         #            $         %  
         ��&         '       �?  �?  �?  �?(        B  ,D  �A  �A)         *  
           +         ,  
           -         .  
      A   �/       �?       �  �?   A   �0        s   1         2       �?3                    shape       s         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           4         5         6            7         8  
         ��9         :       �?  �?  �?  �?;       @B  ,D  �A  �A<         =  
           >         ?  
           @         A  
      A   �B       �?       �  �?   A   �C        t   D         E       �?F                    shape       t         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           G         H         I            J         K  
         ��L         M       �?  �?  �?  �?N       �B  ,D  �A  �AO         P  
           Q         R  
           S         T  
           U       �?          �?        V         W         X         Y         Z         [         \            ]         ^  
         ��_         `       �?  �?  �?  �?a           0D  �A  �Ab         c  
           d         e  
           f         g  
           h       �?          �?        i         j         k         l         m         n         o            p         q  
         ��r         s       �?  �?  �?  �?t       �A  0D  �A  �Au         v  
           w         x  
           y         z  
           {       �?          �?        |         }         ~                  �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  4D  �A  �A�         �  
           �         �  
           �         �  
                   �?          �?                                                                                   	  
         ��
                �?  �?  �?  �?       �B  4D  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?           8D  �A  �A          !  
           "         #  
           $         %  
           &       �?          �?        '         (         )         *         +         ,         -            .         /  
         ��0         1       �?  �?  �?  �?2       �A  8D  �A  �A3         4  
           5         6  
           7         8  
           9       �?          �?        :         ;         <         =         >         ?         @            A         B  
         ��C         D       �?  �?  �?  �?E        B  8D  �A  �AF         G  
           H         I  
           J         K  
           L       �?          �?        M         N         O         P         Q         R         S            T         U  
         ��V         W       �?  �?  �?  �?X       @B  8D  �A  �AY         Z  
           [         \  
           ]         ^  
      A   �_       �?       �  �?   A   �`        u   a         b       �?c                    shape       u         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           d         e         f            g         h  
         ��i         j       �?  �?  �?  �?k       �B  8D  �A  �Al         m  
           n         o  
           p         q  
      A   �r       �?       �  �?   A   �s        v   t         u       �?v                    shape       v         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           w         x         y            z         {  
         ��|         }       �?  �?  �?  �?~           <D  �A  �A         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        w   �         �       �?�                    shape       w         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        x   �         �       �?�                    shape       x         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        y   �         �       �?�                    shape       y         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        z   �         �       �?�                    shape       z         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        {   �         �       �?�                    shape       {         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           @D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        |   �         �       �?�                    shape       |         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  @D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        }   �         �       �?�                    shape       }         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �            
         ��                �?  �?  �?  �?        B  @D  �A  �A           
                      
                    	  
      A   �
       �?       �  �?   A   �        ~                   �?                    shape       ~         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       @B  @D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �                            �?!                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           "         #         $            %         &  
         ��'         (       �?  �?  �?  �?)       �B  @D  �A  �A*         +  
           ,         -  
           .         /  
      A   �0       �?       �  �?   A   �1        �   2         3       �?4                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           5         6         7            8         9  
         ��:         ;       �?  �?  �?  �?<           DD  �A  �A=         >  
           ?         @  
           A         B  
      A   �C       �?       �  �?   A   �D        �   E         F       �?G                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           H         I         J            K         L  
         ��M         N       �?  �?  �?  �?O       �A  DD  �A  �AP         Q  
           R         S  
           T         U  
      A   �V       �?       �  �?   A   �W        �   X         Y       �?Z                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           [         \         ]            ^         _  
         ��`         a       �?  �?  �?  �?b        B  DD  �A  �Ac         d  
           e         f  
           g         h  
      A   �i       �?       �  �?   A   �j        �   k         l       �?m                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           n         o         p            q         r  
         ��s         t       �?  �?  �?  �?u       @B  DD  �A  �Av         w  
           x         y  
           z         {  
           |       �?          �?        }         ~                  �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  DD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           HD  �A  �A�         �  
           �         �  
           �         �  
     PA  ���       �?       �  �?  PA  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  PA  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  HD  �A  �A�         �  
           �         �  
           �         �  
     @@  ���       �?       �  �?  @@  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @@  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           LD  �A  �A�         �  
           �         �  
           �            
     xA  ��       �?       �  �?  xA  ��        �                   �?                    shape       �         shape_transform      �?       �  �?  xA  ��      one_way              one_way_margin      �?      autotile_coord 
                                         	         
  
         ��                �?  �?  �?  �?       �A  LD  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?         B  LD  �A  �A!         "  
           #         $  
           %         &  
      ?   �'       �?       �  �?   ?   �(        �   )         *       �?+                    shape       �         shape_transform      �?       �  �?   ?   �      one_way              one_way_margin      �?      autotile_coord 
           ,         -         .            /         0  
         ��1         2       �?  �?  �?  �?3       @B  LD  �A  �A4         5  
           6         7  
           8         9  
           :       �?          �?        ;         <         =         >         ?         @         A            B         C  
         ��D         E       �?  �?  �?  �?F       �B  LD  �A  �AG         H  
           I         J  
           K         L  
           M       �?          �?        N         O         P         Q         R         S         T            U         V  
         ��W         X       �?  �?  �?  �?Y           PD  �A  �AZ         [  
           \         ]  
           ^         _  
     PA  0�`       �?       �  �?  PA  0�a        �   b         c       �?d                    shape       �         shape_transform      �?       �  �?  PA  0�      one_way              one_way_margin      �?      autotile_coord 
           e         f         g            h         i  
         ��j         k       �?  �?  �?  �?l       �A  PD  �A  �Am         n  
           o         p  
           q         r  
           s       �?          �?        t         u         v         w         x         y         z            {         |  
         ��}         ~       �?  �?  �?  �?        B  PD  �A  �A�         �  
           �         �  
           �         �  
     @@  0��       �?       �  �?  @@  0��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @@  0�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  PD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  PD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           TD  �A  �A�         �  
           �         �  
           �         �  
     @A  ���       �?       �  �?  @A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  TD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  TD  �A  �A�         �  
           �         �  
           �         �  
     �@  ���       �?       �  �?  �@  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �@  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  TD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �                        
         ��                �?  �?  �?  �?       �B  TD  �A  �A           
                      
           	         
  
      A   �       �?       �  �?   A   �        �                   �?                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?           XD  �A  �A           
                      
                      
     pA   �       �?       �  �?  pA   �        �             !       �?"                    shape       �         shape_transform      �?       �  �?  pA   �      one_way              one_way_margin      �?      autotile_coord 
                       shape       �         shape_transform      �?       �  �?  PA   �      one_way              one_way_margin      �?      autotile_coord 
           #         $         %            &         '  
         ��(         )       �?  �?  �?  �?*       �A  XD  �A  �A+         ,  
           -         .  
           /         0  
           1       �?          �?        2         3         4         5         6         7         8            9         :  
         ��;         <       �?  �?  �?  �?=        B  XD  �A  �A>         ?  
           @         A  
           B         C  
     �?   �D       �?       �  �?  �?   �E        �   F         G       �?H                    shape       �         shape_transform      �?       �  �?  �?   �      one_way              one_way_margin      �?      autotile_coord 
                       shape       �         shape_transform      �?       �  �?  @@   �      one_way              one_way_margin      �?      autotile_coord 
           I         J         K            L         M  
         ��N         O       �?  �?  �?  �?P       @B  XD  �A  �AQ         R  
           S         T  
           U         V  
      A   �W       �?       �  �?   A   �X        �   Y         Z       �?[                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           \         ]         ^            _         `  
         ��a         b       �?  �?  �?  �?c       �B  XD  �A  �Ad         e  
           f         g  
           h         i  
      A   �j       �?       �  �?   A   �k        �   l         m       �?n                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           o         p         q            r         s  
         ��t         u       �?  �?  �?  �?v           \D  �A  �Aw         x  
           y         z  
           {         |  
     @A  0�}       �?       �  �?  @A  0�~        �            �       �?�                    shape       �         shape_transform      �?       �  �?  @A  0�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  \D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  \D  �A  �A�         �  
           �         �  
           �         �  
     �@  0��       �?       �  �?  �@  0��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �@  0�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  \D  �A  �A�         �  
           �         �  
           �         �  
      A  ���       �?       �  �?   A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  \D  �A  �A�         �  
           �         �  
           �         �  
      A  ���       �?       �  �?   A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           `D  �A  �A�         �  
           �         �  
           �         �  
     �A  ���       �?       �  �?  �A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  `D  �A  �A�         �  
           �         �  
           �         �  
         ���       �?       �  �?      ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  `D  �A  �A�         �  
           �         �  
                       
     �@   �       �?       �  �?  �@   �        �                   �?                    shape       �         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
                             	            
           
         ��                �?  �?  �?  �?       @B  `D  �A  �A           
                      
                      
      A  0�       �?       �  �?   A  0�        �                   �?                    shape       �         shape_transform      �?       �  �?   A  0�      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                 �?  �?  �?  �?!       �B  `D  �A  �A"         #  
           $         %  
           &         '  
      A  0�(       �?       �  �?   A  0�)        �   *         +       �?,                    shape       �         shape_transform      �?       �  �?   A  0�      one_way              one_way_margin      �?      autotile_coord 
           -         .         /            0         1  
         ��2         3       �?  �?  �?  �?4           dD  �A  �A5         6  
           7         8  
           9         :  
      A   �;       �?       �  �?   A   �<        �   =         >       �??                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           @         A         B            C         D  
         ��E         F       �?  �?  �?  �?G       �A  dD  �A  �AH         I  
           J         K  
           L         M  
      A   �N       �?       �  �?   A   �O        �   P         Q       �?R                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           S         T         U            V         W  
         ��X         Y       �?  �?  �?  �?Z        B  dD  �A  �A[         \  
           ]         ^  
           _         `  
     �@   �a       �?       �  �?  �@   �b        �   c         d       �?e                    shape       �         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           f         g         h            i         j  
         ��k         l       �?  �?  �?  �?m       @B  dD  �A  �An         o  
           p         q  
           r         s  
     0A   �t       �?       �  �?  0A   �u        �   v         w       �?x                    shape       �         shape_transform      �?       �  �?  0A   �      one_way              one_way_margin      �?      autotile_coord 
           y         z         {            |         }  
         ��~                �?  �?  �?  �?�       �B  dD  �A  �A�         �  
           �         �  
           �         �  
     0A   ��       �?       �  �?  0A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  0A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  hD  �A  �A�         �  
           �         �  
           �         �  
     �A    �       �?       �  �?  �A    �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?       �  �?        �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           lD  �A  �A�         �  
           �         �  
           �         �  
     �A    �       �?       �  �?  �A    �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �         �                                 
         ��                �?  �?  �?  �?       �A  lD  �A  �A           
                    	  
           
           
      A   �       �?       �  �?   A   �        �                   �?                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?        B  lD  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �         �   !         "       �?#                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           $         %         &            '         (  
         ��)         *       �?  �?  �?  �?+       @B  lD  �A  �A,         -  
           .         /  
           0         1  
           2       �?       �  �?        3        �   4         5       �?6                    shape       �         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           7         8         9            :         ;  
         ��<         =       �?  �?  �?  �?>       �B  lD  �A  �A?         @  
           A         B  
           C         D  
           E       �?          �?        F         G         H         I         J         K         L            M         N  
         ��O         P       �?  �?  �?  �?Q           pD  �A  �AR         S  
           T         U  
           V         W  
      A   �X       �?       �  �?   A   �Y        �   Z         [       �?\                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ]         ^         _            `         a  
         ��b         c       �?  �?  �?  �?d       �A  pD  �A  �Ae         f  
           g         h  
           i         j  
      A   �k       �?       �  �?   A   �l        �   m         n       �?o                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           p         q         r            s         t  
         ��u         v       �?  �?  �?  �?w        B  pD  �A  �Ax         y  
           z         {  
           |         }  
      A   �~       �?       �  �?   A   �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  pD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  pD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           tD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  tD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  tD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  tD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  tD  �A  �A�         �  
           �            
                      
                  �?          �?                                                     	     	         imageheight    �        imagewidth    P         name       cave_tileset    
   tilecount    6        tiledversion       1.4.3       tileheight          
   tilewidth             version    33�?   
   tile_meta    �                     height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width           	               height              visible             width           
               height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                           height              visible             width           !               height              visible             width           "               height              visible             width           #               height              visible             width           $               height              visible             width           &               height              visible             width           '               height              visible             width           (               height              visible             width           )               height              visible             width           *               height              visible             width           +               height              visible             width           ,               height              visible             width           -               height              visible             width           .               height              visible             width           /               height              visible             width           0               height              visible             width           1               height              visible             width           2               height              visible             width           @               height              visible             width           l               height              visible             width           n               height              visible             width           p               height              visible             width           r               height              visible             width           s               height              visible             width           u               height              visible             width           w               height              visible             width           x               height              visible             width           }               height              visible             width           ~               height              visible             width                          height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width                          height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width           
              height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                          height              visible             width           !              height              visible             width           "              height              visible             width           $              height              visible             width           %              height              visible             width           (              height              visible             width           )              height              visible             width           *              height              visible             width           +              height              visible             width           -              height              visible             width           .              height              visible             width           /              height              visible             width           0              height              visible             width           3              height              visible             width           4              height              visible             width           PackedScene    
     	         names "         cave 	   __meta__    Node2D    floor 	   position    z_index 	   tile_set 
   cell_size    cell_tile_origin    cell_y_sort    cell_clip_uv    collision_layer    collision_mask    format 
   tile_data    TileMap    wall 	   Stalfaux    script    KinematicBody2D 
   Stalfaux2    Player    health    speed    damage 
   Stalfaux3    	   variants          	         height    x      	   infinite              orientation       orthogonal       tiledversion       1.4.3       tileheight          
   tilewidth             type       map       version    33�?      width    ~   
         �A   ����      �   
     �A  �A                            3    G       	  H       
  H         H         H         H         H         I         L       	  M       
  M         M         M         M         M         O         H         I         G         P       	  M       
  M         M         M         M         M         M         M         O         I         G         P         M       	  M       
  M         M         M         M         M         M         M         M         O         H         H         I         G         H         P         M         M       	  M       
  M         M         M         M         M         M         M         M         M         M         M         O         I         G         H         P         M         M         M         M       	  M       
  M         M         M         M         M         M         M         M         M         M         M         M         N         L         M         M         M         M         M         M       	  M       
  M         M         M         M         M         M         M         M         M         M         M         M         N        	 L        	 M        	 M        	 M        	 M        	 M        	 M       	 	 M       
 	 M        	 M        	 M        	 M        	 M        	 M        	 M        	 M        	 M        	 M        	 J        	 R        	 S        
 L        
 M        
 M        
 M        
 M        
 M        
 M       	 
 M       
 
 M        
 M        
 M        
 M        
 M        
 M        
 M        
 M        
 J        
 R        
 S         L         M         M         M         M         M         M       	  M       
  M         M         M         M         M         M         M         M         N         L         M         M         M         M         M         M       	  M       
  M         M         M         M         M         M         M         J         S         L         M         M         M         M         M         M       	  M       
  M         M         M         M         M         M         J         S         L         M         M         M         M         M         M       	  M       
  M         M         M         M         M         J         S         L         M         M         M         M         M         M       	  M       
  M         M         M         M         M         N         Q         K         M         M         M         M         M       	  M       
  M         M         M         M         M         N         Q         K         M         M         M         M       	  M       
  M         M         M         M         M         N         Q         R         K         M         M       	  M       
  M         M         M         J         R         S         Q         R         R       	  R       
  R         R         R         S                   height    x         name       floor       type    
   tilelayer       width    ~       0                                	          
                                                                                                           	         
                                                                 	                                    
                                             	                           
                                             	                                                      
                                                               	                                     
                                                                                                                                                                                              	                                                                                                                                                                       	         	         	         	         	         	         	         	          	          
         
         
         
         
 
        
                                               
                                                                                                                                                                                                                                    
                                                                                !         "         #         $                                              	         
                                      
                                                                       !                            
                                      
                         !         "         #                                                                                                     !                     	                                                                                                              	                                                                                                                              	                                             
                                                                                           	                                  	         
                                      
                                                                                                                                                                                   	         
                                                                  height    x         name       wall       type    
   tilelayer       width    ~            
     �C  �B         
     �B  C         
     8C  8C              @@     �B       
     (C  �C      node_count             nodes     y   ��������       ����                            ����                                 	      
                           	      
                     ����                                 	      
                                                                                                                                                                                                                conn_count              conns               node_paths              editable_instances              version       RSRC [remap]

importer="vnen.tiled_importer"
type="PackedScene"
path="res://.import/cave.tmx-e31e4a9a79d42a60a277d3e5ba4cef6a.scn"

[deps]

source_file="res://game/maps/cave.tmx"
dest_files=[ "res://.import/cave.tmx-e31e4a9a79d42a60a277d3e5ba4cef6a.scn" ]

[params]

custom_properties=true
tile_metadata=true
uv_clip=true
image_flags=3
collision_layer=1
embed_internal_images=false
save_tiled_properties=true
add_background=true
post_import_script="res://engine/tiled.gd"
             RSRC                    PackedScene                                                                      resource_local_to_scene    resource_name    custom_solver_bias    extents    script 	   segments    points    1/name 
   1/texture    1/normal_map    1/tex_offset    1/material    1/modulate 	   1/region    1/tile_mode    1/occluder_offset    1/occluder    1/navigation_offset    1/navigation    1/shape_offset    1/shape_transform    1/shape    1/shape_one_way    1/shape_one_way_margin 	   1/shapes 
   1/z_index    2/name 
   2/texture    2/normal_map    2/tex_offset    2/material    2/modulate 	   2/region    2/tile_mode    2/occluder_offset    2/occluder    2/navigation_offset    2/navigation    2/shape_offset    2/shape_transform    2/shape    2/shape_one_way    2/shape_one_way_margin 	   2/shapes 
   2/z_index    3/name 
   3/texture    3/normal_map    3/tex_offset    3/material    3/modulate 	   3/region    3/tile_mode    3/occluder_offset    3/occluder    3/navigation_offset    3/navigation    3/shape_offset    3/shape_transform    3/shape    3/shape_one_way    3/shape_one_way_margin 	   3/shapes 
   3/z_index    4/name 
   4/texture    4/normal_map    4/tex_offset    4/material    4/modulate 	   4/region    4/tile_mode    4/occluder_offset    4/occluder    4/navigation_offset    4/navigation    4/shape_offset    4/shape_transform    4/shape    4/shape_one_way    4/shape_one_way_margin 	   4/shapes 
   4/z_index    5/name 
   5/texture    5/normal_map    5/tex_offset    5/material    5/modulate 	   5/region    5/tile_mode    5/occluder_offset    5/occluder    5/navigation_offset    5/navigation    5/shape_offset    5/shape_transform    5/shape    5/shape_one_way    5/shape_one_way_margin 	   5/shapes 
   5/z_index    6/name 
   6/texture    6/normal_map    6/tex_offset    6/material    6/modulate 	   6/region    6/tile_mode    6/occluder_offset    6/occluder    6/navigation_offset    6/navigation    6/shape_offset    6/shape_transform    6/shape    6/shape_one_way    6/shape_one_way_margin 	   6/shapes 
   6/z_index    7/name 
   7/texture    7/normal_map    7/tex_offset    7/material    7/modulate 	   7/region    7/tile_mode    7/occluder_offset    7/occluder    7/navigation_offset    7/navigation    7/shape_offset    7/shape_transform    7/shape    7/shape_one_way    7/shape_one_way_margin 	   7/shapes 
   7/z_index    8/name 
   8/texture    8/normal_map    8/tex_offset    8/material    8/modulate 	   8/region    8/tile_mode    8/occluder_offset    8/occluder    8/navigation_offset    8/navigation    8/shape_offset    8/shape_transform    8/shape    8/shape_one_way    8/shape_one_way_margin 	   8/shapes 
   8/z_index    9/name 
   9/texture    9/normal_map    9/tex_offset    9/material    9/modulate 	   9/region    9/tile_mode    9/occluder_offset    9/occluder    9/navigation_offset    9/navigation    9/shape_offset    9/shape_transform    9/shape    9/shape_one_way    9/shape_one_way_margin 	   9/shapes 
   9/z_index    10/name    10/texture    10/normal_map    10/tex_offset    10/material    10/modulate 
   10/region    10/tile_mode    10/occluder_offset    10/occluder    10/navigation_offset    10/navigation    10/shape_offset    10/shape_transform 	   10/shape    10/shape_one_way    10/shape_one_way_margin 
   10/shapes    10/z_index    11/name    11/texture    11/normal_map    11/tex_offset    11/material    11/modulate 
   11/region    11/tile_mode    11/occluder_offset    11/occluder    11/navigation_offset    11/navigation    11/shape_offset    11/shape_transform 	   11/shape    11/shape_one_way    11/shape_one_way_margin 
   11/shapes    11/z_index    12/name    12/texture    12/normal_map    12/tex_offset    12/material    12/modulate 
   12/region    12/tile_mode    12/occluder_offset    12/occluder    12/navigation_offset    12/navigation    12/shape_offset    12/shape_transform 	   12/shape    12/shape_one_way    12/shape_one_way_margin 
   12/shapes    12/z_index    13/name    13/texture    13/normal_map    13/tex_offset    13/material    13/modulate 
   13/region    13/tile_mode    13/occluder_offset    13/occluder    13/navigation_offset    13/navigation    13/shape_offset    13/shape_transform 	   13/shape    13/shape_one_way    13/shape_one_way_margin 
   13/shapes    13/z_index    14/name    14/texture    14/normal_map    14/tex_offset    14/material    14/modulate 
   14/region    14/tile_mode    14/occluder_offset    14/occluder    14/navigation_offset    14/navigation    14/shape_offset    14/shape_transform 	   14/shape    14/shape_one_way    14/shape_one_way_margin 
   14/shapes    14/z_index    15/name    15/texture    15/normal_map    15/tex_offset    15/material    15/modulate 
   15/region    15/tile_mode    15/occluder_offset    15/occluder    15/navigation_offset    15/navigation    15/shape_offset    15/shape_transform 	   15/shape    15/shape_one_way    15/shape_one_way_margin 
   15/shapes    15/z_index    16/name    16/texture    16/normal_map    16/tex_offset    16/material    16/modulate 
   16/region    16/tile_mode    16/occluder_offset    16/occluder    16/navigation_offset    16/navigation    16/shape_offset    16/shape_transform 	   16/shape    16/shape_one_way    16/shape_one_way_margin 
   16/shapes    16/z_index    17/name    17/texture    17/normal_map    17/tex_offset    17/material    17/modulate 
   17/region    17/tile_mode    17/occluder_offset    17/occluder    17/navigation_offset    17/navigation    17/shape_offset    17/shape_transform 	   17/shape    17/shape_one_way    17/shape_one_way_margin 
   17/shapes    17/z_index    18/name    18/texture    18/normal_map    18/tex_offset    18/material    18/modulate 
   18/region    18/tile_mode    18/occluder_offset    18/occluder    18/navigation_offset    18/navigation    18/shape_offset    18/shape_transform 	   18/shape    18/shape_one_way    18/shape_one_way_margin 
   18/shapes    18/z_index    19/name    19/texture    19/normal_map    19/tex_offset    19/material    19/modulate 
   19/region    19/tile_mode    19/occluder_offset    19/occluder    19/navigation_offset    19/navigation    19/shape_offset    19/shape_transform 	   19/shape    19/shape_one_way    19/shape_one_way_margin 
   19/shapes    19/z_index    20/name    20/texture    20/normal_map    20/tex_offset    20/material    20/modulate 
   20/region    20/tile_mode    20/occluder_offset    20/occluder    20/navigation_offset    20/navigation    20/shape_offset    20/shape_transform 	   20/shape    20/shape_one_way    20/shape_one_way_margin 
   20/shapes    20/z_index    21/name    21/texture    21/normal_map    21/tex_offset    21/material    21/modulate 
   21/region    21/tile_mode    21/occluder_offset    21/occluder    21/navigation_offset    21/navigation    21/shape_offset    21/shape_transform 	   21/shape    21/shape_one_way    21/shape_one_way_margin 
   21/shapes    21/z_index    22/name    22/texture    22/normal_map    22/tex_offset    22/material    22/modulate 
   22/region    22/tile_mode    22/occluder_offset    22/occluder    22/navigation_offset    22/navigation    22/shape_offset    22/shape_transform 	   22/shape    22/shape_one_way    22/shape_one_way_margin 
   22/shapes    22/z_index    23/name    23/texture    23/normal_map    23/tex_offset    23/material    23/modulate 
   23/region    23/tile_mode    23/occluder_offset    23/occluder    23/navigation_offset    23/navigation    23/shape_offset    23/shape_transform 	   23/shape    23/shape_one_way    23/shape_one_way_margin 
   23/shapes    23/z_index    24/name    24/texture    24/normal_map    24/tex_offset    24/material    24/modulate 
   24/region    24/tile_mode    24/occluder_offset    24/occluder    24/navigation_offset    24/navigation    24/shape_offset    24/shape_transform 	   24/shape    24/shape_one_way    24/shape_one_way_margin 
   24/shapes    24/z_index    25/name    25/texture    25/normal_map    25/tex_offset    25/material    25/modulate 
   25/region    25/tile_mode    25/occluder_offset    25/occluder    25/navigation_offset    25/navigation    25/shape_offset    25/shape_transform 	   25/shape    25/shape_one_way    25/shape_one_way_margin 
   25/shapes    25/z_index    26/name    26/texture    26/normal_map    26/tex_offset    26/material    26/modulate 
   26/region    26/tile_mode    26/occluder_offset    26/occluder    26/navigation_offset    26/navigation    26/shape_offset    26/shape_transform 	   26/shape    26/shape_one_way    26/shape_one_way_margin 
   26/shapes    26/z_index    27/name    27/texture    27/normal_map    27/tex_offset    27/material    27/modulate 
   27/region    27/tile_mode    27/occluder_offset    27/occluder    27/navigation_offset    27/navigation    27/shape_offset    27/shape_transform 	   27/shape    27/shape_one_way    27/shape_one_way_margin 
   27/shapes    27/z_index    28/name    28/texture    28/normal_map    28/tex_offset    28/material    28/modulate 
   28/region    28/tile_mode    28/occluder_offset    28/occluder    28/navigation_offset    28/navigation    28/shape_offset    28/shape_transform 	   28/shape    28/shape_one_way    28/shape_one_way_margin 
   28/shapes    28/z_index    29/name    29/texture    29/normal_map    29/tex_offset    29/material    29/modulate 
   29/region    29/tile_mode    29/occluder_offset    29/occluder    29/navigation_offset    29/navigation    29/shape_offset    29/shape_transform 	   29/shape    29/shape_one_way    29/shape_one_way_margin 
   29/shapes    29/z_index    30/name    30/texture    30/normal_map    30/tex_offset    30/material    30/modulate 
   30/region    30/tile_mode    30/occluder_offset    30/occluder    30/navigation_offset    30/navigation    30/shape_offset    30/shape_transform 	   30/shape    30/shape_one_way    30/shape_one_way_margin 
   30/shapes    30/z_index    31/name    31/texture    31/normal_map    31/tex_offset    31/material    31/modulate 
   31/region    31/tile_mode    31/occluder_offset    31/occluder    31/navigation_offset    31/navigation    31/shape_offset    31/shape_transform 	   31/shape    31/shape_one_way    31/shape_one_way_margin 
   31/shapes    31/z_index    32/name    32/texture    32/normal_map    32/tex_offset    32/material    32/modulate 
   32/region    32/tile_mode    32/occluder_offset    32/occluder    32/navigation_offset    32/navigation    32/shape_offset    32/shape_transform 	   32/shape    32/shape_one_way    32/shape_one_way_margin 
   32/shapes    32/z_index    33/name    33/texture    33/normal_map    33/tex_offset    33/material    33/modulate 
   33/region    33/tile_mode    33/occluder_offset    33/occluder    33/navigation_offset    33/navigation    33/shape_offset    33/shape_transform 	   33/shape    33/shape_one_way    33/shape_one_way_margin 
   33/shapes    33/z_index    34/name    34/texture    34/normal_map    34/tex_offset    34/material    34/modulate 
   34/region    34/tile_mode    34/occluder_offset    34/occluder    34/navigation_offset    34/navigation    34/shape_offset    34/shape_transform 	   34/shape    34/shape_one_way    34/shape_one_way_margin 
   34/shapes    34/z_index    35/name    35/texture    35/normal_map    35/tex_offset    35/material    35/modulate 
   35/region    35/tile_mode    35/occluder_offset    35/occluder    35/navigation_offset    35/navigation    35/shape_offset    35/shape_transform 	   35/shape    35/shape_one_way    35/shape_one_way_margin 
   35/shapes    35/z_index    36/name    36/texture    36/normal_map    36/tex_offset    36/material    36/modulate 
   36/region    36/tile_mode    36/occluder_offset    36/occluder    36/navigation_offset    36/navigation    36/shape_offset    36/shape_transform 	   36/shape    36/shape_one_way    36/shape_one_way_margin 
   36/shapes    36/z_index    37/name    37/texture    37/normal_map    37/tex_offset    37/material    37/modulate 
   37/region    37/tile_mode    37/occluder_offset    37/occluder    37/navigation_offset    37/navigation    37/shape_offset    37/shape_transform 	   37/shape    37/shape_one_way    37/shape_one_way_margin 
   37/shapes    37/z_index    38/name    38/texture    38/normal_map    38/tex_offset    38/material    38/modulate 
   38/region    38/tile_mode    38/occluder_offset    38/occluder    38/navigation_offset    38/navigation    38/shape_offset    38/shape_transform 	   38/shape    38/shape_one_way    38/shape_one_way_margin 
   38/shapes    38/z_index    39/name    39/texture    39/normal_map    39/tex_offset    39/material    39/modulate 
   39/region    39/tile_mode    39/occluder_offset    39/occluder    39/navigation_offset    39/navigation    39/shape_offset    39/shape_transform 	   39/shape    39/shape_one_way    39/shape_one_way_margin 
   39/shapes    39/z_index    40/name    40/texture    40/normal_map    40/tex_offset    40/material    40/modulate 
   40/region    40/tile_mode    40/occluder_offset    40/occluder    40/navigation_offset    40/navigation    40/shape_offset    40/shape_transform 	   40/shape    40/shape_one_way    40/shape_one_way_margin 
   40/shapes    40/z_index    41/name    41/texture    41/normal_map    41/tex_offset    41/material    41/modulate 
   41/region    41/tile_mode    41/occluder_offset    41/occluder    41/navigation_offset    41/navigation    41/shape_offset    41/shape_transform 	   41/shape    41/shape_one_way    41/shape_one_way_margin 
   41/shapes    41/z_index    42/name    42/texture    42/normal_map    42/tex_offset    42/material    42/modulate 
   42/region    42/tile_mode    42/occluder_offset    42/occluder    42/navigation_offset    42/navigation    42/shape_offset    42/shape_transform 	   42/shape    42/shape_one_way    42/shape_one_way_margin 
   42/shapes    42/z_index    43/name    43/texture    43/normal_map    43/tex_offset    43/material    43/modulate 
   43/region    43/tile_mode    43/occluder_offset    43/occluder    43/navigation_offset    43/navigation    43/shape_offset    43/shape_transform 	   43/shape    43/shape_one_way    43/shape_one_way_margin 
   43/shapes    43/z_index    44/name    44/texture    44/normal_map    44/tex_offset    44/material    44/modulate 
   44/region    44/tile_mode    44/occluder_offset    44/occluder    44/navigation_offset    44/navigation    44/shape_offset    44/shape_transform 	   44/shape    44/shape_one_way    44/shape_one_way_margin 
   44/shapes    44/z_index    45/name    45/texture    45/normal_map    45/tex_offset    45/material    45/modulate 
   45/region    45/tile_mode    45/occluder_offset    45/occluder    45/navigation_offset    45/navigation    45/shape_offset    45/shape_transform 	   45/shape    45/shape_one_way    45/shape_one_way_margin 
   45/shapes    45/z_index    46/name    46/texture    46/normal_map    46/tex_offset    46/material    46/modulate 
   46/region    46/tile_mode    46/occluder_offset    46/occluder    46/navigation_offset    46/navigation    46/shape_offset    46/shape_transform 	   46/shape    46/shape_one_way    46/shape_one_way_margin 
   46/shapes    46/z_index    47/name    47/texture    47/normal_map    47/tex_offset    47/material    47/modulate 
   47/region    47/tile_mode    47/occluder_offset    47/occluder    47/navigation_offset    47/navigation    47/shape_offset    47/shape_transform 	   47/shape    47/shape_one_way    47/shape_one_way_margin 
   47/shapes    47/z_index    48/name    48/texture    48/normal_map    48/tex_offset    48/material    48/modulate 
   48/region    48/tile_mode    48/occluder_offset    48/occluder    48/navigation_offset    48/navigation    48/shape_offset    48/shape_transform 	   48/shape    48/shape_one_way    48/shape_one_way_margin 
   48/shapes    48/z_index    49/name    49/texture    49/normal_map    49/tex_offset    49/material    49/modulate 
   49/region    49/tile_mode    49/occluder_offset    49/occluder    49/navigation_offset    49/navigation    49/shape_offset    49/shape_transform 	   49/shape    49/shape_one_way    49/shape_one_way_margin 
   49/shapes    49/z_index    50/name    50/texture    50/normal_map    50/tex_offset    50/material    50/modulate 
   50/region    50/tile_mode    50/occluder_offset    50/occluder    50/navigation_offset    50/navigation    50/shape_offset    50/shape_transform 	   50/shape    50/shape_one_way    50/shape_one_way_margin 
   50/shapes    50/z_index    51/name    51/texture    51/normal_map    51/tex_offset    51/material    51/modulate 
   51/region    51/tile_mode    51/occluder_offset    51/occluder    51/navigation_offset    51/navigation    51/shape_offset    51/shape_transform 	   51/shape    51/shape_one_way    51/shape_one_way_margin 
   51/shapes    51/z_index    52/name    52/texture    52/normal_map    52/tex_offset    52/material    52/modulate 
   52/region    52/tile_mode    52/occluder_offset    52/occluder    52/navigation_offset    52/navigation    52/shape_offset    52/shape_transform 	   52/shape    52/shape_one_way    52/shape_one_way_margin 
   52/shapes    52/z_index    53/name    53/texture    53/normal_map    53/tex_offset    53/material    53/modulate 
   53/region    53/tile_mode    53/occluder_offset    53/occluder    53/navigation_offset    53/navigation    53/shape_offset    53/shape_transform 	   53/shape    53/shape_one_way    53/shape_one_way_margin 
   53/shapes    53/z_index    54/name    54/texture    54/normal_map    54/tex_offset    54/material    54/modulate 
   54/region    54/tile_mode    54/occluder_offset    54/occluder    54/navigation_offset    54/navigation    54/shape_offset    54/shape_transform 	   54/shape    54/shape_one_way    54/shape_one_way_margin 
   54/shapes    54/z_index    55/name    55/texture    55/normal_map    55/tex_offset    55/material    55/modulate 
   55/region    55/tile_mode    55/occluder_offset    55/occluder    55/navigation_offset    55/navigation    55/shape_offset    55/shape_transform 	   55/shape    55/shape_one_way    55/shape_one_way_margin 
   55/shapes    55/z_index    56/name    56/texture    56/normal_map    56/tex_offset    56/material    56/modulate 
   56/region    56/tile_mode    56/occluder_offset    56/occluder    56/navigation_offset    56/navigation    56/shape_offset    56/shape_transform 	   56/shape    56/shape_one_way    56/shape_one_way_margin 
   56/shapes    56/z_index    57/name    57/texture    57/normal_map    57/tex_offset    57/material    57/modulate 
   57/region    57/tile_mode    57/occluder_offset    57/occluder    57/navigation_offset    57/navigation    57/shape_offset    57/shape_transform 	   57/shape    57/shape_one_way    57/shape_one_way_margin 
   57/shapes    57/z_index    58/name    58/texture    58/normal_map    58/tex_offset    58/material    58/modulate 
   58/region    58/tile_mode    58/occluder_offset    58/occluder    58/navigation_offset    58/navigation    58/shape_offset    58/shape_transform 	   58/shape    58/shape_one_way    58/shape_one_way_margin 
   58/shapes    58/z_index    59/name    59/texture    59/normal_map    59/tex_offset    59/material    59/modulate 
   59/region    59/tile_mode    59/occluder_offset    59/occluder    59/navigation_offset    59/navigation    59/shape_offset    59/shape_transform 	   59/shape    59/shape_one_way    59/shape_one_way_margin 
   59/shapes    59/z_index    60/name    60/texture    60/normal_map    60/tex_offset    60/material    60/modulate 
   60/region    60/tile_mode    60/occluder_offset    60/occluder    60/navigation_offset    60/navigation    60/shape_offset    60/shape_transform 	   60/shape    60/shape_one_way    60/shape_one_way_margin 
   60/shapes    60/z_index    61/name    61/texture    61/normal_map    61/tex_offset    61/material    61/modulate 
   61/region    61/tile_mode    61/occluder_offset    61/occluder    61/navigation_offset    61/navigation    61/shape_offset    61/shape_transform 	   61/shape    61/shape_one_way    61/shape_one_way_margin 
   61/shapes    61/z_index    62/name    62/texture    62/normal_map    62/tex_offset    62/material    62/modulate 
   62/region    62/tile_mode    62/occluder_offset    62/occluder    62/navigation_offset    62/navigation    62/shape_offset    62/shape_transform 	   62/shape    62/shape_one_way    62/shape_one_way_margin 
   62/shapes    62/z_index    63/name    63/texture    63/normal_map    63/tex_offset    63/material    63/modulate 
   63/region    63/tile_mode    63/occluder_offset    63/occluder    63/navigation_offset    63/navigation    63/shape_offset    63/shape_transform 	   63/shape    63/shape_one_way    63/shape_one_way_margin 
   63/shapes    63/z_index    64/name    64/texture    64/normal_map    64/tex_offset    64/material    64/modulate 
   64/region    64/tile_mode    64/occluder_offset    64/occluder    64/navigation_offset    64/navigation    64/shape_offset    64/shape_transform 	   64/shape    64/shape_one_way    64/shape_one_way_margin 
   64/shapes    64/z_index    65/name    65/texture    65/normal_map    65/tex_offset    65/material    65/modulate 
   65/region    65/tile_mode    65/occluder_offset    65/occluder    65/navigation_offset    65/navigation    65/shape_offset    65/shape_transform 	   65/shape    65/shape_one_way    65/shape_one_way_margin 
   65/shapes    65/z_index    66/name    66/texture    66/normal_map    66/tex_offset    66/material    66/modulate 
   66/region    66/tile_mode    66/occluder_offset    66/occluder    66/navigation_offset    66/navigation    66/shape_offset    66/shape_transform 	   66/shape    66/shape_one_way    66/shape_one_way_margin 
   66/shapes    66/z_index    67/name    67/texture    67/normal_map    67/tex_offset    67/material    67/modulate 
   67/region    67/tile_mode    67/occluder_offset    67/occluder    67/navigation_offset    67/navigation    67/shape_offset    67/shape_transform 	   67/shape    67/shape_one_way    67/shape_one_way_margin 
   67/shapes    67/z_index    68/name    68/texture    68/normal_map    68/tex_offset    68/material    68/modulate 
   68/region    68/tile_mode    68/occluder_offset    68/occluder    68/navigation_offset    68/navigation    68/shape_offset    68/shape_transform 	   68/shape    68/shape_one_way    68/shape_one_way_margin 
   68/shapes    68/z_index    69/name    69/texture    69/normal_map    69/tex_offset    69/material    69/modulate 
   69/region    69/tile_mode    69/occluder_offset    69/occluder    69/navigation_offset    69/navigation    69/shape_offset    69/shape_transform 	   69/shape    69/shape_one_way    69/shape_one_way_margin 
   69/shapes    69/z_index    70/name    70/texture    70/normal_map    70/tex_offset    70/material    70/modulate 
   70/region    70/tile_mode    70/occluder_offset    70/occluder    70/navigation_offset    70/navigation    70/shape_offset    70/shape_transform 	   70/shape    70/shape_one_way    70/shape_one_way_margin 
   70/shapes    70/z_index    71/name    71/texture    71/normal_map    71/tex_offset    71/material    71/modulate 
   71/region    71/tile_mode    71/occluder_offset    71/occluder    71/navigation_offset    71/navigation    71/shape_offset    71/shape_transform 	   71/shape    71/shape_one_way    71/shape_one_way_margin 
   71/shapes    71/z_index    72/name    72/texture    72/normal_map    72/tex_offset    72/material    72/modulate 
   72/region    72/tile_mode    72/occluder_offset    72/occluder    72/navigation_offset    72/navigation    72/shape_offset    72/shape_transform 	   72/shape    72/shape_one_way    72/shape_one_way_margin 
   72/shapes    72/z_index    73/name    73/texture    73/normal_map    73/tex_offset    73/material    73/modulate 
   73/region    73/tile_mode    73/occluder_offset    73/occluder    73/navigation_offset    73/navigation    73/shape_offset    73/shape_transform 	   73/shape    73/shape_one_way    73/shape_one_way_margin 
   73/shapes    73/z_index    74/name    74/texture    74/normal_map    74/tex_offset    74/material    74/modulate 
   74/region    74/tile_mode    74/occluder_offset    74/occluder    74/navigation_offset    74/navigation    74/shape_offset    74/shape_transform 	   74/shape    74/shape_one_way    74/shape_one_way_margin 
   74/shapes    74/z_index    75/name    75/texture    75/normal_map    75/tex_offset    75/material    75/modulate 
   75/region    75/tile_mode    75/occluder_offset    75/occluder    75/navigation_offset    75/navigation    75/shape_offset    75/shape_transform 	   75/shape    75/shape_one_way    75/shape_one_way_margin 
   75/shapes    75/z_index    76/name    76/texture    76/normal_map    76/tex_offset    76/material    76/modulate 
   76/region    76/tile_mode    76/occluder_offset    76/occluder    76/navigation_offset    76/navigation    76/shape_offset    76/shape_transform 	   76/shape    76/shape_one_way    76/shape_one_way_margin 
   76/shapes    76/z_index    77/name    77/texture    77/normal_map    77/tex_offset    77/material    77/modulate 
   77/region    77/tile_mode    77/occluder_offset    77/occluder    77/navigation_offset    77/navigation    77/shape_offset    77/shape_transform 	   77/shape    77/shape_one_way    77/shape_one_way_margin 
   77/shapes    77/z_index    78/name    78/texture    78/normal_map    78/tex_offset    78/material    78/modulate 
   78/region    78/tile_mode    78/occluder_offset    78/occluder    78/navigation_offset    78/navigation    78/shape_offset    78/shape_transform 	   78/shape    78/shape_one_way    78/shape_one_way_margin 
   78/shapes    78/z_index    79/name    79/texture    79/normal_map    79/tex_offset    79/material    79/modulate 
   79/region    79/tile_mode    79/occluder_offset    79/occluder    79/navigation_offset    79/navigation    79/shape_offset    79/shape_transform 	   79/shape    79/shape_one_way    79/shape_one_way_margin 
   79/shapes    79/z_index    80/name    80/texture    80/normal_map    80/tex_offset    80/material    80/modulate 
   80/region    80/tile_mode    80/occluder_offset    80/occluder    80/navigation_offset    80/navigation    80/shape_offset    80/shape_transform 	   80/shape    80/shape_one_way    80/shape_one_way_margin 
   80/shapes    80/z_index    81/name    81/texture    81/normal_map    81/tex_offset    81/material    81/modulate 
   81/region    81/tile_mode    81/occluder_offset    81/occluder    81/navigation_offset    81/navigation    81/shape_offset    81/shape_transform 	   81/shape    81/shape_one_way    81/shape_one_way_margin 
   81/shapes    81/z_index    82/name    82/texture    82/normal_map    82/tex_offset    82/material    82/modulate 
   82/region    82/tile_mode    82/occluder_offset    82/occluder    82/navigation_offset    82/navigation    82/shape_offset    82/shape_transform 	   82/shape    82/shape_one_way    82/shape_one_way_margin 
   82/shapes    82/z_index    83/name    83/texture    83/normal_map    83/tex_offset    83/material    83/modulate 
   83/region    83/tile_mode    83/occluder_offset    83/occluder    83/navigation_offset    83/navigation    83/shape_offset    83/shape_transform 	   83/shape    83/shape_one_way    83/shape_one_way_margin 
   83/shapes    83/z_index    84/name    84/texture    84/normal_map    84/tex_offset    84/material    84/modulate 
   84/region    84/tile_mode    84/occluder_offset    84/occluder    84/navigation_offset    84/navigation    84/shape_offset    84/shape_transform 	   84/shape    84/shape_one_way    84/shape_one_way_margin 
   84/shapes    84/z_index    85/name    85/texture    85/normal_map    85/tex_offset    85/material    85/modulate 
   85/region    85/tile_mode    85/occluder_offset    85/occluder    85/navigation_offset    85/navigation    85/shape_offset    85/shape_transform 	   85/shape    85/shape_one_way    85/shape_one_way_margin 
   85/shapes    85/z_index    86/name    86/texture    86/normal_map    86/tex_offset    86/material    86/modulate 
   86/region    86/tile_mode    86/occluder_offset    86/occluder    86/navigation_offset    86/navigation    86/shape_offset    86/shape_transform 	   86/shape    86/shape_one_way    86/shape_one_way_margin 
   86/shapes    86/z_index    87/name    87/texture    87/normal_map    87/tex_offset    87/material    87/modulate 
   87/region    87/tile_mode    87/occluder_offset    87/occluder    87/navigation_offset    87/navigation    87/shape_offset    87/shape_transform 	   87/shape    87/shape_one_way    87/shape_one_way_margin 
   87/shapes    87/z_index    88/name    88/texture    88/normal_map    88/tex_offset    88/material    88/modulate 
   88/region    88/tile_mode    88/occluder_offset    88/occluder    88/navigation_offset    88/navigation    88/shape_offset    88/shape_transform 	   88/shape    88/shape_one_way    88/shape_one_way_margin 
   88/shapes    88/z_index    89/name    89/texture    89/normal_map    89/tex_offset    89/material    89/modulate 
   89/region    89/tile_mode    89/occluder_offset    89/occluder    89/navigation_offset    89/navigation    89/shape_offset    89/shape_transform 	   89/shape    89/shape_one_way    89/shape_one_way_margin 
   89/shapes    89/z_index    90/name    90/texture    90/normal_map    90/tex_offset    90/material    90/modulate 
   90/region    90/tile_mode    90/occluder_offset    90/occluder    90/navigation_offset    90/navigation    90/shape_offset    90/shape_transform 	   90/shape    90/shape_one_way    90/shape_one_way_margin 
   90/shapes    90/z_index    91/name    91/texture    91/normal_map    91/tex_offset    91/material    91/modulate 
   91/region    91/tile_mode    91/occluder_offset    91/occluder    91/navigation_offset    91/navigation    91/shape_offset    91/shape_transform 	   91/shape    91/shape_one_way    91/shape_one_way_margin 
   91/shapes    91/z_index    92/name    92/texture    92/normal_map    92/tex_offset    92/material    92/modulate 
   92/region    92/tile_mode    92/occluder_offset    92/occluder    92/navigation_offset    92/navigation    92/shape_offset    92/shape_transform 	   92/shape    92/shape_one_way    92/shape_one_way_margin 
   92/shapes    92/z_index    93/name    93/texture    93/normal_map    93/tex_offset    93/material    93/modulate 
   93/region    93/tile_mode    93/occluder_offset    93/occluder    93/navigation_offset    93/navigation    93/shape_offset    93/shape_transform 	   93/shape    93/shape_one_way    93/shape_one_way_margin 
   93/shapes    93/z_index    94/name    94/texture    94/normal_map    94/tex_offset    94/material    94/modulate 
   94/region    94/tile_mode    94/occluder_offset    94/occluder    94/navigation_offset    94/navigation    94/shape_offset    94/shape_transform 	   94/shape    94/shape_one_way    94/shape_one_way_margin 
   94/shapes    94/z_index    95/name    95/texture    95/normal_map    95/tex_offset    95/material    95/modulate 
   95/region    95/tile_mode    95/occluder_offset    95/occluder    95/navigation_offset    95/navigation    95/shape_offset    95/shape_transform 	   95/shape    95/shape_one_way    95/shape_one_way_margin 
   95/shapes    95/z_index    96/name    96/texture    96/normal_map    96/tex_offset    96/material    96/modulate 
   96/region    96/tile_mode    96/occluder_offset    96/occluder    96/navigation_offset    96/navigation    96/shape_offset    96/shape_transform 	   96/shape    96/shape_one_way    96/shape_one_way_margin 
   96/shapes    96/z_index    97/name    97/texture    97/normal_map    97/tex_offset    97/material    97/modulate 
   97/region    97/tile_mode    97/occluder_offset    97/occluder    97/navigation_offset    97/navigation    97/shape_offset    97/shape_transform 	   97/shape    97/shape_one_way    97/shape_one_way_margin 
   97/shapes    97/z_index    98/name    98/texture    98/normal_map    98/tex_offset    98/material    98/modulate 
   98/region    98/tile_mode    98/occluder_offset    98/occluder    98/navigation_offset    98/navigation    98/shape_offset    98/shape_transform 	   98/shape    98/shape_one_way    98/shape_one_way_margin 
   98/shapes    98/z_index    99/name    99/texture    99/normal_map    99/tex_offset    99/material    99/modulate 
   99/region    99/tile_mode    99/occluder_offset    99/occluder    99/navigation_offset    99/navigation    99/shape_offset    99/shape_transform 	   99/shape    99/shape_one_way    99/shape_one_way_margin 
   99/shapes    99/z_index 	   100/name    100/texture    100/normal_map    100/tex_offset    100/material    100/modulate    100/region    100/tile_mode    100/occluder_offset    100/occluder    100/navigation_offset    100/navigation    100/shape_offset    100/shape_transform 
   100/shape    100/shape_one_way    100/shape_one_way_margin    100/shapes    100/z_index 	   101/name    101/texture    101/normal_map    101/tex_offset    101/material    101/modulate    101/region    101/tile_mode    101/occluder_offset    101/occluder    101/navigation_offset    101/navigation    101/shape_offset    101/shape_transform 
   101/shape    101/shape_one_way    101/shape_one_way_margin    101/shapes    101/z_index 	   102/name    102/texture    102/normal_map    102/tex_offset    102/material    102/modulate    102/region    102/tile_mode    102/occluder_offset    102/occluder    102/navigation_offset    102/navigation    102/shape_offset    102/shape_transform 
   102/shape    102/shape_one_way    102/shape_one_way_margin    102/shapes    102/z_index 	   103/name    103/texture    103/normal_map    103/tex_offset    103/material    103/modulate    103/region    103/tile_mode    103/occluder_offset    103/occluder    103/navigation_offset    103/navigation    103/shape_offset    103/shape_transform 
   103/shape    103/shape_one_way    103/shape_one_way_margin    103/shapes    103/z_index 	   104/name    104/texture    104/normal_map    104/tex_offset    104/material    104/modulate    104/region    104/tile_mode    104/occluder_offset    104/occluder    104/navigation_offset    104/navigation    104/shape_offset    104/shape_transform 
   104/shape    104/shape_one_way    104/shape_one_way_margin    104/shapes    104/z_index 	   105/name    105/texture    105/normal_map    105/tex_offset    105/material    105/modulate    105/region    105/tile_mode    105/occluder_offset    105/occluder    105/navigation_offset    105/navigation    105/shape_offset    105/shape_transform 
   105/shape    105/shape_one_way    105/shape_one_way_margin    105/shapes    105/z_index 	   106/name    106/texture    106/normal_map    106/tex_offset    106/material    106/modulate    106/region    106/tile_mode    106/occluder_offset    106/occluder    106/navigation_offset    106/navigation    106/shape_offset    106/shape_transform 
   106/shape    106/shape_one_way    106/shape_one_way_margin    106/shapes    106/z_index 	   107/name    107/texture    107/normal_map    107/tex_offset    107/material    107/modulate    107/region    107/tile_mode    107/occluder_offset    107/occluder    107/navigation_offset    107/navigation    107/shape_offset    107/shape_transform 
   107/shape    107/shape_one_way    107/shape_one_way_margin    107/shapes    107/z_index 	   108/name    108/texture    108/normal_map    108/tex_offset    108/material    108/modulate    108/region    108/tile_mode    108/occluder_offset    108/occluder    108/navigation_offset    108/navigation    108/shape_offset    108/shape_transform 
   108/shape    108/shape_one_way    108/shape_one_way_margin    108/shapes    108/z_index 	   109/name    109/texture    109/normal_map    109/tex_offset    109/material    109/modulate    109/region    109/tile_mode    109/occluder_offset    109/occluder    109/navigation_offset    109/navigation    109/shape_offset    109/shape_transform 
   109/shape    109/shape_one_way    109/shape_one_way_margin    109/shapes    109/z_index 	   110/name    110/texture    110/normal_map    110/tex_offset    110/material    110/modulate    110/region    110/tile_mode    110/occluder_offset    110/occluder    110/navigation_offset    110/navigation    110/shape_offset    110/shape_transform 
   110/shape    110/shape_one_way    110/shape_one_way_margin    110/shapes    110/z_index 	   111/name    111/texture    111/normal_map    111/tex_offset    111/material    111/modulate    111/region    111/tile_mode    111/occluder_offset    111/occluder    111/navigation_offset    111/navigation    111/shape_offset    111/shape_transform 
   111/shape    111/shape_one_way    111/shape_one_way_margin    111/shapes    111/z_index 	   112/name    112/texture    112/normal_map    112/tex_offset    112/material    112/modulate    112/region    112/tile_mode    112/occluder_offset    112/occluder    112/navigation_offset    112/navigation    112/shape_offset    112/shape_transform 
   112/shape    112/shape_one_way    112/shape_one_way_margin    112/shapes    112/z_index 	   113/name    113/texture    113/normal_map    113/tex_offset    113/material    113/modulate    113/region    113/tile_mode    113/occluder_offset    113/occluder    113/navigation_offset    113/navigation    113/shape_offset    113/shape_transform 
   113/shape    113/shape_one_way    113/shape_one_way_margin    113/shapes    113/z_index 	   114/name    114/texture    114/normal_map    114/tex_offset    114/material    114/modulate    114/region    114/tile_mode    114/occluder_offset    114/occluder    114/navigation_offset    114/navigation    114/shape_offset    114/shape_transform 
   114/shape    114/shape_one_way    114/shape_one_way_margin    114/shapes    114/z_index 	   115/name    115/texture    115/normal_map    115/tex_offset    115/material    115/modulate    115/region    115/tile_mode    115/occluder_offset    115/occluder    115/navigation_offset    115/navigation    115/shape_offset    115/shape_transform 
   115/shape    115/shape_one_way    115/shape_one_way_margin    115/shapes    115/z_index 	   116/name    116/texture    116/normal_map    116/tex_offset    116/material    116/modulate    116/region    116/tile_mode    116/occluder_offset    116/occluder    116/navigation_offset    116/navigation    116/shape_offset    116/shape_transform 
   116/shape    116/shape_one_way    116/shape_one_way_margin    116/shapes    116/z_index 	   117/name    117/texture    117/normal_map    117/tex_offset    117/material    117/modulate    117/region    117/tile_mode    117/occluder_offset    117/occluder    117/navigation_offset    117/navigation    117/shape_offset    117/shape_transform 
   117/shape    117/shape_one_way    117/shape_one_way_margin    117/shapes    117/z_index 	   118/name    118/texture    118/normal_map    118/tex_offset    118/material    118/modulate    118/region    118/tile_mode    118/occluder_offset    118/occluder    118/navigation_offset    118/navigation    118/shape_offset    118/shape_transform 
   118/shape    118/shape_one_way    118/shape_one_way_margin    118/shapes    118/z_index 	   119/name    119/texture    119/normal_map    119/tex_offset    119/material    119/modulate    119/region    119/tile_mode    119/occluder_offset    119/occluder    119/navigation_offset    119/navigation    119/shape_offset    119/shape_transform 
   119/shape    119/shape_one_way    119/shape_one_way_margin    119/shapes    119/z_index 	   120/name    120/texture    120/normal_map    120/tex_offset    120/material    120/modulate    120/region    120/tile_mode    120/occluder_offset    120/occluder    120/navigation_offset    120/navigation    120/shape_offset    120/shape_transform 
   120/shape    120/shape_one_way    120/shape_one_way_margin    120/shapes    120/z_index 	   121/name    121/texture    121/normal_map    121/tex_offset    121/material    121/modulate    121/region    121/tile_mode    121/occluder_offset    121/occluder    121/navigation_offset    121/navigation    121/shape_offset    121/shape_transform 
   121/shape    121/shape_one_way    121/shape_one_way_margin    121/shapes    121/z_index 	   122/name    122/texture    122/normal_map    122/tex_offset    122/material    122/modulate    122/region    122/tile_mode    122/occluder_offset    122/occluder    122/navigation_offset    122/navigation    122/shape_offset    122/shape_transform 
   122/shape    122/shape_one_way    122/shape_one_way_margin    122/shapes    122/z_index 	   123/name    123/texture    123/normal_map    123/tex_offset    123/material    123/modulate    123/region    123/tile_mode    123/occluder_offset    123/occluder    123/navigation_offset    123/navigation    123/shape_offset    123/shape_transform 
   123/shape    123/shape_one_way    123/shape_one_way_margin    123/shapes    123/z_index 	   124/name    124/texture    124/normal_map    124/tex_offset    124/material    124/modulate    124/region    124/tile_mode    124/occluder_offset    124/occluder    124/navigation_offset    124/navigation    124/shape_offset    124/shape_transform 
   124/shape    124/shape_one_way    124/shape_one_way_margin    124/shapes    124/z_index 	   125/name    125/texture    125/normal_map    125/tex_offset    125/material    125/modulate    125/region    125/tile_mode    125/occluder_offset    125/occluder    125/navigation_offset    125/navigation    125/shape_offset    125/shape_transform 
   125/shape    125/shape_one_way    125/shape_one_way_margin    125/shapes    125/z_index 	   126/name    126/texture    126/normal_map    126/tex_offset    126/material    126/modulate    126/region    126/tile_mode    126/occluder_offset    126/occluder    126/navigation_offset    126/navigation    126/shape_offset    126/shape_transform 
   126/shape    126/shape_one_way    126/shape_one_way_margin    126/shapes    126/z_index 	   127/name    127/texture    127/normal_map    127/tex_offset    127/material    127/modulate    127/region    127/tile_mode    127/occluder_offset    127/occluder    127/navigation_offset    127/navigation    127/shape_offset    127/shape_transform 
   127/shape    127/shape_one_way    127/shape_one_way_margin    127/shapes    127/z_index 	   128/name    128/texture    128/normal_map    128/tex_offset    128/material    128/modulate    128/region    128/tile_mode    128/occluder_offset    128/occluder    128/navigation_offset    128/navigation    128/shape_offset    128/shape_transform 
   128/shape    128/shape_one_way    128/shape_one_way_margin    128/shapes    128/z_index 	   129/name    129/texture    129/normal_map    129/tex_offset    129/material    129/modulate    129/region    129/tile_mode    129/occluder_offset    129/occluder    129/navigation_offset    129/navigation    129/shape_offset    129/shape_transform 
   129/shape    129/shape_one_way    129/shape_one_way_margin    129/shapes    129/z_index 	   130/name    130/texture    130/normal_map    130/tex_offset    130/material    130/modulate    130/region    130/tile_mode    130/occluder_offset    130/occluder    130/navigation_offset    130/navigation    130/shape_offset    130/shape_transform 
   130/shape    130/shape_one_way    130/shape_one_way_margin    130/shapes    130/z_index 	   131/name    131/texture    131/normal_map    131/tex_offset    131/material    131/modulate    131/region    131/tile_mode    131/occluder_offset    131/occluder    131/navigation_offset    131/navigation    131/shape_offset    131/shape_transform 
   131/shape    131/shape_one_way    131/shape_one_way_margin    131/shapes    131/z_index 	   132/name    132/texture    132/normal_map    132/tex_offset    132/material    132/modulate    132/region    132/tile_mode    132/occluder_offset    132/occluder    132/navigation_offset    132/navigation    132/shape_offset    132/shape_transform 
   132/shape    132/shape_one_way    132/shape_one_way_margin    132/shapes    132/z_index 	   133/name    133/texture    133/normal_map    133/tex_offset    133/material    133/modulate    133/region    133/tile_mode    133/occluder_offset    133/occluder    133/navigation_offset    133/navigation    133/shape_offset    133/shape_transform 
   133/shape    133/shape_one_way    133/shape_one_way_margin    133/shapes    133/z_index 	   134/name    134/texture    134/normal_map    134/tex_offset    134/material    134/modulate    134/region    134/tile_mode    134/occluder_offset    134/occluder    134/navigation_offset    134/navigation    134/shape_offset    134/shape_transform 
   134/shape    134/shape_one_way    134/shape_one_way_margin    134/shapes    134/z_index 	   135/name    135/texture    135/normal_map    135/tex_offset    135/material    135/modulate    135/region    135/tile_mode    135/occluder_offset    135/occluder    135/navigation_offset    135/navigation    135/shape_offset    135/shape_transform 
   135/shape    135/shape_one_way    135/shape_one_way_margin    135/shapes    135/z_index 	   136/name    136/texture    136/normal_map    136/tex_offset    136/material    136/modulate    136/region    136/tile_mode    136/occluder_offset    136/occluder    136/navigation_offset    136/navigation    136/shape_offset    136/shape_transform 
   136/shape    136/shape_one_way    136/shape_one_way_margin    136/shapes    136/z_index 	   137/name    137/texture    137/normal_map    137/tex_offset    137/material    137/modulate    137/region    137/tile_mode    137/occluder_offset    137/occluder    137/navigation_offset    137/navigation    137/shape_offset    137/shape_transform 
   137/shape    137/shape_one_way    137/shape_one_way_margin    137/shapes    137/z_index 	   138/name    138/texture    138/normal_map    138/tex_offset    138/material    138/modulate    138/region    138/tile_mode    138/occluder_offset    138/occluder    138/navigation_offset    138/navigation    138/shape_offset    138/shape_transform 
   138/shape    138/shape_one_way    138/shape_one_way_margin    138/shapes    138/z_index 	   139/name    139/texture    139/normal_map    139/tex_offset    139/material    139/modulate    139/region    139/tile_mode    139/occluder_offset    139/occluder    139/navigation_offset    139/navigation    139/shape_offset    139/shape_transform 
   139/shape    139/shape_one_way    139/shape_one_way_margin    139/shapes    139/z_index 	   140/name    140/texture    140/normal_map    140/tex_offset    140/material    140/modulate    140/region    140/tile_mode    140/occluder_offset    140/occluder    140/navigation_offset    140/navigation    140/shape_offset    140/shape_transform 
   140/shape    140/shape_one_way    140/shape_one_way_margin    140/shapes    140/z_index 	   141/name    141/texture    141/normal_map    141/tex_offset    141/material    141/modulate    141/region    141/tile_mode    141/occluder_offset    141/occluder    141/navigation_offset    141/navigation    141/shape_offset    141/shape_transform 
   141/shape    141/shape_one_way    141/shape_one_way_margin    141/shapes    141/z_index 	   142/name    142/texture    142/normal_map    142/tex_offset    142/material    142/modulate    142/region    142/tile_mode    142/occluder_offset    142/occluder    142/navigation_offset    142/navigation    142/shape_offset    142/shape_transform 
   142/shape    142/shape_one_way    142/shape_one_way_margin    142/shapes    142/z_index 	   143/name    143/texture    143/normal_map    143/tex_offset    143/material    143/modulate    143/region    143/tile_mode    143/occluder_offset    143/occluder    143/navigation_offset    143/navigation    143/shape_offset    143/shape_transform 
   143/shape    143/shape_one_way    143/shape_one_way_margin    143/shapes    143/z_index 	   144/name    144/texture    144/normal_map    144/tex_offset    144/material    144/modulate    144/region    144/tile_mode    144/occluder_offset    144/occluder    144/navigation_offset    144/navigation    144/shape_offset    144/shape_transform 
   144/shape    144/shape_one_way    144/shape_one_way_margin    144/shapes    144/z_index 	   145/name    145/texture    145/normal_map    145/tex_offset    145/material    145/modulate    145/region    145/tile_mode    145/occluder_offset    145/occluder    145/navigation_offset    145/navigation    145/shape_offset    145/shape_transform 
   145/shape    145/shape_one_way    145/shape_one_way_margin    145/shapes    145/z_index 	   146/name    146/texture    146/normal_map    146/tex_offset    146/material    146/modulate    146/region    146/tile_mode    146/occluder_offset    146/occluder    146/navigation_offset    146/navigation    146/shape_offset    146/shape_transform 
   146/shape    146/shape_one_way    146/shape_one_way_margin    146/shapes    146/z_index 	   147/name    147/texture    147/normal_map    147/tex_offset    147/material    147/modulate    147/region    147/tile_mode    147/occluder_offset    147/occluder    147/navigation_offset    147/navigation    147/shape_offset    147/shape_transform 
   147/shape    147/shape_one_way    147/shape_one_way_margin    147/shapes    147/z_index 	   148/name    148/texture    148/normal_map    148/tex_offset    148/material    148/modulate    148/region    148/tile_mode    148/occluder_offset    148/occluder    148/navigation_offset    148/navigation    148/shape_offset    148/shape_transform 
   148/shape    148/shape_one_way    148/shape_one_way_margin    148/shapes    148/z_index 	   149/name    149/texture    149/normal_map    149/tex_offset    149/material    149/modulate    149/region    149/tile_mode    149/occluder_offset    149/occluder    149/navigation_offset    149/navigation    149/shape_offset    149/shape_transform 
   149/shape    149/shape_one_way    149/shape_one_way_margin    149/shapes    149/z_index 	   150/name    150/texture    150/normal_map    150/tex_offset    150/material    150/modulate    150/region    150/tile_mode    150/occluder_offset    150/occluder    150/navigation_offset    150/navigation    150/shape_offset    150/shape_transform 
   150/shape    150/shape_one_way    150/shape_one_way_margin    150/shapes    150/z_index 	   151/name    151/texture    151/normal_map    151/tex_offset    151/material    151/modulate    151/region    151/tile_mode    151/occluder_offset    151/occluder    151/navigation_offset    151/navigation    151/shape_offset    151/shape_transform 
   151/shape    151/shape_one_way    151/shape_one_way_margin    151/shapes    151/z_index 	   152/name    152/texture    152/normal_map    152/tex_offset    152/material    152/modulate    152/region    152/tile_mode    152/occluder_offset    152/occluder    152/navigation_offset    152/navigation    152/shape_offset    152/shape_transform 
   152/shape    152/shape_one_way    152/shape_one_way_margin    152/shapes    152/z_index 	   153/name    153/texture    153/normal_map    153/tex_offset    153/material    153/modulate    153/region    153/tile_mode    153/occluder_offset    153/occluder    153/navigation_offset    153/navigation    153/shape_offset    153/shape_transform 
   153/shape    153/shape_one_way    153/shape_one_way_margin    153/shapes    153/z_index 	   154/name    154/texture    154/normal_map    154/tex_offset    154/material    154/modulate    154/region    154/tile_mode    154/occluder_offset    154/occluder    154/navigation_offset    154/navigation    154/shape_offset    154/shape_transform 
   154/shape    154/shape_one_way    154/shape_one_way_margin    154/shapes    154/z_index 	   155/name    155/texture    155/normal_map    155/tex_offset    155/material    155/modulate    155/region    155/tile_mode    155/occluder_offset    155/occluder    155/navigation_offset    155/navigation    155/shape_offset    155/shape_transform 
   155/shape    155/shape_one_way    155/shape_one_way_margin    155/shapes    155/z_index 	   156/name    156/texture    156/normal_map    156/tex_offset    156/material    156/modulate    156/region    156/tile_mode    156/occluder_offset    156/occluder    156/navigation_offset    156/navigation    156/shape_offset    156/shape_transform 
   156/shape    156/shape_one_way    156/shape_one_way_margin    156/shapes    156/z_index 	   157/name    157/texture    157/normal_map    157/tex_offset    157/material    157/modulate    157/region    157/tile_mode    157/occluder_offset    157/occluder    157/navigation_offset    157/navigation    157/shape_offset    157/shape_transform 
   157/shape    157/shape_one_way    157/shape_one_way_margin    157/shapes    157/z_index 	   158/name    158/texture    158/normal_map    158/tex_offset    158/material    158/modulate    158/region    158/tile_mode    158/occluder_offset    158/occluder    158/navigation_offset    158/navigation    158/shape_offset    158/shape_transform 
   158/shape    158/shape_one_way    158/shape_one_way_margin    158/shapes    158/z_index 	   159/name    159/texture    159/normal_map    159/tex_offset    159/material    159/modulate    159/region    159/tile_mode    159/occluder_offset    159/occluder    159/navigation_offset    159/navigation    159/shape_offset    159/shape_transform 
   159/shape    159/shape_one_way    159/shape_one_way_margin    159/shapes    159/z_index 	   160/name    160/texture    160/normal_map    160/tex_offset    160/material    160/modulate    160/region    160/tile_mode    160/occluder_offset    160/occluder    160/navigation_offset    160/navigation    160/shape_offset    160/shape_transform 
   160/shape    160/shape_one_way    160/shape_one_way_margin    160/shapes    160/z_index 	   161/name    161/texture    161/normal_map    161/tex_offset    161/material    161/modulate    161/region    161/tile_mode    161/occluder_offset    161/occluder    161/navigation_offset    161/navigation    161/shape_offset    161/shape_transform 
   161/shape    161/shape_one_way    161/shape_one_way_margin    161/shapes    161/z_index 	   162/name    162/texture    162/normal_map    162/tex_offset    162/material    162/modulate    162/region    162/tile_mode    162/occluder_offset    162/occluder    162/navigation_offset    162/navigation    162/shape_offset    162/shape_transform 
   162/shape    162/shape_one_way    162/shape_one_way_margin    162/shapes    162/z_index 	   163/name    163/texture    163/normal_map    163/tex_offset    163/material    163/modulate    163/region    163/tile_mode    163/occluder_offset    163/occluder    163/navigation_offset    163/navigation    163/shape_offset    163/shape_transform 
   163/shape    163/shape_one_way    163/shape_one_way_margin    163/shapes    163/z_index 	   164/name    164/texture    164/normal_map    164/tex_offset    164/material    164/modulate    164/region    164/tile_mode    164/occluder_offset    164/occluder    164/navigation_offset    164/navigation    164/shape_offset    164/shape_transform 
   164/shape    164/shape_one_way    164/shape_one_way_margin    164/shapes    164/z_index 	   165/name    165/texture    165/normal_map    165/tex_offset    165/material    165/modulate    165/region    165/tile_mode    165/occluder_offset    165/occluder    165/navigation_offset    165/navigation    165/shape_offset    165/shape_transform 
   165/shape    165/shape_one_way    165/shape_one_way_margin    165/shapes    165/z_index 	   166/name    166/texture    166/normal_map    166/tex_offset    166/material    166/modulate    166/region    166/tile_mode    166/occluder_offset    166/occluder    166/navigation_offset    166/navigation    166/shape_offset    166/shape_transform 
   166/shape    166/shape_one_way    166/shape_one_way_margin    166/shapes    166/z_index 	   167/name    167/texture    167/normal_map    167/tex_offset    167/material    167/modulate    167/region    167/tile_mode    167/occluder_offset    167/occluder    167/navigation_offset    167/navigation    167/shape_offset    167/shape_transform 
   167/shape    167/shape_one_way    167/shape_one_way_margin    167/shapes    167/z_index 	   168/name    168/texture    168/normal_map    168/tex_offset    168/material    168/modulate    168/region    168/tile_mode    168/occluder_offset    168/occluder    168/navigation_offset    168/navigation    168/shape_offset    168/shape_transform 
   168/shape    168/shape_one_way    168/shape_one_way_margin    168/shapes    168/z_index 	   169/name    169/texture    169/normal_map    169/tex_offset    169/material    169/modulate    169/region    169/tile_mode    169/occluder_offset    169/occluder    169/navigation_offset    169/navigation    169/shape_offset    169/shape_transform 
   169/shape    169/shape_one_way    169/shape_one_way_margin    169/shapes    169/z_index 	   170/name    170/texture    170/normal_map    170/tex_offset    170/material    170/modulate    170/region    170/tile_mode    170/occluder_offset    170/occluder    170/navigation_offset    170/navigation    170/shape_offset    170/shape_transform 
   170/shape    170/shape_one_way    170/shape_one_way_margin    170/shapes    170/z_index 	   171/name    171/texture    171/normal_map    171/tex_offset    171/material    171/modulate    171/region    171/tile_mode    171/occluder_offset    171/occluder    171/navigation_offset    171/navigation    171/shape_offset    171/shape_transform 
   171/shape    171/shape_one_way    171/shape_one_way_margin    171/shapes    171/z_index 	   172/name    172/texture    172/normal_map    172/tex_offset    172/material    172/modulate    172/region    172/tile_mode    172/occluder_offset    172/occluder    172/navigation_offset    172/navigation    172/shape_offset    172/shape_transform 
   172/shape    172/shape_one_way    172/shape_one_way_margin    172/shapes    172/z_index 	   173/name    173/texture    173/normal_map    173/tex_offset    173/material    173/modulate    173/region    173/tile_mode    173/occluder_offset    173/occluder    173/navigation_offset    173/navigation    173/shape_offset    173/shape_transform 
   173/shape    173/shape_one_way    173/shape_one_way_margin    173/shapes    173/z_index 	   174/name    174/texture    174/normal_map    174/tex_offset    174/material    174/modulate    174/region    174/tile_mode    174/occluder_offset    174/occluder    174/navigation_offset    174/navigation    174/shape_offset    174/shape_transform 
   174/shape    174/shape_one_way    174/shape_one_way_margin    174/shapes    174/z_index 	   175/name    175/texture    175/normal_map    175/tex_offset    175/material    175/modulate    175/region    175/tile_mode    175/occluder_offset    175/occluder    175/navigation_offset    175/navigation    175/shape_offset    175/shape_transform 
   175/shape    175/shape_one_way    175/shape_one_way_margin    175/shapes    175/z_index 	   176/name    176/texture    176/normal_map    176/tex_offset    176/material    176/modulate    176/region    176/tile_mode    176/occluder_offset    176/occluder    176/navigation_offset    176/navigation    176/shape_offset    176/shape_transform 
   176/shape    176/shape_one_way    176/shape_one_way_margin    176/shapes    176/z_index 	   177/name    177/texture    177/normal_map    177/tex_offset    177/material    177/modulate    177/region    177/tile_mode    177/occluder_offset    177/occluder    177/navigation_offset    177/navigation    177/shape_offset    177/shape_transform 
   177/shape    177/shape_one_way    177/shape_one_way_margin    177/shapes    177/z_index 	   178/name    178/texture    178/normal_map    178/tex_offset    178/material    178/modulate    178/region    178/tile_mode    178/occluder_offset    178/occluder    178/navigation_offset    178/navigation    178/shape_offset    178/shape_transform 
   178/shape    178/shape_one_way    178/shape_one_way_margin    178/shapes    178/z_index 	   179/name    179/texture    179/normal_map    179/tex_offset    179/material    179/modulate    179/region    179/tile_mode    179/occluder_offset    179/occluder    179/navigation_offset    179/navigation    179/shape_offset    179/shape_transform 
   179/shape    179/shape_one_way    179/shape_one_way_margin    179/shapes    179/z_index 	   180/name    180/texture    180/normal_map    180/tex_offset    180/material    180/modulate    180/region    180/tile_mode    180/occluder_offset    180/occluder    180/navigation_offset    180/navigation    180/shape_offset    180/shape_transform 
   180/shape    180/shape_one_way    180/shape_one_way_margin    180/shapes    180/z_index 	   181/name    181/texture    181/normal_map    181/tex_offset    181/material    181/modulate    181/region    181/tile_mode    181/occluder_offset    181/occluder    181/navigation_offset    181/navigation    181/shape_offset    181/shape_transform 
   181/shape    181/shape_one_way    181/shape_one_way_margin    181/shapes    181/z_index 	   182/name    182/texture    182/normal_map    182/tex_offset    182/material    182/modulate    182/region    182/tile_mode    182/occluder_offset    182/occluder    182/navigation_offset    182/navigation    182/shape_offset    182/shape_transform 
   182/shape    182/shape_one_way    182/shape_one_way_margin    182/shapes    182/z_index 	   183/name    183/texture    183/normal_map    183/tex_offset    183/material    183/modulate    183/region    183/tile_mode    183/occluder_offset    183/occluder    183/navigation_offset    183/navigation    183/shape_offset    183/shape_transform 
   183/shape    183/shape_one_way    183/shape_one_way_margin    183/shapes    183/z_index 	   184/name    184/texture    184/normal_map    184/tex_offset    184/material    184/modulate    184/region    184/tile_mode    184/occluder_offset    184/occluder    184/navigation_offset    184/navigation    184/shape_offset    184/shape_transform 
   184/shape    184/shape_one_way    184/shape_one_way_margin    184/shapes    184/z_index 	   185/name    185/texture    185/normal_map    185/tex_offset    185/material    185/modulate    185/region    185/tile_mode    185/occluder_offset    185/occluder    185/navigation_offset    185/navigation    185/shape_offset    185/shape_transform 
   185/shape    185/shape_one_way    185/shape_one_way_margin    185/shapes    185/z_index 	   186/name    186/texture    186/normal_map    186/tex_offset    186/material    186/modulate    186/region    186/tile_mode    186/occluder_offset    186/occluder    186/navigation_offset    186/navigation    186/shape_offset    186/shape_transform 
   186/shape    186/shape_one_way    186/shape_one_way_margin    186/shapes    186/z_index 	   187/name    187/texture    187/normal_map    187/tex_offset    187/material    187/modulate    187/region    187/tile_mode    187/occluder_offset    187/occluder    187/navigation_offset    187/navigation    187/shape_offset    187/shape_transform 
   187/shape    187/shape_one_way    187/shape_one_way_margin    187/shapes    187/z_index 	   188/name    188/texture    188/normal_map    188/tex_offset    188/material    188/modulate    188/region    188/tile_mode    188/occluder_offset    188/occluder    188/navigation_offset    188/navigation    188/shape_offset    188/shape_transform 
   188/shape    188/shape_one_way    188/shape_one_way_margin    188/shapes    188/z_index 	   189/name    189/texture    189/normal_map    189/tex_offset    189/material    189/modulate    189/region    189/tile_mode    189/occluder_offset    189/occluder    189/navigation_offset    189/navigation    189/shape_offset    189/shape_transform 
   189/shape    189/shape_one_way    189/shape_one_way_margin    189/shapes    189/z_index 	   190/name    190/texture    190/normal_map    190/tex_offset    190/material    190/modulate    190/region    190/tile_mode    190/occluder_offset    190/occluder    190/navigation_offset    190/navigation    190/shape_offset    190/shape_transform 
   190/shape    190/shape_one_way    190/shape_one_way_margin    190/shapes    190/z_index 	   191/name    191/texture    191/normal_map    191/tex_offset    191/material    191/modulate    191/region    191/tile_mode    191/occluder_offset    191/occluder    191/navigation_offset    191/navigation    191/shape_offset    191/shape_transform 
   191/shape    191/shape_one_way    191/shape_one_way_margin    191/shapes    191/z_index 	   192/name    192/texture    192/normal_map    192/tex_offset    192/material    192/modulate    192/region    192/tile_mode    192/occluder_offset    192/occluder    192/navigation_offset    192/navigation    192/shape_offset    192/shape_transform 
   192/shape    192/shape_one_way    192/shape_one_way_margin    192/shapes    192/z_index 	   193/name    193/texture    193/normal_map    193/tex_offset    193/material    193/modulate    193/region    193/tile_mode    193/occluder_offset    193/occluder    193/navigation_offset    193/navigation    193/shape_offset    193/shape_transform 
   193/shape    193/shape_one_way    193/shape_one_way_margin    193/shapes    193/z_index 	   194/name    194/texture    194/normal_map    194/tex_offset    194/material    194/modulate    194/region    194/tile_mode    194/occluder_offset    194/occluder    194/navigation_offset    194/navigation    194/shape_offset    194/shape_transform 
   194/shape    194/shape_one_way    194/shape_one_way_margin    194/shapes    194/z_index 	   195/name    195/texture    195/normal_map    195/tex_offset    195/material    195/modulate    195/region    195/tile_mode    195/occluder_offset    195/occluder    195/navigation_offset    195/navigation    195/shape_offset    195/shape_transform 
   195/shape    195/shape_one_way    195/shape_one_way_margin    195/shapes    195/z_index 	   196/name    196/texture    196/normal_map    196/tex_offset    196/material    196/modulate    196/region    196/tile_mode    196/occluder_offset    196/occluder    196/navigation_offset    196/navigation    196/shape_offset    196/shape_transform 
   196/shape    196/shape_one_way    196/shape_one_way_margin    196/shapes    196/z_index 	   197/name    197/texture    197/normal_map    197/tex_offset    197/material    197/modulate    197/region    197/tile_mode    197/occluder_offset    197/occluder    197/navigation_offset    197/navigation    197/shape_offset    197/shape_transform 
   197/shape    197/shape_one_way    197/shape_one_way_margin    197/shapes    197/z_index 	   198/name    198/texture    198/normal_map    198/tex_offset    198/material    198/modulate    198/region    198/tile_mode    198/occluder_offset    198/occluder    198/navigation_offset    198/navigation    198/shape_offset    198/shape_transform 
   198/shape    198/shape_one_way    198/shape_one_way_margin    198/shapes    198/z_index 	   199/name    199/texture    199/normal_map    199/tex_offset    199/material    199/modulate    199/region    199/tile_mode    199/occluder_offset    199/occluder    199/navigation_offset    199/navigation    199/shape_offset    199/shape_transform 
   199/shape    199/shape_one_way    199/shape_one_way_margin    199/shapes    199/z_index 	   200/name    200/texture    200/normal_map    200/tex_offset    200/material    200/modulate    200/region    200/tile_mode    200/occluder_offset    200/occluder    200/navigation_offset    200/navigation    200/shape_offset    200/shape_transform 
   200/shape    200/shape_one_way    200/shape_one_way_margin    200/shapes    200/z_index 	   201/name    201/texture    201/normal_map    201/tex_offset    201/material    201/modulate    201/region    201/tile_mode    201/occluder_offset    201/occluder    201/navigation_offset    201/navigation    201/shape_offset    201/shape_transform 
   201/shape    201/shape_one_way    201/shape_one_way_margin    201/shapes    201/z_index 	   202/name    202/texture    202/normal_map    202/tex_offset    202/material    202/modulate    202/region    202/tile_mode    202/occluder_offset    202/occluder    202/navigation_offset    202/navigation    202/shape_offset    202/shape_transform 
   202/shape    202/shape_one_way    202/shape_one_way_margin    202/shapes    202/z_index 	   203/name    203/texture    203/normal_map    203/tex_offset    203/material    203/modulate    203/region    203/tile_mode    203/occluder_offset    203/occluder    203/navigation_offset    203/navigation    203/shape_offset    203/shape_transform 
   203/shape    203/shape_one_way    203/shape_one_way_margin    203/shapes    203/z_index 	   204/name    204/texture    204/normal_map    204/tex_offset    204/material    204/modulate    204/region    204/tile_mode    204/occluder_offset    204/occluder    204/navigation_offset    204/navigation    204/shape_offset    204/shape_transform 
   204/shape    204/shape_one_way    204/shape_one_way_margin    204/shapes    204/z_index 	   205/name    205/texture    205/normal_map    205/tex_offset    205/material    205/modulate    205/region    205/tile_mode    205/occluder_offset    205/occluder    205/navigation_offset    205/navigation    205/shape_offset    205/shape_transform 
   205/shape    205/shape_one_way    205/shape_one_way_margin    205/shapes    205/z_index 	   206/name    206/texture    206/normal_map    206/tex_offset    206/material    206/modulate    206/region    206/tile_mode    206/occluder_offset    206/occluder    206/navigation_offset    206/navigation    206/shape_offset    206/shape_transform 
   206/shape    206/shape_one_way    206/shape_one_way_margin    206/shapes    206/z_index 	   207/name    207/texture    207/normal_map    207/tex_offset    207/material    207/modulate    207/region    207/tile_mode    207/occluder_offset    207/occluder    207/navigation_offset    207/navigation    207/shape_offset    207/shape_transform 
   207/shape    207/shape_one_way    207/shape_one_way_margin    207/shapes    207/z_index 	   208/name    208/texture    208/normal_map    208/tex_offset    208/material    208/modulate    208/region    208/tile_mode    208/occluder_offset    208/occluder    208/navigation_offset    208/navigation    208/shape_offset    208/shape_transform 
   208/shape    208/shape_one_way    208/shape_one_way_margin    208/shapes    208/z_index 	   209/name    209/texture    209/normal_map    209/tex_offset    209/material    209/modulate    209/region    209/tile_mode    209/occluder_offset    209/occluder    209/navigation_offset    209/navigation    209/shape_offset    209/shape_transform 
   209/shape    209/shape_one_way    209/shape_one_way_margin    209/shapes    209/z_index 	   210/name    210/texture    210/normal_map    210/tex_offset    210/material    210/modulate    210/region    210/tile_mode    210/occluder_offset    210/occluder    210/navigation_offset    210/navigation    210/shape_offset    210/shape_transform 
   210/shape    210/shape_one_way    210/shape_one_way_margin    210/shapes    210/z_index 	   211/name    211/texture    211/normal_map    211/tex_offset    211/material    211/modulate    211/region    211/tile_mode    211/occluder_offset    211/occluder    211/navigation_offset    211/navigation    211/shape_offset    211/shape_transform 
   211/shape    211/shape_one_way    211/shape_one_way_margin    211/shapes    211/z_index 	   212/name    212/texture    212/normal_map    212/tex_offset    212/material    212/modulate    212/region    212/tile_mode    212/occluder_offset    212/occluder    212/navigation_offset    212/navigation    212/shape_offset    212/shape_transform 
   212/shape    212/shape_one_way    212/shape_one_way_margin    212/shapes    212/z_index 	   213/name    213/texture    213/normal_map    213/tex_offset    213/material    213/modulate    213/region    213/tile_mode    213/occluder_offset    213/occluder    213/navigation_offset    213/navigation    213/shape_offset    213/shape_transform 
   213/shape    213/shape_one_way    213/shape_one_way_margin    213/shapes    213/z_index 	   214/name    214/texture    214/normal_map    214/tex_offset    214/material    214/modulate    214/region    214/tile_mode    214/occluder_offset    214/occluder    214/navigation_offset    214/navigation    214/shape_offset    214/shape_transform 
   214/shape    214/shape_one_way    214/shape_one_way_margin    214/shapes    214/z_index 	   215/name    215/texture    215/normal_map    215/tex_offset    215/material    215/modulate    215/region    215/tile_mode    215/occluder_offset    215/occluder    215/navigation_offset    215/navigation    215/shape_offset    215/shape_transform 
   215/shape    215/shape_one_way    215/shape_one_way_margin    215/shapes    215/z_index 	   216/name    216/texture    216/normal_map    216/tex_offset    216/material    216/modulate    216/region    216/tile_mode    216/occluder_offset    216/occluder    216/navigation_offset    216/navigation    216/shape_offset    216/shape_transform 
   216/shape    216/shape_one_way    216/shape_one_way_margin    216/shapes    216/z_index 	   217/name    217/texture    217/normal_map    217/tex_offset    217/material    217/modulate    217/region    217/tile_mode    217/occluder_offset    217/occluder    217/navigation_offset    217/navigation    217/shape_offset    217/shape_transform 
   217/shape    217/shape_one_way    217/shape_one_way_margin    217/shapes    217/z_index 	   218/name    218/texture    218/normal_map    218/tex_offset    218/material    218/modulate    218/region    218/tile_mode    218/occluder_offset    218/occluder    218/navigation_offset    218/navigation    218/shape_offset    218/shape_transform 
   218/shape    218/shape_one_way    218/shape_one_way_margin    218/shapes    218/z_index 	   219/name    219/texture    219/normal_map    219/tex_offset    219/material    219/modulate    219/region    219/tile_mode    219/occluder_offset    219/occluder    219/navigation_offset    219/navigation    219/shape_offset    219/shape_transform 
   219/shape    219/shape_one_way    219/shape_one_way_margin    219/shapes    219/z_index 	   220/name    220/texture    220/normal_map    220/tex_offset    220/material    220/modulate    220/region    220/tile_mode    220/occluder_offset    220/occluder    220/navigation_offset    220/navigation    220/shape_offset    220/shape_transform 
   220/shape    220/shape_one_way    220/shape_one_way_margin    220/shapes    220/z_index 	   221/name    221/texture    221/normal_map    221/tex_offset    221/material    221/modulate    221/region    221/tile_mode    221/occluder_offset    221/occluder    221/navigation_offset    221/navigation    221/shape_offset    221/shape_transform 
   221/shape    221/shape_one_way    221/shape_one_way_margin    221/shapes    221/z_index 	   222/name    222/texture    222/normal_map    222/tex_offset    222/material    222/modulate    222/region    222/tile_mode    222/occluder_offset    222/occluder    222/navigation_offset    222/navigation    222/shape_offset    222/shape_transform 
   222/shape    222/shape_one_way    222/shape_one_way_margin    222/shapes    222/z_index 	   223/name    223/texture    223/normal_map    223/tex_offset    223/material    223/modulate    223/region    223/tile_mode    223/occluder_offset    223/occluder    223/navigation_offset    223/navigation    223/shape_offset    223/shape_transform 
   223/shape    223/shape_one_way    223/shape_one_way_margin    223/shapes    223/z_index 	   224/name    224/texture    224/normal_map    224/tex_offset    224/material    224/modulate    224/region    224/tile_mode    224/occluder_offset    224/occluder    224/navigation_offset    224/navigation    224/shape_offset    224/shape_transform 
   224/shape    224/shape_one_way    224/shape_one_way_margin    224/shapes    224/z_index 	   225/name    225/texture    225/normal_map    225/tex_offset    225/material    225/modulate    225/region    225/tile_mode    225/occluder_offset    225/occluder    225/navigation_offset    225/navigation    225/shape_offset    225/shape_transform 
   225/shape    225/shape_one_way    225/shape_one_way_margin    225/shapes    225/z_index 	   226/name    226/texture    226/normal_map    226/tex_offset    226/material    226/modulate    226/region    226/tile_mode    226/occluder_offset    226/occluder    226/navigation_offset    226/navigation    226/shape_offset    226/shape_transform 
   226/shape    226/shape_one_way    226/shape_one_way_margin    226/shapes    226/z_index 	   227/name    227/texture    227/normal_map    227/tex_offset    227/material    227/modulate    227/region    227/tile_mode    227/occluder_offset    227/occluder    227/navigation_offset    227/navigation    227/shape_offset    227/shape_transform 
   227/shape    227/shape_one_way    227/shape_one_way_margin    227/shapes    227/z_index 	   228/name    228/texture    228/normal_map    228/tex_offset    228/material    228/modulate    228/region    228/tile_mode    228/occluder_offset    228/occluder    228/navigation_offset    228/navigation    228/shape_offset    228/shape_transform 
   228/shape    228/shape_one_way    228/shape_one_way_margin    228/shapes    228/z_index 	   229/name    229/texture    229/normal_map    229/tex_offset    229/material    229/modulate    229/region    229/tile_mode    229/occluder_offset    229/occluder    229/navigation_offset    229/navigation    229/shape_offset    229/shape_transform 
   229/shape    229/shape_one_way    229/shape_one_way_margin    229/shapes    229/z_index 	   230/name    230/texture    230/normal_map    230/tex_offset    230/material    230/modulate    230/region    230/tile_mode    230/occluder_offset    230/occluder    230/navigation_offset    230/navigation    230/shape_offset    230/shape_transform 
   230/shape    230/shape_one_way    230/shape_one_way_margin    230/shapes    230/z_index 	   231/name    231/texture    231/normal_map    231/tex_offset    231/material    231/modulate    231/region    231/tile_mode    231/occluder_offset    231/occluder    231/navigation_offset    231/navigation    231/shape_offset    231/shape_transform 
   231/shape    231/shape_one_way    231/shape_one_way_margin    231/shapes    231/z_index 	   232/name    232/texture    232/normal_map    232/tex_offset    232/material    232/modulate    232/region    232/tile_mode    232/occluder_offset    232/occluder    232/navigation_offset    232/navigation    232/shape_offset    232/shape_transform 
   232/shape    232/shape_one_way    232/shape_one_way_margin    232/shapes    232/z_index 	   233/name    233/texture    233/normal_map    233/tex_offset    233/material    233/modulate    233/region    233/tile_mode    233/occluder_offset    233/occluder    233/navigation_offset    233/navigation    233/shape_offset    233/shape_transform 
   233/shape    233/shape_one_way    233/shape_one_way_margin    233/shapes    233/z_index 	   234/name    234/texture    234/normal_map    234/tex_offset    234/material    234/modulate    234/region    234/tile_mode    234/occluder_offset    234/occluder    234/navigation_offset    234/navigation    234/shape_offset    234/shape_transform 
   234/shape    234/shape_one_way    234/shape_one_way_margin    234/shapes    234/z_index 	   235/name    235/texture    235/normal_map    235/tex_offset    235/material    235/modulate    235/region    235/tile_mode    235/occluder_offset    235/occluder    235/navigation_offset    235/navigation    235/shape_offset    235/shape_transform 
   235/shape    235/shape_one_way    235/shape_one_way_margin    235/shapes    235/z_index 	   236/name    236/texture    236/normal_map    236/tex_offset    236/material    236/modulate    236/region    236/tile_mode    236/occluder_offset    236/occluder    236/navigation_offset    236/navigation    236/shape_offset    236/shape_transform 
   236/shape    236/shape_one_way    236/shape_one_way_margin    236/shapes    236/z_index 	   237/name    237/texture    237/normal_map    237/tex_offset    237/material    237/modulate    237/region    237/tile_mode    237/occluder_offset    237/occluder    237/navigation_offset    237/navigation    237/shape_offset    237/shape_transform 
   237/shape    237/shape_one_way    237/shape_one_way_margin    237/shapes    237/z_index 	   238/name    238/texture    238/normal_map    238/tex_offset    238/material    238/modulate    238/region    238/tile_mode    238/occluder_offset    238/occluder    238/navigation_offset    238/navigation    238/shape_offset    238/shape_transform 
   238/shape    238/shape_one_way    238/shape_one_way_margin    238/shapes    238/z_index 	   239/name    239/texture    239/normal_map    239/tex_offset    239/material    239/modulate    239/region    239/tile_mode    239/occluder_offset    239/occluder    239/navigation_offset    239/navigation    239/shape_offset    239/shape_transform 
   239/shape    239/shape_one_way    239/shape_one_way_margin    239/shapes    239/z_index 	   240/name    240/texture    240/normal_map    240/tex_offset    240/material    240/modulate    240/region    240/tile_mode    240/occluder_offset    240/occluder    240/navigation_offset    240/navigation    240/shape_offset    240/shape_transform 
   240/shape    240/shape_one_way    240/shape_one_way_margin    240/shapes    240/z_index 	   241/name    241/texture    241/normal_map    241/tex_offset    241/material    241/modulate    241/region    241/tile_mode    241/occluder_offset    241/occluder    241/navigation_offset    241/navigation    241/shape_offset    241/shape_transform 
   241/shape    241/shape_one_way    241/shape_one_way_margin    241/shapes    241/z_index 	   242/name    242/texture    242/normal_map    242/tex_offset    242/material    242/modulate    242/region    242/tile_mode    242/occluder_offset    242/occluder    242/navigation_offset    242/navigation    242/shape_offset    242/shape_transform 
   242/shape    242/shape_one_way    242/shape_one_way_margin    242/shapes    242/z_index 	   243/name    243/texture    243/normal_map    243/tex_offset    243/material    243/modulate    243/region    243/tile_mode    243/occluder_offset    243/occluder    243/navigation_offset    243/navigation    243/shape_offset    243/shape_transform 
   243/shape    243/shape_one_way    243/shape_one_way_margin    243/shapes    243/z_index 	   244/name    244/texture    244/normal_map    244/tex_offset    244/material    244/modulate    244/region    244/tile_mode    244/occluder_offset    244/occluder    244/navigation_offset    244/navigation    244/shape_offset    244/shape_transform 
   244/shape    244/shape_one_way    244/shape_one_way_margin    244/shapes    244/z_index 	   245/name    245/texture    245/normal_map    245/tex_offset    245/material    245/modulate    245/region    245/tile_mode    245/occluder_offset    245/occluder    245/navigation_offset    245/navigation    245/shape_offset    245/shape_transform 
   245/shape    245/shape_one_way    245/shape_one_way_margin    245/shapes    245/z_index 	   246/name    246/texture    246/normal_map    246/tex_offset    246/material    246/modulate    246/region    246/tile_mode    246/occluder_offset    246/occluder    246/navigation_offset    246/navigation    246/shape_offset    246/shape_transform 
   246/shape    246/shape_one_way    246/shape_one_way_margin    246/shapes    246/z_index 	   247/name    247/texture    247/normal_map    247/tex_offset    247/material    247/modulate    247/region    247/tile_mode    247/occluder_offset    247/occluder    247/navigation_offset    247/navigation    247/shape_offset    247/shape_transform 
   247/shape    247/shape_one_way    247/shape_one_way_margin    247/shapes    247/z_index 	   248/name    248/texture    248/normal_map    248/tex_offset    248/material    248/modulate    248/region    248/tile_mode    248/occluder_offset    248/occluder    248/navigation_offset    248/navigation    248/shape_offset    248/shape_transform 
   248/shape    248/shape_one_way    248/shape_one_way_margin    248/shapes    248/z_index 	   249/name    249/texture    249/normal_map    249/tex_offset    249/material    249/modulate    249/region    249/tile_mode    249/occluder_offset    249/occluder    249/navigation_offset    249/navigation    249/shape_offset    249/shape_transform 
   249/shape    249/shape_one_way    249/shape_one_way_margin    249/shapes    249/z_index 	   250/name    250/texture    250/normal_map    250/tex_offset    250/material    250/modulate    250/region    250/tile_mode    250/occluder_offset    250/occluder    250/navigation_offset    250/navigation    250/shape_offset    250/shape_transform 
   250/shape    250/shape_one_way    250/shape_one_way_margin    250/shapes    250/z_index 	   251/name    251/texture    251/normal_map    251/tex_offset    251/material    251/modulate    251/region    251/tile_mode    251/occluder_offset    251/occluder    251/navigation_offset    251/navigation    251/shape_offset    251/shape_transform 
   251/shape    251/shape_one_way    251/shape_one_way_margin    251/shapes    251/z_index 	   252/name    252/texture    252/normal_map    252/tex_offset    252/material    252/modulate    252/region    252/tile_mode    252/occluder_offset    252/occluder    252/navigation_offset    252/navigation    252/shape_offset    252/shape_transform 
   252/shape    252/shape_one_way    252/shape_one_way_margin    252/shapes    252/z_index 	   253/name    253/texture    253/normal_map    253/tex_offset    253/material    253/modulate    253/region    253/tile_mode    253/occluder_offset    253/occluder    253/navigation_offset    253/navigation    253/shape_offset    253/shape_transform 
   253/shape    253/shape_one_way    253/shape_one_way_margin    253/shapes    253/z_index 	   254/name    254/texture    254/normal_map    254/tex_offset    254/material    254/modulate    254/region    254/tile_mode    254/occluder_offset    254/occluder    254/navigation_offset    254/navigation    254/shape_offset    254/shape_transform 
   254/shape    254/shape_one_way    254/shape_one_way_margin    254/shapes    254/z_index 	   255/name    255/texture    255/normal_map    255/tex_offset    255/material    255/modulate    255/region    255/tile_mode    255/occluder_offset    255/occluder    255/navigation_offset    255/navigation    255/shape_offset    255/shape_transform 
   255/shape    255/shape_one_way    255/shape_one_way_margin    255/shapes    255/z_index 	   256/name    256/texture    256/normal_map    256/tex_offset    256/material    256/modulate    256/region    256/tile_mode    256/occluder_offset    256/occluder    256/navigation_offset    256/navigation    256/shape_offset    256/shape_transform 
   256/shape    256/shape_one_way    256/shape_one_way_margin    256/shapes    256/z_index 	   257/name    257/texture    257/normal_map    257/tex_offset    257/material    257/modulate    257/region    257/tile_mode    257/occluder_offset    257/occluder    257/navigation_offset    257/navigation    257/shape_offset    257/shape_transform 
   257/shape    257/shape_one_way    257/shape_one_way_margin    257/shapes    257/z_index 	   258/name    258/texture    258/normal_map    258/tex_offset    258/material    258/modulate    258/region    258/tile_mode    258/occluder_offset    258/occluder    258/navigation_offset    258/navigation    258/shape_offset    258/shape_transform 
   258/shape    258/shape_one_way    258/shape_one_way_margin    258/shapes    258/z_index 	   259/name    259/texture    259/normal_map    259/tex_offset    259/material    259/modulate    259/region    259/tile_mode    259/occluder_offset    259/occluder    259/navigation_offset    259/navigation    259/shape_offset    259/shape_transform 
   259/shape    259/shape_one_way    259/shape_one_way_margin    259/shapes    259/z_index 	   260/name    260/texture    260/normal_map    260/tex_offset    260/material    260/modulate    260/region    260/tile_mode    260/occluder_offset    260/occluder    260/navigation_offset    260/navigation    260/shape_offset    260/shape_transform 
   260/shape    260/shape_one_way    260/shape_one_way_margin    260/shapes    260/z_index 	   261/name    261/texture    261/normal_map    261/tex_offset    261/material    261/modulate    261/region    261/tile_mode    261/occluder_offset    261/occluder    261/navigation_offset    261/navigation    261/shape_offset    261/shape_transform 
   261/shape    261/shape_one_way    261/shape_one_way_margin    261/shapes    261/z_index 	   262/name    262/texture    262/normal_map    262/tex_offset    262/material    262/modulate    262/region    262/tile_mode    262/occluder_offset    262/occluder    262/navigation_offset    262/navigation    262/shape_offset    262/shape_transform 
   262/shape    262/shape_one_way    262/shape_one_way_margin    262/shapes    262/z_index 	   263/name    263/texture    263/normal_map    263/tex_offset    263/material    263/modulate    263/region    263/tile_mode    263/occluder_offset    263/occluder    263/navigation_offset    263/navigation    263/shape_offset    263/shape_transform 
   263/shape    263/shape_one_way    263/shape_one_way_margin    263/shapes    263/z_index 	   264/name    264/texture    264/normal_map    264/tex_offset    264/material    264/modulate    264/region    264/tile_mode    264/occluder_offset    264/occluder    264/navigation_offset    264/navigation    264/shape_offset    264/shape_transform 
   264/shape    264/shape_one_way    264/shape_one_way_margin    264/shapes    264/z_index 	   265/name    265/texture    265/normal_map    265/tex_offset    265/material    265/modulate    265/region    265/tile_mode    265/occluder_offset    265/occluder    265/navigation_offset    265/navigation    265/shape_offset    265/shape_transform 
   265/shape    265/shape_one_way    265/shape_one_way_margin    265/shapes    265/z_index 	   266/name    266/texture    266/normal_map    266/tex_offset    266/material    266/modulate    266/region    266/tile_mode    266/occluder_offset    266/occluder    266/navigation_offset    266/navigation    266/shape_offset    266/shape_transform 
   266/shape    266/shape_one_way    266/shape_one_way_margin    266/shapes    266/z_index 	   267/name    267/texture    267/normal_map    267/tex_offset    267/material    267/modulate    267/region    267/tile_mode    267/occluder_offset    267/occluder    267/navigation_offset    267/navigation    267/shape_offset    267/shape_transform 
   267/shape    267/shape_one_way    267/shape_one_way_margin    267/shapes    267/z_index 	   268/name    268/texture    268/normal_map    268/tex_offset    268/material    268/modulate    268/region    268/tile_mode    268/occluder_offset    268/occluder    268/navigation_offset    268/navigation    268/shape_offset    268/shape_transform 
   268/shape    268/shape_one_way    268/shape_one_way_margin    268/shapes    268/z_index 	   269/name    269/texture    269/normal_map    269/tex_offset    269/material    269/modulate    269/region    269/tile_mode    269/occluder_offset    269/occluder    269/navigation_offset    269/navigation    269/shape_offset    269/shape_transform 
   269/shape    269/shape_one_way    269/shape_one_way_margin    269/shapes    269/z_index 	   270/name    270/texture    270/normal_map    270/tex_offset    270/material    270/modulate    270/region    270/tile_mode    270/occluder_offset    270/occluder    270/navigation_offset    270/navigation    270/shape_offset    270/shape_transform 
   270/shape    270/shape_one_way    270/shape_one_way_margin    270/shapes    270/z_index 	   271/name    271/texture    271/normal_map    271/tex_offset    271/material    271/modulate    271/region    271/tile_mode    271/occluder_offset    271/occluder    271/navigation_offset    271/navigation    271/shape_offset    271/shape_transform 
   271/shape    271/shape_one_way    271/shape_one_way_margin    271/shapes    271/z_index 	   272/name    272/texture    272/normal_map    272/tex_offset    272/material    272/modulate    272/region    272/tile_mode    272/occluder_offset    272/occluder    272/navigation_offset    272/navigation    272/shape_offset    272/shape_transform 
   272/shape    272/shape_one_way    272/shape_one_way_margin    272/shapes    272/z_index 	   273/name    273/texture    273/normal_map    273/tex_offset    273/material    273/modulate    273/region    273/tile_mode    273/occluder_offset    273/occluder    273/navigation_offset    273/navigation    273/shape_offset    273/shape_transform 
   273/shape    273/shape_one_way    273/shape_one_way_margin    273/shapes    273/z_index 	   274/name    274/texture    274/normal_map    274/tex_offset    274/material    274/modulate    274/region    274/tile_mode    274/occluder_offset    274/occluder    274/navigation_offset    274/navigation    274/shape_offset    274/shape_transform 
   274/shape    274/shape_one_way    274/shape_one_way_margin    274/shapes    274/z_index 	   275/name    275/texture    275/normal_map    275/tex_offset    275/material    275/modulate    275/region    275/tile_mode    275/occluder_offset    275/occluder    275/navigation_offset    275/navigation    275/shape_offset    275/shape_transform 
   275/shape    275/shape_one_way    275/shape_one_way_margin    275/shapes    275/z_index 	   276/name    276/texture    276/normal_map    276/tex_offset    276/material    276/modulate    276/region    276/tile_mode    276/occluder_offset    276/occluder    276/navigation_offset    276/navigation    276/shape_offset    276/shape_transform 
   276/shape    276/shape_one_way    276/shape_one_way_margin    276/shapes    276/z_index 	   277/name    277/texture    277/normal_map    277/tex_offset    277/material    277/modulate    277/region    277/tile_mode    277/occluder_offset    277/occluder    277/navigation_offset    277/navigation    277/shape_offset    277/shape_transform 
   277/shape    277/shape_one_way    277/shape_one_way_margin    277/shapes    277/z_index 	   278/name    278/texture    278/normal_map    278/tex_offset    278/material    278/modulate    278/region    278/tile_mode    278/occluder_offset    278/occluder    278/navigation_offset    278/navigation    278/shape_offset    278/shape_transform 
   278/shape    278/shape_one_way    278/shape_one_way_margin    278/shapes    278/z_index 	   279/name    279/texture    279/normal_map    279/tex_offset    279/material    279/modulate    279/region    279/tile_mode    279/occluder_offset    279/occluder    279/navigation_offset    279/navigation    279/shape_offset    279/shape_transform 
   279/shape    279/shape_one_way    279/shape_one_way_margin    279/shapes    279/z_index 	   280/name    280/texture    280/normal_map    280/tex_offset    280/material    280/modulate    280/region    280/tile_mode    280/occluder_offset    280/occluder    280/navigation_offset    280/navigation    280/shape_offset    280/shape_transform 
   280/shape    280/shape_one_way    280/shape_one_way_margin    280/shapes    280/z_index 	   281/name    281/texture    281/normal_map    281/tex_offset    281/material    281/modulate    281/region    281/tile_mode    281/occluder_offset    281/occluder    281/navigation_offset    281/navigation    281/shape_offset    281/shape_transform 
   281/shape    281/shape_one_way    281/shape_one_way_margin    281/shapes    281/z_index 	   282/name    282/texture    282/normal_map    282/tex_offset    282/material    282/modulate    282/region    282/tile_mode    282/occluder_offset    282/occluder    282/navigation_offset    282/navigation    282/shape_offset    282/shape_transform 
   282/shape    282/shape_one_way    282/shape_one_way_margin    282/shapes    282/z_index 	   283/name    283/texture    283/normal_map    283/tex_offset    283/material    283/modulate    283/region    283/tile_mode    283/occluder_offset    283/occluder    283/navigation_offset    283/navigation    283/shape_offset    283/shape_transform 
   283/shape    283/shape_one_way    283/shape_one_way_margin    283/shapes    283/z_index 	   284/name    284/texture    284/normal_map    284/tex_offset    284/material    284/modulate    284/region    284/tile_mode    284/occluder_offset    284/occluder    284/navigation_offset    284/navigation    284/shape_offset    284/shape_transform 
   284/shape    284/shape_one_way    284/shape_one_way_margin    284/shapes    284/z_index 	   285/name    285/texture    285/normal_map    285/tex_offset    285/material    285/modulate    285/region    285/tile_mode    285/occluder_offset    285/occluder    285/navigation_offset    285/navigation    285/shape_offset    285/shape_transform 
   285/shape    285/shape_one_way    285/shape_one_way_margin    285/shapes    285/z_index 	   286/name    286/texture    286/normal_map    286/tex_offset    286/material    286/modulate    286/region    286/tile_mode    286/occluder_offset    286/occluder    286/navigation_offset    286/navigation    286/shape_offset    286/shape_transform 
   286/shape    286/shape_one_way    286/shape_one_way_margin    286/shapes    286/z_index 	   287/name    287/texture    287/normal_map    287/tex_offset    287/material    287/modulate    287/region    287/tile_mode    287/occluder_offset    287/occluder    287/navigation_offset    287/navigation    287/shape_offset    287/shape_transform 
   287/shape    287/shape_one_way    287/shape_one_way_margin    287/shapes    287/z_index 	   288/name    288/texture    288/normal_map    288/tex_offset    288/material    288/modulate    288/region    288/tile_mode    288/occluder_offset    288/occluder    288/navigation_offset    288/navigation    288/shape_offset    288/shape_transform 
   288/shape    288/shape_one_way    288/shape_one_way_margin    288/shapes    288/z_index 	   289/name    289/texture    289/normal_map    289/tex_offset    289/material    289/modulate    289/region    289/tile_mode    289/occluder_offset    289/occluder    289/navigation_offset    289/navigation    289/shape_offset    289/shape_transform 
   289/shape    289/shape_one_way    289/shape_one_way_margin    289/shapes    289/z_index 	   290/name    290/texture    290/normal_map    290/tex_offset    290/material    290/modulate    290/region    290/tile_mode    290/occluder_offset    290/occluder    290/navigation_offset    290/navigation    290/shape_offset    290/shape_transform 
   290/shape    290/shape_one_way    290/shape_one_way_margin    290/shapes    290/z_index 	   291/name    291/texture    291/normal_map    291/tex_offset    291/material    291/modulate    291/region    291/tile_mode    291/occluder_offset    291/occluder    291/navigation_offset    291/navigation    291/shape_offset    291/shape_transform 
   291/shape    291/shape_one_way    291/shape_one_way_margin    291/shapes    291/z_index 	   292/name    292/texture    292/normal_map    292/tex_offset    292/material    292/modulate    292/region    292/tile_mode    292/occluder_offset    292/occluder    292/navigation_offset    292/navigation    292/shape_offset    292/shape_transform 
   292/shape    292/shape_one_way    292/shape_one_way_margin    292/shapes    292/z_index 	   293/name    293/texture    293/normal_map    293/tex_offset    293/material    293/modulate    293/region    293/tile_mode    293/occluder_offset    293/occluder    293/navigation_offset    293/navigation    293/shape_offset    293/shape_transform 
   293/shape    293/shape_one_way    293/shape_one_way_margin    293/shapes    293/z_index 	   294/name    294/texture    294/normal_map    294/tex_offset    294/material    294/modulate    294/region    294/tile_mode    294/occluder_offset    294/occluder    294/navigation_offset    294/navigation    294/shape_offset    294/shape_transform 
   294/shape    294/shape_one_way    294/shape_one_way_margin    294/shapes    294/z_index 	   295/name    295/texture    295/normal_map    295/tex_offset    295/material    295/modulate    295/region    295/tile_mode    295/occluder_offset    295/occluder    295/navigation_offset    295/navigation    295/shape_offset    295/shape_transform 
   295/shape    295/shape_one_way    295/shape_one_way_margin    295/shapes    295/z_index 	   296/name    296/texture    296/normal_map    296/tex_offset    296/material    296/modulate    296/region    296/tile_mode    296/occluder_offset    296/occluder    296/navigation_offset    296/navigation    296/shape_offset    296/shape_transform 
   296/shape    296/shape_one_way    296/shape_one_way_margin    296/shapes    296/z_index 	   297/name    297/texture    297/normal_map    297/tex_offset    297/material    297/modulate    297/region    297/tile_mode    297/occluder_offset    297/occluder    297/navigation_offset    297/navigation    297/shape_offset    297/shape_transform 
   297/shape    297/shape_one_way    297/shape_one_way_margin    297/shapes    297/z_index 	   298/name    298/texture    298/normal_map    298/tex_offset    298/material    298/modulate    298/region    298/tile_mode    298/occluder_offset    298/occluder    298/navigation_offset    298/navigation    298/shape_offset    298/shape_transform 
   298/shape    298/shape_one_way    298/shape_one_way_margin    298/shapes    298/z_index 	   299/name    299/texture    299/normal_map    299/tex_offset    299/material    299/modulate    299/region    299/tile_mode    299/occluder_offset    299/occluder    299/navigation_offset    299/navigation    299/shape_offset    299/shape_transform 
   299/shape    299/shape_one_way    299/shape_one_way_margin    299/shapes    299/z_index 	   300/name    300/texture    300/normal_map    300/tex_offset    300/material    300/modulate    300/region    300/tile_mode    300/occluder_offset    300/occluder    300/navigation_offset    300/navigation    300/shape_offset    300/shape_transform 
   300/shape    300/shape_one_way    300/shape_one_way_margin    300/shapes    300/z_index 	   301/name    301/texture    301/normal_map    301/tex_offset    301/material    301/modulate    301/region    301/tile_mode    301/occluder_offset    301/occluder    301/navigation_offset    301/navigation    301/shape_offset    301/shape_transform 
   301/shape    301/shape_one_way    301/shape_one_way_margin    301/shapes    301/z_index 	   302/name    302/texture    302/normal_map    302/tex_offset    302/material    302/modulate    302/region    302/tile_mode    302/occluder_offset    302/occluder    302/navigation_offset    302/navigation    302/shape_offset    302/shape_transform 
   302/shape    302/shape_one_way    302/shape_one_way_margin    302/shapes    302/z_index 	   303/name    303/texture    303/normal_map    303/tex_offset    303/material    303/modulate    303/region    303/tile_mode    303/occluder_offset    303/occluder    303/navigation_offset    303/navigation    303/shape_offset    303/shape_transform 
   303/shape    303/shape_one_way    303/shape_one_way_margin    303/shapes    303/z_index 	   304/name    304/texture    304/normal_map    304/tex_offset    304/material    304/modulate    304/region    304/tile_mode    304/occluder_offset    304/occluder    304/navigation_offset    304/navigation    304/shape_offset    304/shape_transform 
   304/shape    304/shape_one_way    304/shape_one_way_margin    304/shapes    304/z_index 	   305/name    305/texture    305/normal_map    305/tex_offset    305/material    305/modulate    305/region    305/tile_mode    305/occluder_offset    305/occluder    305/navigation_offset    305/navigation    305/shape_offset    305/shape_transform 
   305/shape    305/shape_one_way    305/shape_one_way_margin    305/shapes    305/z_index 	   306/name    306/texture    306/normal_map    306/tex_offset    306/material    306/modulate    306/region    306/tile_mode    306/occluder_offset    306/occluder    306/navigation_offset    306/navigation    306/shape_offset    306/shape_transform 
   306/shape    306/shape_one_way    306/shape_one_way_margin    306/shapes    306/z_index 	   307/name    307/texture    307/normal_map    307/tex_offset    307/material    307/modulate    307/region    307/tile_mode    307/occluder_offset    307/occluder    307/navigation_offset    307/navigation    307/shape_offset    307/shape_transform 
   307/shape    307/shape_one_way    307/shape_one_way_margin    307/shapes    307/z_index 	   308/name    308/texture    308/normal_map    308/tex_offset    308/material    308/modulate    308/region    308/tile_mode    308/occluder_offset    308/occluder    308/navigation_offset    308/navigation    308/shape_offset    308/shape_transform 
   308/shape    308/shape_one_way    308/shape_one_way_margin    308/shapes    308/z_index 	   309/name    309/texture    309/normal_map    309/tex_offset    309/material    309/modulate    309/region    309/tile_mode    309/occluder_offset    309/occluder    309/navigation_offset    309/navigation    309/shape_offset    309/shape_transform 
   309/shape    309/shape_one_way    309/shape_one_way_margin    309/shapes    309/z_index 	   310/name    310/texture    310/normal_map    310/tex_offset    310/material    310/modulate    310/region    310/tile_mode    310/occluder_offset    310/occluder    310/navigation_offset    310/navigation    310/shape_offset    310/shape_transform 
   310/shape    310/shape_one_way    310/shape_one_way_margin    310/shapes    310/z_index 	   __meta__ 	   _bundled       Texture "   res://game/tiled/cave_tileset.png    PackedScene    res://game/cache/player.tscn    Script    res://engine/objects/player.gd    PackedScene    res://game/cache/stalfaux.tscn    Script    res://engine/objects/enemy.gd �   
   local://1 �     
   local://2 :�     
   local://3 c�     
   local://4 ��     
   local://5 ��     
   local://6 ޿     
   local://7 �     
   local://8 0�     
   local://9 Y�        local://10 ��        local://11 ��        local://12 ��        local://13 ��        local://14 &�        local://15 O�        local://16 x�        local://17 ��        local://18 ��        local://19 ��        local://20 �        local://21 E�        local://22 n�        local://23 ��        local://24 ��        local://25 ��        local://26 �        local://27 ;�        local://28 d�        local://29 ��        local://30 ��        local://31 ��        local://32 �        local://33 ��        local://34 ��        local://35 E�        local://36 n�        local://37 ��        local://38 ��        local://39 ��        local://40 �        local://41 ;�        local://42 ��        local://43 ��        local://44 x�        local://45 ��        local://46 ��        local://47 ��        local://48 �        local://49 E�        local://50 n�        local://51 ��        local://52 ��        local://53 ��        local://54 �        local://55 ;�        local://56 d�        local://57 ��        local://58 ��        local://59 ��        local://60 �        local://61 1�        local://62 Z�        local://63 ��        local://64 ��        local://65 ��        local://66 ��        local://67 G�        local://68 ��        local://69 ��        local://70 �        local://71 <�        local://72 e�        local://73 ��        local://74 ��        local://75 @�        local://76 i�        local://77 ��        local://78 ��        local://79 �        local://80 -�        local://81 V�        local://82 �        local://83 ��        local://84 ��        local://85 ��        local://86 #�        local://87 L�        local://88 u�        local://89 ��        local://90 ��        local://91 ��        local://92 �        local://93 B�        local://94 k�        local://95 ��        local://96 ��        local://97 ��        local://98 �        local://99 8�        local://100 a�        local://101 ��        local://102 ��        local://103 ��        local://104 �        local://105 .�        local://106 W�        local://107 ��        local://108 ��        local://109 ��        local://110 ��        local://111 $�        local://112 M�        local://113 v�        local://114 ��        local://115 ��        local://116 ��        local://117 �        local://118 C�        local://119 l�        local://120 ��        local://121 ��        local://122 ��        local://123 �        local://124 9�        local://125 b�        local://126 ��        local://127 ��        local://128 ��        local://129 �        local://130 /�        local://131 X�        local://132 ��        local://133 ��        local://134 ��        local://135 ��        local://136 %�        local://137 N�        local://138 w�        local://139 ��        local://140 ��        local://141 ��        local://142 �        local://143 D�        local://144 m�        local://145 ��        local://146 ��        local://147 ��        local://148 �        local://149 :�        local://150 c�        local://151 ��        local://152 ��        local://153 ��        local://154 G�        local://155 p�        local://156 ��        local://157 ��        local://158 ��        local://159 �        local://160 =�        local://161 f�        local://162 ��        local://163 	�        local://164 R�        local://165 ��        local://166 ��        local://167 �        local://168 ��        local://169 ��        local://170 ��        local://171 �        local://172 <�        local://173 e�        local://174 ��        local://175 ��        RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConcavePolygonShape2D       %                    ��      ��  �A  ��  �A  ��r�A�� �r�A�� �? AÁ��? AÁ��� A�� A�           RectangleShape2D       
      A  �@   ConcavePolygonShape2D       %                �A      �A      �A  �A  �A  �A� AY�A� AY�A   AЛ�@   AЛ�@M2=Л�@M2=Л�@           RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   ConcavePolygonShape2D       %                    �A      �A  �A  �A  �A  �A  �A� A  �A� AЛ�@Л�@Л�@Л�@Л�@M2=Л�@M2=           RectangleShape2D       
      A  �@   ConcavePolygonShape2D       %                    �A      �A  ��  �A  ��  �A�M�   A�M�   AЛ��   AЛ��   A   �M2�   �M2�           RectangleShape2D       
      A  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %        ~�      ��  ��      ��           ConcavePolygonShape2D       %   
                 �A      �A  BA  A  BA  A  �@  ��  �@  ��                           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %        ��      ��  �      ��           ConvexPolygonShape2D       %            �A          �@   �  GA  �A   ConvexPolygonShape2D       %        ��      �� ���      ��           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %            �A          �@  �=  NA  �A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     @@  �@   RectangleShape2D       
     @@  �@   RectangleShape2D       
      ?   A   RectangleShape2D       
      ?   A   RectangleShape2D       
     @@  �@   RectangleShape2D       
     @@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �?  �@   RectangleShape2D       
     @@   @   RectangleShape2D       
     �?  �@   RectangleShape2D       
     @@   @   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   ConvexPolygonShape2D       %        ��  �AD��.:�              �A   ConvexPolygonShape2D       %            �A        ]�@�.�=�EGA��~A   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   ConcavePolygonShape2D       %   
             ��      ��    ����*�������*���      ��      ��                           ConvexPolygonShape2D       %                    ��D�@��~�N�EA�.�=   ConcavePolygonShape2D       %   
                 ��      ��D��Y}�D��Y}�  ��      ��                               RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConcavePolygonShape2D       %   
           �EGA    �EGA    Tt�@*���Tt�@*���      ��      ��                           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   TileSet            cave_tileset                        	          
   
         ��                  �?  �?  �?  �?                �A  �A             
                        
                        
      A   �        �?       �  �?   A   �                              �?                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                         
         ��                  �?  �?  �?  �?         �A      �A  �A!          "   
           #          $   
           %          &   
      A   �'        �?       �  �?   A   �(            )          *        �?+                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ,          -          .             /          0   
         ��1          2        �?  �?  �?  �?3         B      �A  �A4          5   
           6          7   
           8          9   
      A   �:        �?       �  �?   A   �;            <          =        �?>                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ?          @          A             B          C   
         ��D          E        �?  �?  �?  �?F        @B      �A  �AG          H   
           I          J   
           K          L   
      A   �M        �?       �  �?   A   �N            O          P        �?Q                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           R          S          T             U          V   
         ��W          X        �?  �?  �?  �?Y        �B      �A  �AZ          [   
           \          ]   
           ^          _   
      A   �`        �?       �  �?   A   �a            b          c        �?d                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           e          f          g             h          i   
         ��j          k        �?  �?  �?  �?l            �A  �A  �Am          n   
           o          p   
           q          r   
      A   �s        �?       �  �?   A   �t            u          v        �?w                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           x          y          z             {          |   
         ��}          ~        �?  �?  �?  �?        �A  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                       shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�         B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��         	   �          �        �?�                     shape       	         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�        @B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��         
   �          �        �?�                     shape       
         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�        �B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�             B  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�        �A   B  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
         ���          �        �?  �?  �?  �?�         B   B  �A  �A�          �   
           �          �   
           �          �   
      A   ��        �?       �  �?   A   ��            �          �        �?�                     shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �          �          �                         
         ��                �?  �?  �?  �?       @B   B  �A  �A           
                      
           	         
  
      A   �       �?       �  �?   A   �                           �?                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �B   B  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �                     !       �?"                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           #         $         %            &         '  
         ��(         )       �?  �?  �?  �?*           @B  �A  �A+         ,  
           -         .  
           /         0  
      A   �1       �?       �  �?   A   �2           3         4       �?5                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           6         7         8            9         :  
         ��;         <       �?  �?  �?  �?=       �A  @B  �A  �A>         ?  
           @         A  
           B         C  
      A   �D       �?       �  �?   A   �E           F         G       �?H                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           I         J         K            L         M  
         ��N         O       �?  �?  �?  �?P        B  @B  �A  �AQ         R  
           S         T  
           U         V  
      A   �W       �?       �  �?   A   �X           Y         Z       �?[                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           \         ]         ^            _         `  
         ��a         b       �?  �?  �?  �?c       @B  @B  �A  �Ad         e  
           f         g  
           h         i  
      A   �j       �?       �  �?   A   �k           l         m       �?n                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           o         p         q            r         s  
         ��t         u       �?  �?  �?  �?v       �B  @B  �A  �Aw         x  
           y         z  
           {         |  
      A   �}       �?       �  �?   A   �~                    �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��           �         �       �?�                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
                       
      A   �       �?       �  �?   A   �                           �?                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                             	            
           
         ��                �?  �?  �?  �?        B  �B  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �                           �?                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                 �?  �?  �?  �?!       @B  �B  �A  �A"         #  
           $         %  
           &         '  
      A   �(       �?       �  �?   A   �)           *         +       �?,                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           -         .         /            0         1  
         ��2         3       �?  �?  �?  �?4       �B  �B  �A  �A5         6  
           7         8  
           9         :  
      A   �;       �?       �  �?   A   �<           =         >       �??                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           @         A         B            C         D  
         ��E         F       �?  �?  �?  �?G           �B  �A  �AH         I  
           J         K  
           L         M  
           N       �?       �  �?        O            P         Q       �?R                    shape                 shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           S         T         U            V         W  
         ��X         Y       �?  �?  �?  �?Z       �A  �B  �A  �A[         \  
           ]         ^  
           _         `  
      A  @�a       �?       �  �?   A  @�b        !   c         d       �?e                    shape       !         shape_transform      �?       �  �?   A  @�      one_way              one_way_margin      �?      autotile_coord 
           f         g         h            i         j  
         ��k         l       �?  �?  �?  �?m        B  �B  �A  �An         o  
           p         q  
           r         s  
         ��t       �?       �  �?      ��u        "   v         w       �?x                    shape       "         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           y         z         {            |         }  
         ��~                �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A  ���       �?       �  �?  @A  ���        #   �         �       �?�                    shape       #         shape_transform      �?       �  �?  @A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
     �@  ���       �?       �  �?  �@  ���        $   �         �       �?�                    shape       $         shape_transform      �?       �  �?  �@  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
     �@   ��       �?       �  �?  �@   ��        %   �         �       �?�                    shape       %         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A   ��       �?       �  �?  @A   ��        &   �         �       �?�                    shape       &         shape_transform      �?       �  �?  @A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A  @��       �?       �  �?  @A  @��        '   �         �       �?�                    shape       '         shape_transform      �?       �  �?  @A  @�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
     �@  @��       �?       �  �?  �@  @��        (   �         �       �?�                    shape       (         shape_transform      �?       �  �?  �@  @�      one_way              one_way_margin      �?      autotile_coord 
           �         �                                 
         ��                �?  �?  �?  �?            C  �A  �A           
                    	  
           
           
         ��       �?       �  �?      ��        )                   �?                    shape       )         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �A   C  �A  �A           
                      
                      
      A  ��       �?       �  �?   A  ��         *   !         "       �?#                    shape       *         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           $         %         &            '         (  
         ��)         *       �?  �?  �?  �?+        B   C  �A  �A,         -  
           .         /  
           0         1  
     �A  ��2       �?       �  �?  �A  ��3        +   4         5       �?6                    shape       +         shape_transform      �?       �  �?  �A  ��      one_way              one_way_margin      �?      autotile_coord 
           7         8         9            :         ;  
         ��<         =       �?  �?  �?  �?>       @B   C  �A  �A?         @  
           A         B  
           C         D  
      A  @�E       �?       �  �?   A  @�F        ,   G         H       �?I                    shape       ,         shape_transform      �?       �  �?   A  @�      one_way              one_way_margin      �?      autotile_coord 
           J         K         L            M         N  
         ��O         P       �?  �?  �?  �?Q       �B   C  �A  �AR         S  
           T         U  
           V         W  
     @A   �X       �?       �  �?  @A   �Y        -   Z         [       �?\                    shape       -         shape_transform      �?       �  �?  @A   �      one_way              one_way_margin      �?      autotile_coord 
           ]         ^         _            `         a  
         ��b         c       �?  �?  �?  �?d           C  �A  �Ae         f  
           g         h  
           i         j  
      A  ��k       �?       �  �?   A  ��l        .   m         n       �?o                    shape       .         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           p         q         r            s         t  
         ��u         v       �?  �?  �?  �?w       �A  C  �A  �Ax         y  
           z         {  
           |         }  
      A  ��~       �?       �  �?   A  ��        /   �         �       �?�                    shape       /         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  C  �A  �A�         �  
           �         �  
           �         �  
     �@   ��       �?       �  �?  �@   ��        0   �         �       �?�                    shape       0         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  C  �A  �A�         �  
           �         �  
           �         �  
     �@   ��       �?       �  �?  �@   ��        1   �         �       �?�                    shape       1         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  C  �A  �A�         �  
           �         �  
           �         �  
     @A   ��       �?       �  �?  @A   ��        2   �         �       �?�                    shape       2         shape_transform      �?       �  �?  @A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�            C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A   C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B   C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B   C  �A  �A�         �  
           �            
                      
                  �?          �?                                                     	         
                       
         ��                �?  �?  �?  �?       �B   C  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��          !       �?  �?  �?  �?"           0C  �A  �A#         $  
           %         &  
           '         (  
           )       �?          �?        *         +         ,         -         .         /         0            1         2  
         ��3         4       �?  �?  �?  �?5       �A  0C  �A  �A6         7  
           8         9  
           :         ;  
           <       �?          �?        =         >         ?         @         A         B         C            D         E  
         ��F         G       �?  �?  �?  �?H        B  0C  �A  �AI         J  
           K         L  
           M         N  
           O       �?          �?        P         Q         R         S         T         U         V            W         X  
         ��Y         Z       �?  �?  �?  �?[       @B  0C  �A  �A\         ]  
           ^         _  
           `         a  
           b       �?          �?        c         d         e         f         g         h         i            j         k  
         ��l         m       �?  �?  �?  �?n       �B  0C  �A  �Ao         p  
           q         r  
           s         t  
           u       �?          �?        v         w         x         y         z         {         |            }         ~  
         ��         �       �?  �?  �?  �?�           @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  @C  �A  �A�         �  
           �         �  
           �         �  
      A  @��       �?       �  �?   A  @��        3   �         �       �?�                    shape       3         shape_transform      �?       �  �?   A  @�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           PC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  PC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �                                          
         ��                �?  �?  �?  �?        B  PC  �A  �A           
           	         
  
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?       @B  PC  �A  �A           
                      
                      
                   �?          �?        !         "         #         $         %         &         '            (         )  
         ��*         +       �?  �?  �?  �?,       �B  PC  �A  �A-         .  
           /         0  
           1         2  
           3       �?          �?        4         5         6         7         8         9         :            ;         <  
         ��=         >       �?  �?  �?  �??           `C  �A  �A@         A  
           B         C  
           D         E  
           F       �?          �?        G         H         I         J         K         L         M            N         O  
         ��P         Q       �?  �?  �?  �?R       �A  `C  �A  �AS         T  
           U         V  
           W         X  
           Y       �?          �?        Z         [         \         ]         ^         _         `            a         b  
         ��c         d       �?  �?  �?  �?e        B  `C  �A  �Af         g  
           h         i  
           j         k  
           l       �?          �?        m         n         o         p         q         r         s            t         u  
         ��v         w       �?  �?  �?  �?x       @B  `C  �A  �Ay         z  
           {         |  
           }         ~  
                  �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  `C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
                       
                      
                  �?          �?                                            	         
                                
         ��                �?  �?  �?  �?       �A  �C  �A  �A           
                      
                      
                  �?          �?                                                                                      
         ��!         "       �?  �?  �?  �?#        B  �C  �A  �A$         %  
           &         '  
           (         )  
           *       �?          �?        +         ,         -         .         /         0         1            2         3  
         ��4         5       �?  �?  �?  �?6       @B  �C  �A  �A7         8  
           9         :  
           ;         <  
           =       �?          �?        >         ?         @         A         B         C         D            E         F  
         ��G         H       �?  �?  �?  �?I       �B  �C  �A  �AJ         K  
           L         M  
           N         O  
           P       �?          �?        Q         R         S         T         U         V         W            X         Y  
         ��Z         [       �?  �?  �?  �?\           �C  �A  �A]         ^  
           _         `  
           a         b  
           c       �?          �?        d         e         f         g         h         i         j            k         l  
         ��m         n       �?  �?  �?  �?o       �A  �C  �A  �Ap         q  
           r         s  
           t         u  
           v       �?          �?        w         x         y         z         {         |         }            ~           
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �                                                   
         ��                �?  �?  �?  �?       �B  �C  �A  �A         	  
           
           
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?           �C  �A  �A           
                      
                       
           !       �?          �?        "         #         $         %         &         '         (            )         *  
         ��+         ,       �?  �?  �?  �?-       �A  �C  �A  �A.         /  
           0         1  
           2         3  
           4       �?          �?        5         6         7         8         9         :         ;            <         =  
         ��>         ?       �?  �?  �?  �?@        B  �C  �A  �AA         B  
           C         D  
           E         F  
           G       �?          �?        H         I         J         K         L         M         N            O         P  
         ��Q         R       �?  �?  �?  �?S       @B  �C  �A  �AT         U  
           V         W  
           X         Y  
           Z       �?          �?        [         \         ]         ^         _         `         a            b         c  
         ��d         e       �?  �?  �?  �?f       �B  �C  �A  �Ag         h  
           i         j  
           k         l  
           m       �?          �?        n         o         p         q         r         s         t            u         v  
         ��w         x       �?  �?  �?  �?y           �C  �A  �Az         {  
           |         }  
           ~           
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�            
                      
                      
      A   �       �?       �  �?   A   �        4                   �?	                    shape       4         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           
                                         
         ��                �?  �?  �?  �?       @B  �C  �A  �A           
                      
                      
                  �?          �?                                                                                    !  
         ��"         #       �?  �?  �?  �?$       �B  �C  �A  �A%         &  
           '         (  
           )         *  
      A   �+       �?       �  �?   A   �,        5   -         .       �?/                    shape       5         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           0         1         2            3         4  
         ��5         6       �?  �?  �?  �?7           �C  �A  �A8         9  
           :         ;  
           <         =  
           >       �?          �?        ?         @         A         B         C         D         E            F         G  
         ��H         I       �?  �?  �?  �?J       �A  �C  �A  �AK         L  
           M         N  
           O         P  
      A   �Q       �?       �  �?   A   �R        6   S         T       �?U                    shape       6         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           V         W         X            Y         Z  
         ��[         \       �?  �?  �?  �?]        B  �C  �A  �A^         _  
           `         a  
           b         c  
           d       �?          �?        e         f         g         h         i         j         k            l         m  
         ��n         o       �?  �?  �?  �?p       @B  �C  �A  �Aq         r  
           s         t  
           u         v  
      A   �w       �?       �  �?   A   �x        7   y         z       �?{                    shape       7         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           |         }         ~                     �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        8   �         �       �?�                    shape       8         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        9   �         �       �?�                    shape       9         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        :   �         �       �?�                    shape       :         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        ;   �         �       �?�                    shape       ;         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �          	         	         	         	            	         	  
         ��	         	       �?  �?  �?  �?	       �A  �C  �A  �A		         
	  
           	         	  
           	         	  
           	       �?          �?        	         	         	         	         	         	         	            	         	  
         ��	         	       �?  �?  �?  �?	        B  �C  �A  �A	         	  
           	         	  
            	         !	  
           "	       �?          �?        #	         $	         %	         &	         '	         (	         )	            *	         +	  
         ��,	         -	       �?  �?  �?  �?.	       @B  �C  �A  �A/	         0	  
           1	         2	  
           3	         4	  
           5	       �?          �?        6	         7	         8	         9	         :	         ;	         <	            =	         >	  
         ��?	         @	       �?  �?  �?  �?A	       �B  �C  �A  �AB	         C	  
           D	         E	  
           F	         G	  
      A   �H	       �?       �  �?   A   �I	        <   J	         K	       �?L	                    shape       <         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           M	         N	         O	            P	         Q	  
         ��R	         S	       �?  �?  �?  �?T	           �C  �A  �AU	         V	  
           W	         X	  
           Y	         Z	  
      A   �[	       �?       �  �?   A   �\	        =   ]	         ^	       �?_	                    shape       =         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           `	         a	         b	            c	         d	  
         ��e	         f	       �?  �?  �?  �?g	       �A  �C  �A  �Ah	         i	  
           j	         k	  
           l	         m	  
      A   �n	       �?       �  �?   A   �o	        >   p	         q	       �?r	                    shape       >         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           s	         t	         u	            v	         w	  
         ��x	         y	       �?  �?  �?  �?z	        B  �C  �A  �A{	         |	  
           }	         ~	  
           	         �	  
      A   ��	       �?       �  �?   A   ��	        ?   �	         �	       �?�	                    shape       ?         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       @B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
      A   ��	       �?       �  �?   A   ��	        @   �	         �	       �?�	                    shape       @         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       �B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
      A   ��	       �?       �  �?   A   ��	        A   �	         �	       �?�	                    shape       A         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	           �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
     �A    �	       �?       �  �?  �A    �	        B   �	         �	       �?�	                    shape       B         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       �A  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
         ���	       �?       �  �?      ���	        C   �	         �	       �?�	                    shape       C         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	        B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?          �?        �	         �	         �	         �	         �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       @B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?          �?        �	         �	         �	         �	         �	         �	         �	            �	         �	  
         ���	         �	       �?  �?  �?  �?�	       �B  �C  �A  �A 
         
  
           
         
  
           
         
  
      A   �
       �?       �  �?   A   �
        D   
         	
       �?

                    shape       D         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           
         
         
            
         
  
         ��
         
       �?  �?  �?  �?
           �C  �A  �A
         
  
           
         
  
           
         
  
      A   �
       �?       �  �?   A   �
        E   
         
       �?
                    shape       E         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           
         
          
            !
         "
  
         ��#
         $
       �?  �?  �?  �?%
       �A  �C  �A  �A&
         '
  
           (
         )
  
           *
         +
  
      A   �,
       �?       �  �?   A   �-
        F   .
         /
       �?0
                    shape       F         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           1
         2
         3
            4
         5
  
         ��6
         7
       �?  �?  �?  �?8
        B  �C  �A  �A9
         :
  
           ;
         <
  
           =
         >
  
           ?
       �?          �?        @
         A
         B
         C
         D
         E
         F
            G
         H
  
         ��I
         J
       �?  �?  �?  �?K
       @B  �C  �A  �AL
         M
  
           N
         O
  
           P
         Q
  
           R
       �?          �?        S
         T
         U
         V
         W
         X
         Y
            Z
         [
  
         ��\
         ]
       �?  �?  �?  �?^
       �B  �C  �A  �A_
         `
  
           a
         b
  
           c
         d
  
      A   �e
       �?       �  �?   A   �f
        G   g
         h
       �?i
                    shape       G         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           j
         k
         l
            m
         n
  
         ��o
         p
       �?  �?  �?  �?q
           �C  �A  �Ar
         s
  
           t
         u
  
           v
         w
  
           x
       �?          �?        y
         z
         {
         |
         }
         ~
         
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       �A  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
     �A    �
       �?       �  �?  �A    �
        H   �
         �
       �?�
                    shape       H         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
        B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
         ���
       �?       �  �?      ���
        I   �
         �
       �?�
                    shape       I         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       @B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?          �?        �
         �
         �
         �
         �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       �B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?          �?        �
         �
         �
         �
         �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
           �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
     �A    �
       �?       �  �?  �A    �
        J   �
         �
       �?�
                    shape       J         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
       �A  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
      A   ��
       �?       �  �?   A   ��
        K   �
         �
       �?�
                    shape       K         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
         ���
         �
       �?  �?  �?  �?�
        B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
      A   ��
       �?       �  �?   A   ��
        L   �
                 �?                    shape       L         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?	       @B  �C  �A  �A
           
                      
                      
         ��       �?       �  �?      ��        M                   �?                    shape       M         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �B  �C  �A  �A           
                       
           !         "  
           #       �?          �?        $         %         &         '         (         )         *            +         ,  
         ��-         .       �?  �?  �?  �?/           �C  �A  �A0         1  
           2         3  
           4         5  
      A   �6       �?       �  �?   A   �7        N   8         9       �?:                    shape       N         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ;         <         =            >         ?  
         ��@         A       �?  �?  �?  �?B       �A  �C  �A  �AC         D  
           E         F  
           G         H  
      A   �I       �?       �  �?   A   �J        O   K         L       �?M                    shape       O         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           N         O         P            Q         R  
         ��S         T       �?  �?  �?  �?U        B  �C  �A  �AV         W  
           X         Y  
           Z         [  
      A   �\       �?       �  �?   A   �]        P   ^         _       �?`                    shape       P         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           a         b         c            d         e  
         ��f         g       �?  �?  �?  �?h       @B  �C  �A  �Ai         j  
           k         l  
           m         n  
      A   �o       �?       �  �?   A   �p        Q   q         r       �?s                    shape       Q         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           t         u         v            w         x  
         ��y         z       �?  �?  �?  �?{       �B  �C  �A  �A|         }  
           ~           
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        R   �         �       �?�                    shape       R         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        S   �         �       �?�                    shape       S         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�            D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        T   �         �       �?�                    shape       T         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?        �A   D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        U   	         
       �?                    shape       U         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?        B   D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        V                   �?                    shape       V         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                              !            "         #  
         ��$         %       �?  �?  �?  �?&       @B   D  �A  �A'         (  
           )         *  
           +         ,  
      A   �-       �?       �  �?   A   �.        W   /         0       �?1                    shape       W         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           2         3         4            5         6  
         ��7         8       �?  �?  �?  �?9       �B   D  �A  �A:         ;  
           <         =  
           >         ?  
      A   �@       �?       �  �?   A   �A        X   B         C       �?D                    shape       X         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           E         F         G            H         I  
         ��J         K       �?  �?  �?  �?L           D  �A  �AM         N  
           O         P  
           Q         R  
      A   �S       �?       �  �?   A   �T        Y   U         V       �?W                    shape       Y         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           X         Y         Z            [         \  
         ��]         ^       �?  �?  �?  �?_       �A  D  �A  �A`         a  
           b         c  
           d         e  
      A   �f       �?       �  �?   A   �g        Z   h         i       �?j                    shape       Z         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           k         l         m            n         o  
         ��p         q       �?  �?  �?  �?r        B  D  �A  �As         t  
           u         v  
           w         x  
      A   �y       �?       �  �?   A   �z        [   {         |       �?}                    shape       [         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ~                  �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        \   �         �       �?�                    shape       \         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        ]   �         �       �?�                    shape       ]         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        ^   �         �       �?�                    shape       ^         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        _   �         �       �?�                    shape       _         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        `   �         �       �?�                    shape       `         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        a   �         �       �?�                    shape       a         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �                                                                              
         ��         	       �?  �?  �?  �?
           D  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?       �A  D  �A  �A           
                     !  
           "         #  
           $       �?          �?        %         &         '         (         )         *         +            ,         -  
         ��.         /       �?  �?  �?  �?0        B  D  �A  �A1         2  
           3         4  
           5         6  
           7       �?          �?        8         9         :         ;         <         =         >            ?         @  
         ��A         B       �?  �?  �?  �?C       @B  D  �A  �AD         E  
           F         G  
           H         I  
           J       �?          �?        K         L         M         N         O         P         Q            R         S  
         ��T         U       �?  �?  �?  �?V       �B  D  �A  �AW         X  
           Y         Z  
           [         \  
           ]       �?          �?        ^         _         `         a         b         c         d            e         f  
         ��g         h       �?  �?  �?  �?i           D  �A  �Aj         k  
           l         m  
           n         o  
           p       �?          �?        q         r         s         t         u         v         w            x         y  
         ��z         {       �?  �?  �?  �?|       �A  D  �A  �A}         ~  
                    �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���                 �?  �?  �?  �?       @B  D  �A  �A           
                      
                      
                  �?          �?        	         
                                                                    
         ��                �?  �?  �?  �?       �B  D  �A  �A           
                      
                      
                  �?          �?                                                      !         "            #         $  
         ��%         &       �?  �?  �?  �?'           D  �A  �A(         )  
           *         +  
           ,         -  
           .       �?          �?        /         0         1         2         3         4         5            6         7  
         ��8         9       �?  �?  �?  �?:       �A  D  �A  �A;         <  
           =         >  
           ?         @  
           A       �?          �?        B         C         D         E         F         G         H            I         J  
         ��K         L       �?  �?  �?  �?M        B  D  �A  �AN         O  
           P         Q  
           R         S  
           T       �?          �?        U         V         W         X         Y         Z         [            \         ]  
         ��^         _       �?  �?  �?  �?`       @B  D  �A  �Aa         b  
           c         d  
           e         f  
           g       �?          �?        h         i         j         k         l         m         n            o         p  
         ��q         r       �?  �?  �?  �?s       �B  D  �A  �At         u  
           v         w  
           x         y  
           z       �?          �?        {         |         }         ~                  �         �            �         �  
         ���         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        b   �         �       �?�                    shape       b         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        c   �         �       �?�                    shape       c         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�            D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        d   �         �       �?�                    shape       d         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A   D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   �         e                   �?                    shape       e         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��	         
       �?  �?  �?  �?        B   D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        f                   �?                    shape       f         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       @B   D  �A  �A            
           !         "  
           #         $  
           %       �?          �?        &         '         (         )         *         +         ,            -         .  
         ��/         0       �?  �?  �?  �?1       �B   D  �A  �A2         3  
           4         5  
           6         7  
           8       �?          �?        9         :         ;         <         =         >         ?            @         A  
         ��B         C       �?  �?  �?  �?D           $D  �A  �AE         F  
           G         H  
           I         J  
      A   �K       �?       �  �?   A   �L        g   M         N       �?O                    shape       g         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           P         Q         R            S         T  
         ��U         V       �?  �?  �?  �?W       �A  $D  �A  �AX         Y  
           Z         [  
           \         ]  
      A   �^       �?       �  �?   A   �_        h   `         a       �?b                    shape       h         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           c         d         e            f         g  
         ��h         i       �?  �?  �?  �?j        B  $D  �A  �Ak         l  
           m         n  
           o         p  
      A   �q       �?       �  �?   A   �r        i   s         t       �?u                    shape       i         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           v         w         x            y         z  
         ��{         |       �?  �?  �?  �?}       @B  $D  �A  �A~           
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        j   �         �       �?�                    shape       j         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  $D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        k   �         �       �?�                    shape       k         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        l   �         �       �?�                    shape       l         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        m   �         �       �?�                    shape       m         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        n   �         �       �?�                    shape       n         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        o   �         �       �?�                    shape       o         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        p   �         �       �?�                    shape       p         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ��                 �?  �?  �?  �?           ,D  �A  �A           
                      
                      
      A   �	       �?       �  �?   A   �
        q                   �?                    shape       q         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       �A  ,D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �        r                   �?                     shape       r         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           !         "         #            $         %  
         ��&         '       �?  �?  �?  �?(        B  ,D  �A  �A)         *  
           +         ,  
           -         .  
      A   �/       �?       �  �?   A   �0        s   1         2       �?3                    shape       s         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           4         5         6            7         8  
         ��9         :       �?  �?  �?  �?;       @B  ,D  �A  �A<         =  
           >         ?  
           @         A  
      A   �B       �?       �  �?   A   �C        t   D         E       �?F                    shape       t         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           G         H         I            J         K  
         ��L         M       �?  �?  �?  �?N       �B  ,D  �A  �AO         P  
           Q         R  
           S         T  
           U       �?          �?        V         W         X         Y         Z         [         \            ]         ^  
         ��_         `       �?  �?  �?  �?a           0D  �A  �Ab         c  
           d         e  
           f         g  
           h       �?          �?        i         j         k         l         m         n         o            p         q  
         ��r         s       �?  �?  �?  �?t       �A  0D  �A  �Au         v  
           w         x  
           y         z  
           {       �?          �?        |         }         ~                  �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  4D  �A  �A�         �  
           �         �  
           �         �  
                   �?          �?                                                                                   	  
         ��
                �?  �?  �?  �?       �B  4D  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?           8D  �A  �A          !  
           "         #  
           $         %  
           &       �?          �?        '         (         )         *         +         ,         -            .         /  
         ��0         1       �?  �?  �?  �?2       �A  8D  �A  �A3         4  
           5         6  
           7         8  
           9       �?          �?        :         ;         <         =         >         ?         @            A         B  
         ��C         D       �?  �?  �?  �?E        B  8D  �A  �AF         G  
           H         I  
           J         K  
           L       �?          �?        M         N         O         P         Q         R         S            T         U  
         ��V         W       �?  �?  �?  �?X       @B  8D  �A  �AY         Z  
           [         \  
           ]         ^  
      A   �_       �?       �  �?   A   �`        u   a         b       �?c                    shape       u         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           d         e         f            g         h  
         ��i         j       �?  �?  �?  �?k       �B  8D  �A  �Al         m  
           n         o  
           p         q  
      A   �r       �?       �  �?   A   �s        v   t         u       �?v                    shape       v         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           w         x         y            z         {  
         ��|         }       �?  �?  �?  �?~           <D  �A  �A         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        w   �         �       �?�                    shape       w         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        x   �         �       �?�                    shape       x         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        y   �         �       �?�                    shape       y         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        z   �         �       �?�                    shape       z         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        {   �         �       �?�                    shape       {         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           @D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        |   �         �       �?�                    shape       |         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  @D  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        }   �         �       �?�                    shape       }         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �            
         ��                �?  �?  �?  �?        B  @D  �A  �A           
                      
                    	  
      A   �
       �?       �  �?   A   �        ~                   �?                    shape       ~         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?       @B  @D  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �                            �?!                    shape                shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           "         #         $            %         &  
         ��'         (       �?  �?  �?  �?)       �B  @D  �A  �A*         +  
           ,         -  
           .         /  
      A   �0       �?       �  �?   A   �1        �   2         3       �?4                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           5         6         7            8         9  
         ��:         ;       �?  �?  �?  �?<           DD  �A  �A=         >  
           ?         @  
           A         B  
      A   �C       �?       �  �?   A   �D        �   E         F       �?G                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           H         I         J            K         L  
         ��M         N       �?  �?  �?  �?O       �A  DD  �A  �AP         Q  
           R         S  
           T         U  
      A   �V       �?       �  �?   A   �W        �   X         Y       �?Z                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           [         \         ]            ^         _  
         ��`         a       �?  �?  �?  �?b        B  DD  �A  �Ac         d  
           e         f  
           g         h  
      A   �i       �?       �  �?   A   �j        �   k         l       �?m                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           n         o         p            q         r  
         ��s         t       �?  �?  �?  �?u       @B  DD  �A  �Av         w  
           x         y  
           z         {  
           |       �?          �?        }         ~                  �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  DD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           HD  �A  �A�         �  
           �         �  
           �         �  
     PA  ���       �?       �  �?  PA  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  PA  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  HD  �A  �A�         �  
           �         �  
           �         �  
     @@  ���       �?       �  �?  @@  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @@  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           LD  �A  �A�         �  
           �         �  
           �            
     xA  ��       �?       �  �?  xA  ��        �                   �?                    shape       �         shape_transform      �?       �  �?  xA  ��      one_way              one_way_margin      �?      autotile_coord 
                                         	         
  
         ��                �?  �?  �?  �?       �A  LD  �A  �A           
                      
                      
                  �?          �?                                                                                     
         ��                �?  �?  �?  �?         B  LD  �A  �A!         "  
           #         $  
           %         &  
      ?   �'       �?       �  �?   ?   �(        �   )         *       �?+                    shape       �         shape_transform      �?       �  �?   ?   �      one_way              one_way_margin      �?      autotile_coord 
           ,         -         .            /         0  
         ��1         2       �?  �?  �?  �?3       @B  LD  �A  �A4         5  
           6         7  
           8         9  
           :       �?          �?        ;         <         =         >         ?         @         A            B         C  
         ��D         E       �?  �?  �?  �?F       �B  LD  �A  �AG         H  
           I         J  
           K         L  
           M       �?          �?        N         O         P         Q         R         S         T            U         V  
         ��W         X       �?  �?  �?  �?Y           PD  �A  �AZ         [  
           \         ]  
           ^         _  
     PA  0�`       �?       �  �?  PA  0�a        �   b         c       �?d                    shape       �         shape_transform      �?       �  �?  PA  0�      one_way              one_way_margin      �?      autotile_coord 
           e         f         g            h         i  
         ��j         k       �?  �?  �?  �?l       �A  PD  �A  �Am         n  
           o         p  
           q         r  
           s       �?          �?        t         u         v         w         x         y         z            {         |  
         ��}         ~       �?  �?  �?  �?        B  PD  �A  �A�         �  
           �         �  
           �         �  
     @@  0��       �?       �  �?  @@  0��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @@  0�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  PD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  PD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           TD  �A  �A�         �  
           �         �  
           �         �  
     @A  ���       �?       �  �?  @A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  TD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  TD  �A  �A�         �  
           �         �  
           �         �  
     �@  ���       �?       �  �?  �@  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �@  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  TD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �                        
         ��                �?  �?  �?  �?       �B  TD  �A  �A           
                      
           	         
  
      A   �       �?       �  �?   A   �        �                   �?                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?           XD  �A  �A           
                      
                      
     pA   �       �?       �  �?  pA   �        �             !       �?"                    shape       �         shape_transform      �?       �  �?  pA   �      one_way              one_way_margin      �?      autotile_coord 
                       shape       �         shape_transform      �?       �  �?  PA   �      one_way              one_way_margin      �?      autotile_coord 
           #         $         %            &         '  
         ��(         )       �?  �?  �?  �?*       �A  XD  �A  �A+         ,  
           -         .  
           /         0  
           1       �?          �?        2         3         4         5         6         7         8            9         :  
         ��;         <       �?  �?  �?  �?=        B  XD  �A  �A>         ?  
           @         A  
           B         C  
     �?   �D       �?       �  �?  �?   �E        �   F         G       �?H                    shape       �         shape_transform      �?       �  �?  �?   �      one_way              one_way_margin      �?      autotile_coord 
                       shape       �         shape_transform      �?       �  �?  @@   �      one_way              one_way_margin      �?      autotile_coord 
           I         J         K            L         M  
         ��N         O       �?  �?  �?  �?P       @B  XD  �A  �AQ         R  
           S         T  
           U         V  
      A   �W       �?       �  �?   A   �X        �   Y         Z       �?[                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           \         ]         ^            _         `  
         ��a         b       �?  �?  �?  �?c       �B  XD  �A  �Ad         e  
           f         g  
           h         i  
      A   �j       �?       �  �?   A   �k        �   l         m       �?n                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           o         p         q            r         s  
         ��t         u       �?  �?  �?  �?v           \D  �A  �Aw         x  
           y         z  
           {         |  
     @A  0�}       �?       �  �?  @A  0�~        �            �       �?�                    shape       �         shape_transform      �?       �  �?  @A  0�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  \D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  \D  �A  �A�         �  
           �         �  
           �         �  
     �@  0��       �?       �  �?  �@  0��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �@  0�      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  \D  �A  �A�         �  
           �         �  
           �         �  
      A  ���       �?       �  �?   A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  \D  �A  �A�         �  
           �         �  
           �         �  
      A  ���       �?       �  �?   A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           `D  �A  �A�         �  
           �         �  
           �         �  
     �A  ���       �?       �  �?  �A  ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A  ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  `D  �A  �A�         �  
           �         �  
           �         �  
         ���       �?       �  �?      ���        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?      ��      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  `D  �A  �A�         �  
           �         �  
                       
     �@   �       �?       �  �?  �@   �        �                   �?                    shape       �         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
                             	            
           
         ��                �?  �?  �?  �?       @B  `D  �A  �A           
                      
                      
      A  0�       �?       �  �?   A  0�        �                   �?                    shape       �         shape_transform      �?       �  �?   A  0�      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                 �?  �?  �?  �?!       �B  `D  �A  �A"         #  
           $         %  
           &         '  
      A  0�(       �?       �  �?   A  0�)        �   *         +       �?,                    shape       �         shape_transform      �?       �  �?   A  0�      one_way              one_way_margin      �?      autotile_coord 
           -         .         /            0         1  
         ��2         3       �?  �?  �?  �?4           dD  �A  �A5         6  
           7         8  
           9         :  
      A   �;       �?       �  �?   A   �<        �   =         >       �??                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           @         A         B            C         D  
         ��E         F       �?  �?  �?  �?G       �A  dD  �A  �AH         I  
           J         K  
           L         M  
      A   �N       �?       �  �?   A   �O        �   P         Q       �?R                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           S         T         U            V         W  
         ��X         Y       �?  �?  �?  �?Z        B  dD  �A  �A[         \  
           ]         ^  
           _         `  
     �@   �a       �?       �  �?  �@   �b        �   c         d       �?e                    shape       �         shape_transform      �?       �  �?  �@   �      one_way              one_way_margin      �?      autotile_coord 
           f         g         h            i         j  
         ��k         l       �?  �?  �?  �?m       @B  dD  �A  �An         o  
           p         q  
           r         s  
     0A   �t       �?       �  �?  0A   �u        �   v         w       �?x                    shape       �         shape_transform      �?       �  �?  0A   �      one_way              one_way_margin      �?      autotile_coord 
           y         z         {            |         }  
         ��~                �?  �?  �?  �?�       �B  dD  �A  �A�         �  
           �         �  
           �         �  
     0A   ��       �?       �  �?  0A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  0A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  hD  �A  �A�         �  
           �         �  
           �         �  
     �A    �       �?       �  �?  �A    �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?       �  �?        �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           lD  �A  �A�         �  
           �         �  
           �         �  
     �A    �       �?       �  �?  �A    �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �         �                                 
         ��                �?  �?  �?  �?       �A  lD  �A  �A           
                    	  
           
           
      A   �       �?       �  �?   A   �        �                   �?                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
                                                    
         ��                �?  �?  �?  �?        B  lD  �A  �A           
                      
                      
      A   �       �?       �  �?   A   �         �   !         "       �?#                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           $         %         &            '         (  
         ��)         *       �?  �?  �?  �?+       @B  lD  �A  �A,         -  
           .         /  
           0         1  
           2       �?       �  �?        3        �   4         5       �?6                    shape       �         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           7         8         9            :         ;  
         ��<         =       �?  �?  �?  �?>       �B  lD  �A  �A?         @  
           A         B  
           C         D  
           E       �?          �?        F         G         H         I         J         K         L            M         N  
         ��O         P       �?  �?  �?  �?Q           pD  �A  �AR         S  
           T         U  
           V         W  
      A   �X       �?       �  �?   A   �Y        �   Z         [       �?\                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           ]         ^         _            `         a  
         ��b         c       �?  �?  �?  �?d       �A  pD  �A  �Ae         f  
           g         h  
           i         j  
      A   �k       �?       �  �?   A   �l        �   m         n       �?o                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           p         q         r            s         t  
         ��u         v       �?  �?  �?  �?w        B  pD  �A  �Ax         y  
           z         {  
           |         }  
      A   �~       �?       �  �?   A   �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  pD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  pD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�           tD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �A  tD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�        B  tD  �A  �A�         �  
           �         �  
           �         �  
      A   ��       �?       �  �?   A   ��        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   �      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       @B  tD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
         ���         �       �?  �?  �?  �?�       �B  tD  �A  �A�         �  
           �            
                      
                  �?          �?                                                     	     	         imageheight    �        imagewidth    P         name       cave_tileset    
   tilecount    6        tiledversion       1.4.3       tileheight          
   tilewidth             version    33�?   
   tile_meta    �                     height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width           	               height              visible             width           
               height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                          height              visible             width                           height              visible             width           !               height              visible             width           "               height              visible             width           #               height              visible             width           $               height              visible             width           &               height              visible             width           '               height              visible             width           (               height              visible             width           )               height              visible             width           *               height              visible             width           +               height              visible             width           ,               height              visible             width           -               height              visible             width           .               height              visible             width           /               height              visible             width           0               height              visible             width           1               height              visible             width           2               height              visible             width           @               height              visible             width           l               height              visible             width           n               height              visible             width           p               height              visible             width           r               height              visible             width           s               height              visible             width           u               height              visible             width           w               height              visible             width           x               height              visible             width           }               height              visible             width           ~               height              visible             width                          height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width           �               height              visible             width                          height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width           
              height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                         height              visible             width                          height              visible             width           !              height              visible             width           "              height              visible             width           $              height              visible             width           %              height              visible             width           (              height              visible             width           )              height              visible             width           *              height              visible             width           +              height              visible             width           -              height              visible             width           .              height              visible             width           /              height              visible             width           0              height              visible             width           3              height              visible             width           4              height              visible             width           PackedScene    
     	         names "         test 	   __meta__    Node2D    Tile Layer 1 	   position    z_index 	   tile_set 
   cell_size    cell_tile_origin    cell_y_sort    cell_clip_uv    collision_layer    collision_mask    format 
   tile_data    TileMap    Player    script    health    speed    damage    KinematicBody2D 	   Stalfaux 
   Stalfaux2 
   Stalfaux3 
   Stalfaux4 
   Stalfaux5    	   variants          	         height    d      	   infinite              orientation       orthogonal       tiledversion       1.4.3       tileheight          
   tilewidth             type       map       version    33�?      width    d   
         �A   ����      �   
     �A  �A                                                                                                      	         
                                                                                                                                                                                                                                                                                                                                                  !         "         #         $         %         &         '         (         )         *         +         ,         -         .                           .         /         0          	        0 	        1 	         
        1 
                          1         2                           2                  2                           2                           2                  2                  	         2         	         1         2                  	         0         1                  &         '         (         )         *         +         ,         -         .         /         0                           %         &                  $         %                           #         $                  "         #                           !         "                            !                                                                                                                                                          	         
                                    
                                                             !         !         !         !         !         !         !         !         "         "         "         "         "         "         "                    height    d         name       Tile Layer 1       type    
   tilelayer       width    d            
     xC  (C              @@     �B                
     
D  HC         
     .D  hC
     �C  �C
     �C  �C
     �C  �C      node_count             nodes     p   ��������       ����                            ����                                 	      
                           	      
                                                                                                                                                                                                                                                       conn_count              conns               node_paths              editable_instances              version       RSRC              [remap]

importer="vnen.tiled_importer"
type="PackedScene"
path="res://.import/test.tmx-ff3f06ea28cc71cadfa0020913bdeede.scn"

[deps]

source_file="res://game/maps/test.tmx"
dest_files=[ "res://.import/test.tmx-ff3f06ea28cc71cadfa0020913bdeede.scn" ]

[params]

custom_properties=true
tile_metadata=true
uv_clip=true
image_flags=3
collision_layer=1
embed_internal_images=false
save_tiled_properties=true
add_background=true
post_import_script="res://engine/tiled.gd"
             GDST`               ^  PNG �PNG

   IHDR   `      �z�   sRGB ���  IDATX��X;n�0���U2��r�nA�\'[n�1WI&u���Q"�$J (d�|��ʚ�eN�>���7��b�ks��7��?�HR#{�Ȼ�<����uT����ϰ���7�u@�S*-��:*Q�,"[�K�&x�]0���%-�+|s��G)�v磗�)�p����u*��}��$i�ckD5�VI4��)���o�S�S
W�;[%�sJu�_U���T{_�i��}O�4}$�|+�H������9>���g������>w�jFdAJ�*R�4)�?����1����A�||j轔�AG��F���YY�@�!�O�nX���ps��q`-[�XI�$`�0���d�嘡�a��� ���!NLVي$A�����[#��9�����rj� ٗZ�b9����5�o��\���N�qn}��G���.�c{[g~�xQ� ∃E(�{\���Xੑ��c%�8�$z�Pu	@N�>��)���#-�&�J��N?����$��#ϼŻ�W�$"ӫn5{<��?��=�X��	    IEND�B`�      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/bone.png-a3e0618f4c9524c4388fc3350a8c3e98.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://game/objects/bone.png"
dest_files=[ "res://.import/bone.png-a3e0618f4c9524c4388fc3350a8c3e98.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
 GDST`   �            E  PNG �PNG

   IHDR   `   �   ��l�   sRGB ���  �IDATx��]=��f?l��'� �)6p4��p��#�:^l4p����O��0|�����ȏ?RUO�@�=U�HꏒHI&Rtw�����BD�sw�_�n�:��I�L��nx�}�*�+�Z�f5���矇E+̿�[D����/����V ق0<WF��^W�.z�= F��?���)n������6��`��{���	|��<!~�/m�{-����V��\�ϭ��+aH^�oZ�3�.��� Lf��>(�{
�嵶���
��ƛ
�p�}�G���@�L�i�Dv��߿�����t|h�N����G����g���Ǽ<<�Ŀ˗��.=�h���dҺlG_o��r��Vd!���%�L�l�o|䀪�E����_��O�o��
���W� I1X�7|��g��$��V c@��􇽰Xy���߶�^�S!3��q��q:D�7c��j�Ɠϵ��ZB����}օ���A���N�������zy����\k�����ݴ\]�Df6�2`�kJ��A��d"�0���'h��G��t�LF�������ad���`v��9*���K�%J�L.F:�Z_�����A(;�5�@��,^Ҍ�*v�
�alu:X�:�^���}�C��P��f��t
8�C�ui��zS�Y���g/ޢ�RPc" cL�~'����љ�ș�)f��tJǤ�1��r�U���6�Q��f��|�yXΕ`|=�VՔ����o�u�a��t��K�M��/���_�����O{z$;�_�gB-eؗ�� �z*�Z|�C�\"��V�W �O�[�N�6r#��`�T*��7Ay&�*�~W���>�x{⡝g܅Odºw��W�r�� l��4��*i
���E� �����52�;��	t��;,Q?�t�|��N��#<$~A�JRߡ3nߘ�6������vʤt'��Lh� 2��F�*< �"�G���7x-˫����BD��z<t���|en�*﹕������;ō��KHp��򑼴��x��Ux���#-<��S�p.\���҅�.�l̓��V�����uéLb` C@Q����kZ�qe�P~%��|�����y�GG�h>"9n�A�$���\7�J濲�D��xg�� ��{��K˝��z�o��D���U"g1%����|@��|�]��x�������������}���-�d�y�ώ���}��c��96�w#g�WY���nG���<S�%��~7�h"��߾/@�E26mw~oZ����
_�!�mG2#b���V����YdnM��+}?z*�M_��S�f����\�(����d�	��o}B��L���"�G�G�3��Q�5C���h��&�3�W���'d8z��?���}������d�7]3������=}�����ӛ��4h�P%�w� "�����l�������_�HO�v��of���ҟ�t���ג���S����[1Z��E�S����qo2v�&�6���+f�[�0�щx�� w �����|�xf"���!Np�5^Rn���
��S��n�֓4�x z6#( v7�x��, H�!3���)J��aP�0"]����*�x�Jc��E��!"ū�����o���/���0��%	�z��!
/�4���`[re�tj����<��`�<��Lf8���Az*î�T�{d8��*"�@�����D�B��#h�Cʛ���(^NgW�9!S1!N8o���Cj���G��)�|�FC��Ј��E��?~�~����SW -���m����#��ѰϞO�v^���G�H�m�M��~	���a��#�dF�TNÞc�ډ	��m�'/Mr��<����3��L��L�9��,�F�@�o�^ܡ�:�j|�;Z�B.��P�J��Ɇ�#���g/nAG�-I���K�|��ao6�ʁDg��X�Ϩz_�@6�d<����P"��(^ϖ�������;�(��"����l�
�TR�:�O����ɤ�{+|Z��0z*PŻ4�^�?�4۩qt�	��ޣN�S�|S�,�
`EA�K�p^F����`�ܺP�DϞ�R7�4^V��[*�X%Aխy���0-Y�.�g*�ɉB����t�O�ز��o�Oy$؎��;�#���1.���w<|�&*�����U��q�$��h�hQ�׾�@���F
����V�HH���$���]P>�$X�'�}g̗ޙW�_濸)�/�V|�ܱ<�%>z��&���́���FN��=�ՀRq�3?*J b�x�G��q��?3��v�{�+��q���})�ۥu�rW�\P���� Rf�� <�3���ٺa��<+����ht+�ȿ�2�NHq�u�w&_�t�IdmT.���)���]�&���ﴇDn�d'ZK3��>�K�����]�M~a���?���a�C�r~��c�ĭ �M��[�0\���4���OI9��0"V�pJ%��l��Q�h�������u��<����� ��uI:�+����[y����.×�&g�|��p��EU��r�Eq�`P.�&��ՙ�b��#T��@E���0��LW�+J�a!�i���k�.l�ҨZA�B�R����xcV������)��xfB\�\��佢C&S:�9�ypa�b�A����	�G2�9����޼���޼�zbyo��Ӿ��R6[2���k�~���F��l�]�DN�ק#��_Furkx�ӳ�n��>_��$��g�o��%��P�4&�&p��ᒔF����𞃇�&�Ui�^w8����ރ� 7/Q�K&�K�`�	tg�^˒��'�6`����T�G�d&��J(1�����2"�3��ϥ6(�P=�{�Q��U��hK,�m

��"{D��_j��6��m*/ѠU���@���<���g��z�1��n�RYτ�Aj��.�{K�� *r�o�B.�Ǘkk �jQ.�8�S��֣Pϊ��nMQ�
*-�<�z@4��+��'��'Ko�+�g [��<���֐3�qd5��FVH��G������"�P��2�认������й6e��';hW	fx��7�z�7��t���_'�;�.E��l�`X	�[�&�<��-MFѱM��Y��
@�@6Ap:$!@S�rY��_�T�A0����6�O{���G�|�3��g4�w:>�����;�Q� �wj6�9�������޻&�Ⱥ/&h�ǜ�?_��_�P�ӯd/��%�O��|"�hv����r�"�W�ig��3i,�3A�~=bW�h�Ѣ�Ҵ�����!�������둭�΅�7�hw�	��v�g=gty$O�Q�%��hPe���^R�l�{���Jx2绪�hd[U D�0=x4��t�xj^"/��cAb�;��fR>#������R���"��D�pҍl+�
8SU@J�g4W��?���ՄXap[-�쩴ky��ՠ����K��5�u�������1�U��|8��o��<*�LM��6�cd�`a�f����Ty|�=����J�F:�h]�LE�/�M�* �G��$>��#{�w�|�f�� J�.�/mM(�V���F�o��+bB�E�h/���p%<x���,@���YTQ��٬�H��C�)V@䎎H�A��>�g��K��h�
A,��� ��m-��E���1E��Z�?�|A�짬|A~V	�нx��!�=�o�7�0��!@���T����v�;�_�ʩ^+&I�+�:n��6������D1�ӣ������gJ��O��4��	 m2�]�l^B��-/���3N�Kp]>t^$�Kdͥr��JPSS�޾���'��(�tvƅ��!V����Z���^3�*�zyLɗA���ȝz$I������v�<|��؉�P� ��>,-�"|���g3<�'4qא��������·�����T��_�9����7���0L�+�k⵽Gc@i�����@ʓ�k�D�ҹ<���-�� o���6���3��6�"����w�or:>��O?�tN����L����O$��v�Vw�]���=�wz�Z�6]0seD�>��j��q5�,ĸ����*��N�wrk=wu��x�mp
ݘ5�wݩ����U�0���b����m�N/�����+xb�o�T�E�vƝ}i|P��jp5^�u"p��#jM�+�?,�\�"���	^����_8����S��x��w��6~-�W��`#��[    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/key.png-0f95d143e0dfac18420b51d4e4b63e77.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://game/objects/key.png"
dest_files=[ "res://.import/key.png-0f95d143e0dfac18420b51d4e4b63e77.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
    GDST`               \  PNG �PNG

   IHDR   `      �z�   sRGB ���  IDATX�ݘKn�0��J�*,{��zv�\�]n�e�bV���g��,�8߼23v��5G0�oލ�h��~1;?��װ{o�����`К#�� v�~��5 ����t
�3q-~��,�[��U��x�v�g���>9�N�#*���	�l�lU����dު?���J���0;�4^]W��K6�!e����[>��2�A(��Ɓ��5�5��`4�����G?5ϲ��{@Z%�Z	h�-��8M�v"�����Hg隣i/�<���,f���*+�g8��rM��5�<ep���J�M^�L�r�j�}p�/����Y��A� Wzj�p�Wl�������)_�`I��!����<��b�����[>t��X�W[g��@V)�A�� �2Pq$[�xk3�|����K�j��r�J�VvJ*�a���f%��rJ����2�p�E\gFr�)|��+m��:6*{�)����&����6��@���+��ţq<��c�Ay̼��lP�i�y��x�r���Q׽�g,mA��������    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/stalfaux.png-564ff99397dbda66287761ea342cd63c.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://game/objects/stalfaux.png"
dest_files=[ "res://.import/stalfaux.png-564ff99397dbda66287761ea342cd63c.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
     GDSTP   �           �z  PNG �PNG

   IHDR   P  �   �3�E   sRGB ���    IDATx��{t]ő7�;��c�B��X��~dcb��x�����(8������;�G��/�IX��B� v<̄��F�f,;�@�1�6��ɰ��T�v��޽�!�o�#�����������)`Ag�d������ �O� �`���<?���eQ~�oyG �& �w�v�Js������ӧM5��<���wh4�{ 
w.=.�Nv���C�����DSkc�>�N�eh��|�&���- hjmUDi�CM��*�v�ʒi�?I�V���@��P���G�fp����_38l��} �2蚧�4��	�͓� `f�!�yt�wö��<31��y3Aä1��z��i��L�TV�ȫ��f=&*��0�@4L:�H��kyGF��Ә�����>�g�{+���Ibt�>S���C  �{�E���ڈ�����g��Ě�a�O�a�Η_�Η_�7��tOJ/xyG��N��e��@g��PZ��y�Do���rx>9�e;8:�MB�V B^@Sk# �=I��������1i�ü�����K���#���yr�>]�(h:)	4=�;�1�@�l����$��+@�3�?L�dw6O�򎖐�r*˖:s��@:�g�^t6O��1���7��;�*zv�E�ԉ��RIc:��CuQ��>\�R�3K:����P�n������nt�>�;�'�6���˩~��?�io��9����g��̯=i��xY��_���t���Ӧ�,�T%�|жv���<���g�
���M���lN����/��K� UJF�� ���6�����	R��4^g���'u��|�I�0�(�\�u��0:E�&}M���DTȺw�3".S�;'��HH�H'\ҹ�r�w���<� lF���{D�]$�������c�4��Eˡ�A���i�BsW��4&j�#u#�Z8�nt����P��l��$n���K&P���m�F��h��KuEzR{�T~�}�ZMc]D:��&9��%����6�\�=����k�/�_k�m�q#C~"������H�|��
x�xD(J]�����e�f�;Z�G%��hm��ٌ�+�a{��0�lk�q�||Ae�걵��N/��ڜX��91�ґ��S9'lf]���B+3i���#y�K��8��S[,��p�W�����2����AW^��=�FkO��OZW�W�"6�p���3���sI⢛��@�aq֚�#�vў�cڤ����ȃ�y�	.�ȃ
��K L �E����ѳs/��Y������ ��&��Ѓ�yVt�AJ`,��ԦޑW������y��M3v���	􎼊���w
�J�iSJ
x�������9�69�bs@x��2|g�>m�cR��)Θą�:�MB��A��+�qu�Cs���$�����ɡ��C3"ʯM=]�6�i��՞��4[�\�\M/R�$8s�]4��R�r�5C�Eŵ:��3k��@^�m] O?�C[���vҲ�o<���+���PH?�����><y���Pjs�{Ǟ�f��>�4Q}�MBy�%��(A*l�i���Dȴ�᪓6_8����>w�d?�@W�3��4����H��eؤ4�����D�}T>Z������
KK����j�4K7��t�(�Ih���y�U����r�p�}߉�P�Ș���D *Z�|�M��LBSk�#U���!-�Ne~�'j��ӧMυ�4jÒ* �AC�A���\A
��QB�m�$�ҹ?(��>m�jX��0@0���6�)�6J뵝͓q��&���k�W&��/����Η_3����@�h=v�ă#�	���u�ޑWMgڧN��\W��<��Kh�t :�M2m�4�>u���C�S'��uo��Θ�~ ���'���A�����x^>y��LK�OQ�!�\mH�Cm�eʹ������6.��Y#^��{�8|��i�Z��2x��~\4��ӽcOxa��	�^T�-pq`v��/����'��5��ʡ�1 �>u��o"+�p�P�H(dd�g������K�9��GBVI�OCC���G�i[���iS"�]� �-�U.IdA����/�k���X38&hA-�h�QI#�����X
��J��Q��Y��a�
	mL��5T�=AO�I��~W>˴� ��	�}uM2��8[�H2D��uB����
,o��~�^-���Z38l�0PVO ��-�;�p��i[8x��>�@���[������i�r�8������;KeM�e����߳6��Gl��ve������l�0�̜�WJ�$��j�c���ʚID�e�߶�d�ڱ����#�{�c�ݢ���$3���j�\Ɛ!RWdMD��׈q��c�kvC���yy�LA_�e�:�檟��!�-j_>��cځ�x��(i�mFç.ע�CrI��P���j �]l;l�r\�\H��in�-/Cw��S���O�~%g��%�޻	W|�ۦ>�����t��k�����%�-�C�Ž�ug�d��ڂE�K��o��/��:r�^�=^/���-�=t����`�	�4���BZ�00�h�H*��5��%�ak~K݅5��AKC�������$ FJ�	 w=�!���5�N	G�� E��$F�Bi��4�= �_|su@��C���~�]L�y|�>�N�eh��|g�2�hDJ�e2Pc�����L:��y����Ь�Ye���Kz����M�9��� �����qZ�C�o��� 0���� &p�����D�<���6L<�0����vc���}S�_^~�}���3L�T��}������*��)��}S7�u-j_��^T���І���n�y��P��7�p���)c�� �_z1�~b��K/�6r�����Gط�9��xnLe鞔^0Y%�)/���ס�əGm� ���F�O)m�g�2?�?��+��k��,/G=�Ge��ձ�g���
=X^.%��Z�~�.��i�C��	u 
6F��h迍��p]��g��n2�,Ѿ��;Ǚn�l��9�������0#B:�����ͪǨ�y��ݷϼ�mG|8bLHc:��CuQ��>\�R�3K:������Mx|�CC���K/���f����.��	��`�����_*x�a�x�ax|����7LfnX��R�����8g"5�ʡ@eP�T/�ѓB�2/��з�9À�3�7�r���v��s�@�6uK�A�G�+lKC���Z��t-�A�@n��Ĺ&��9��h��� Q�C��-^/�[k�_�6��|"-�Wƙ�1��I]�A+_vR> �<�n�z�隞�>�x�7*dw=�ä�L=&#!�­�F�����ށ�>�y�،�3��D�]$���?��gq���c�4��Eˡ�A��3O�rel�����H�w`�/2��w3�z�[a�@R�y�|����,��������~�K8fZ+�v<a624á6M<�0����R�I�KO@Zzbݗ3$ғ��=���:��L�y�[���3O�o�3R���# �	tgZ:�)A�Z�S�F72�$a���q�)���^a��g|.��)��i�8fZk��;�D#Ig�2��?fZ+ D���xk���t���͸mG|y� c.V��,z��/������\z(�=�~"�L�~̴��\�?1j�zI,�*�U��-��pz9?��Ě�t͉y�G� ���V�.`�}���4H��[�>w�l����b�d��r��͕���EER��2� ��֞I���4�vEl4��<�?@@���z�#�E�X׳ʔ!������4��spa=��n��aϫ���o�ڗ�y-1�ʕskM/r�/u'�>b�1"d<h��;446�y�|��m�� ��>�M{��Ƣ�%&��}��t,ͅi�L�)X+��M)�����C�����m�7�p���|H�2|g�>[����Oq�$.�w�)�Qgc�m�Jy\����A��������قV͈(�6�t��r�mW{R�l�s�lsy�4"6�,�$���Ը�d�PjQq�Ni�&�4�u� ����¥s����le�!<U�b;�D���)zWL��������PY9�ܰ�,�����`���Ie�Xjs�6�����k�h�D����I(������n>߳9�.#7#�HZ�:�`�����:����ڵ芕b&"u���B�f"qX�a�R�E�4�D�}T>Z������
KKFK~Z�4K7��t�(�Ih�����*�d�d�|�ۆ��r���?]i���@T
���B�5��3	M��E�Ry[y�_�E���g�2W|��Ṱ�FmXR�:h�3(�AT�+HY�(� ��Z[5��t����_��jXx�̅?>���(�)��[C��υ\>=s�6��\	�	r&є��;�(s���\W�CB���M9��)&I�P���c�{^}=Dw�g�����x�C5�Y-�@O����V3-�?EY��r�!����LS�o��L�G�'Ӭ/���=x�{��y��D<�R�.�wx��뀾�L���IbLl��m�y��]Si�e��������ŧ.�?�����(���wS(dd�g������m�9���*m�ih(���M����w=%�����<��#�˲e��R#��餩ߖG+�00�W�r�"�4�}^��u5^+�3���31��}�ݨ��׵6L�>�2����e���1��>I��|�im�0�d�7F�LS�6� ;�5��QV^���֯ի��yY�}���OiЂ�r���}I����N6�a<{��.C��[Ծ�q|�;�)i������H>P,�Haܾ@MJ�������u=���2���I=���~���wY��j��k>g���jOI.�d��f��"�R�mQ�޳���+� g^\�XBs��U��f����\Ɛ!z^��1���s�`�\�3ۘ��P��~^�,S�d%�������p�z����<^�sKC�a��iN�+�&�u��.�_3p��>��>D��z&�6t��{.$��47ɖ��u���$p�	�2��0���F��B�>�_܋\�4���֖4���������q��F)��	� AG: ���ŉ+�z���Zy�K^=����g�M7�E{��2�P��7��y�D�>��W���×��7ݴ6����{fa�ż�}��ʝ���&����F��(�����?�t��A(�ՅB���ԙj�/yq�'��y�l�D��t�Z��qS�7+�j���˱�~�0p@b?��E
1�W�Tq�FAb?7��b`�3(�1)���I��أ^���S.�N�
��EF��yw!"�)tLŐW۸�KC5m�ֲ̳m�����4aH��AoK8��y�2 �T��k`4���-��0aՐ����u��ۨ��'�S��D'�-t E89#�w�S�I6��OQ ��g� 
���%�BEX�~`�!b"`��y�1i暕BF] L�%6�/�CX"u|S���wF��	!�����ic9�h+s���
�ŕ������rI���10/�>��e<0I��m�!�
�߆p��Ii�O����ˇS ��x` O��E��U��i�{��� ��uam�\�=�ߏ�1�����{�\�P(�'-�܃���̼1��x`���i��,x��ri���l|(*��Qe�\7�6��ۖV?���VY�m󄦃o�imd3w�΂�ҫ��]ko�nJ�\��3�w�����������7W[���?���Z'%ʙ�n��T.)h{��Vںm%I��@�u�j���.|��j�I�\ʓ����j�-)�����kea=���&+��3�r;ܲ�Z`�5ކq0���k�W���j��Y�Pi�� k5�b�ykGB�\��W�y�>�4�r4UH=�S�փ�i���ͺh�V�uY��Ǻt��$"S9��8v'�OS�˲rƛ�JS������|i\���?�:���m�f�{]v�-_0���L���������ˀ��W^�U��ʲ+��/�7-Nl9-�xR����f�G�y=�y��j0q60F���d�JI��pEI��1 ^� �Q �'a+���/�kߍX-X�=������/�,8��h��VS�q���1��c��b��y}�Py���7]���M��܀�4�ͽ�p�o�Ë�xJ��d�);J���7'F�q������ p���꓇ʓ�xE��67i `:W��$���8pIsI&�Wu ��Pუ `�\��w�Z�qh�Ya��yՆ���6"��|!�
������<����l�c�E2�w�z ^�����|�_ ���~f�	�=�4W����"������"Ҹ�/b۶g�y?px�̳=�[�|��2�g/�-��w��/$	;G�;�)�6���<`[�!,����,�X�� �-�d"ׇIu /KSII	�B��s۰��Ftւ�'���ON�`\9�J��t��?��^�_T�5�D�����ْ�ĕ�O^̳��D�Z�uQ�3�_�r�a���5kJ�)חy�$JJ=qfY#��83f�T�T�K�i�ҳ9���8��Ƨ�ebq�����i뤋������^jc�6	�98+�x?� �LSpd�9�1[c�����9x�����Zd��XHM��-u�ku$u+*�: �CI�aFKK�����5��̀�f8Ia�]C8��٘kӧ<�͉�C���~���mD �3�!�̣þ�FR?�K_�jjCaӁR�:pjsC��X�,�Ｂ�_��W#��gӽ��Z�@ �1�hu�i�|��+=���065��Ĥ��Rxȧ���x�>d9>s�4~ A2�o�&���p����Z9f4I�m�����KC��5dy$���I�d^y��6�+�����~5�$�����V?0��I%KS>�\	��Io�p��3�geZ����?�����L������.�$t��@�㥔ۘ�+eI��[� .j�E��մ������lƕ/i�V?�5�]�/��51�3���$.L���>x�
�.��>�Pz궧�����9�j�+���#qC'��FW�h���4��ۢ%iAn|���W^���z��&�B��S�m���V��eW�#Yw���E�!Lc!�\�d]�Eu ��gNM\? \����ڝř��$��M�Ō�����9�[�ι|��V �.~��G��Hϛ��< �s._Yve��� �_�IOּ�oY_��<Ϲ�A=������[�����D��g�LL�~�_��s����G��k�W+õ�F�S���͍��k�BL����)�ӭ*����-�q�w�;ז]׶_JO��@��ʄ4Fd�o2GI��21�OgD��+���Z�t� ��<]������m�L���ɶ���>h{6�Y�{6��[�hMs�ݳ��ϑ�$@N�ʙ^˰2�t�;GוL�U����pK↰+pa�(#���	N!���qu��4����@����mΧ�R��K���47��1];�L�ַ�ެ�i[�.���$�.��m���46)��6%���6)��rf�M�g�������vCӳ�]�� ������ƈ�I��ΙG�����*�F���lj�G�[>p�����h����z�uI�ͷ�n��[3c���4F�0�m
��튕B[���I�����!����܇�K��&��2���?���Z}i$UJ��������u]�=��T�a
������i��ȷ>W:�Ak��'�6��>�ni���7����|�y�/�(����Z�d~�A��˴6���Ռ�:n}��:_{��)�)����yG���:�I�W�<�|�Ԇ[��H��{���#��$Ai|A �a�����uI�j�)/ݳ�$F#��I�3��n��e��6�^�{��!�uI{��T���3�a��]�Cc��$�I�G����ce���,��:�����ozap�y��<�������9������<�u�*	�;�!D��nCKe�0�;D����>zP�;��s�p�ᇩ��ܺOn����W���8��6 s�    IDAT���풳��}06nz@���v����΄��^��>��� �_^�9��4�2�.$)�CV��9��Ij�_�t�<�'�7��]�����Zp�����f�sZ�a�C���Zx�%��H�o�yA�.dh����.i��r1�V+��o6� �Μ�k�NO������ͽø�� �E� cƁ:W����&l���u����?��w��vE:W��J!	�H߫�au�ֹr�kmҐum&�<�5"Ք 	>T.��ߨ�PZ�"�y��uI{�6�����,-r���K�v�����Kڃ_޾�*qY���<%㢿��xΌ�I�����4�]���k��(><�(bMC��O�0O�5>u@���LL��T��J�3&Y���!,��wE>���4��yq#"4:/G:o�*�|鬦A��g�Q�ah��|:��%鼯��3�r!���̓��4k�Y���B �hS	q*+u "�W.w#�!ILLK��S��B�~��z����q�a��^KR&������A�澱`�+����1��I���ϔ��Ecj)�A��9���܏�f��z��KK���T�yx�>.��n1_)�U�����8�>:ԇ.�����~`*�8���L
�����ӻr"�f���T�4�9��5�c,�6!���Ӡ\����T8���8��!��p����MEI���N�Ә�z-m�.K�Y�m�����sۼE�y��D[ ����$KC}��D���U����W	?Ч@�Q��-Xk�Y����=s�'��k�k�.��pZ��}H�26������dY�j|f�8:ro��9���J�X>�g�8Z}��U<�u:��4��]&��|�p�I��d�'�����=��D�ܵ.\���u�4��Y �k]�W�l���{��u`�ݨY��4 �VZ��H&zm�-7�l�M�J�;Һ���d���H��%qg4&qg"C��T��8�EoWd;mz���!�/��@�q�qʝ�˔� ���<���2"\4	-wz(�?h=�Y�Ä�:l(�Ĉh��]�"+�Pmd}	��c��oՁ3f��'����-��vzZ��FV�ӭ��˿�\��o��n��P'f�8���y�%�i~^��
�N��U*�R�Q��	����3N�['���G `�\�ү��G���?����y�4Q\yVS$x�mL�~ש���T\a
[c�����E[�4s�aј���j@4���3N
z��b��4O�&yJ�5W�3?2�l�ek��kD��!�8ɨE�ڦ���g?�Y���t�7D�2��O�0O��ƈ��,̈��)[�jK�تܶg"����?i��?�˝�Hc�Ҕ��H�=��+_:�i�zXig#��U���LV7���hӾ��t�?�3O�vf�n����$�f@z&�TB�ʊC��'�d��%�2�*�ޘr�Z�����	�z-I���[��,ҷ����@���ǔ�'��ڦ��D(SK���g8+m��VZ�٬wܽ��N?0��g%q:F֓���U�����8�>:ԇ.����W��ՊJx��<"е��q�l���>i�i�s��b,|�,��e%A�|�$!-jG��S5"@���T,	�W��d $�s�N(�S�o��범���֯�!�j#��~R��":�����yU�D]`��e�*k��Z��{�Q�v 1��y�1K���[R�
΍�������j�m����<��w���O��tcRi���}�F�h���.�����T��6U�>xЛ�WdkX����y�j��8��kK���˿�քt���4��I�/3�p�����[ �x�сI�>Y��ZBa�'4�	��¾���,҃w߳�֒�^ҟ�8)}����9���9j\���\_�}��5��I?�0��9Ԥ�J��E�˝^+'�&�ȹs��]���a`lP�O��y'�iD�/�������fu�]�q�y��te��i^�+W���t��}I6n��U���r�+2���|eٕj�z��b�eٕ `�S�����*�LY���֔i�E���8�T�̏��?����a���qRh3���l �|�U �̣k���i�p�Q�%�)�ʷ�j�1[�+cSC���/��7B�}rv�D��A�4h�����Y	+\��V6�|PY6�k�&�D�He��H��!�k��H��R[9w߳�0��I��J�TcD���s��ѶVpG��=��0�(yO�;���W^��C#���������Q��!�$;�4]�1�`;��d�I��^�Xp���֗K�Սɲ���XX�����P�f!�!�GJ"o'��޳�E�҇h����@#�YJ��4�  /�c3 �5��t�:���8&��l����fs����|��y�d��
']=��b�:㚚��|$)N�=�����1@�y��L�P�u��� ;��3}w��y��?b�m���O<�4���O<�У�$Lys����dh��g��c���W�}������������{��G��C������7⍑�����v႓Q�g�-���+�2i�\�����뭿�A��� �_^�9��4�2�.$)�CV��MX���."ֆ��4E��������HII������'���mA��2����҅�`�����و�M�������f�1��0o����>���f,\p�)+��1��3iL�^K.�ڴ&]�� E)�P(K��&�Z�gU��KZ���\z��:��u���pw.= 
?�_|{q)]g����5֊��-��ۘ;�quT����5_���#��E)1(8�'��<�;Z��{  ��-����Ě�a�H��&�ǽ�q������Z�Ⱘ}	�L�Z\\ڱs ;w=0�4u�Q�u=�B��͓���hntL� �ޱ������aSv!|��[]&�90��g6������\�L�w1��)�r��ؙ���D��5�� �6�;v@22�m�;�p	�ASk#:|���A��A}~�Ɇ� ,<d���KwD;���"��뿽}�r�lKZ0�e�N9�0r�g�u�1��$�FR7n�@�X�т�����ﶴ��V��W&���7:�l�oc���k���&�F2J������u�`��c@O(��+ �����w�(UC�#&#g�+����}�L�H��`��7�������_�b���L^��58��i���v @���O] �뿽��a��/%��#Fi�ЖF�@|��@���L��ڻ_���F'D�X X�� ��c;p�#�B� J��=�S�ۆ�
26;v`���j��Y-�L����1�
�%�iDSe�	�(@�D�,�7:���L+2�(��T�_l���F�t��ہ���.'���Vt�taǴI���� |����ޱ'�����4�lz��@h�s�ao/g�`��$�ց�$B���]��Z��!Y�=��f�/&���q0�p��@2��Lb	%�S��}dZ�q\�}�AY���� ��r�8Ḅ띻�%��K�P�����W�[ #�I�f�"���=x�B���^xHX50�+���g��Pdg$�u���aZ1��HB��|E��8�e�<���y��0Ơ����L���N��O�!���y�.:��2���B,2m��²�y��C�<����-=L9#ٸi�<
4Ӡ<6?�!.��o����7C��ug Mo��B���rk��E����zV ��}I�}�����֦����y��pt6O �9��ܖ���=Y�'T(=��� �  (�B�^ �Pd�#x�͏Ѽ�  ��� ��9�Pb�7�f/0�[� �Z����Pd�fp8d]l�<d�	��&�t͆j��H���LttM�v;Ǆ����<w��&�F������z�6�@��<oayGK��ʫ1JF58C�w��0�?�w��JZ���WBs���g|�|!&� 6�@�j����$�!r	L)%���$ݣ��	%= V�%m10�<º�~��a`�y��o�i�9��{��8��jjm1c�఑��-��C�#X��b���`�$1�"É^2�$q��s31�� �k>l����}��޳u �3b�K��a�iBR��2K0�Ǚ��=7����h:r:'%�B�Ǚ�W=O�鷦�鷦D�Z�tP�;����^�C��%��5�6z�l	�&�Y\�%���n��q���!.��[S�8f/8&4���_ ���s����s)��Z �����x�̘��M�CW�;�c���J��\�� 	"z>5��C�[\���;ZBƇ���������%QC�o7ׯl�̓T�!qL��os>���4�N�s��CS�4�X�'i�۲�{�#�p�l��J�0������^�rvq�w�(d��!�1O��~" �{2����0��\'��H&A�6FJ&�����t�t<p���K��c�v�鷦�{���P����#�`�������ܕ��r�!�"�3w	Lj�ܚ��m3�17$��r/��sz��|z��������P��#?6�?�ǔ��4�xj��K:�P�l�d�@m���p�Fσ�@��B�d��pp��#S5�w����� l{��H�(2(��ѽ�O?�/��ݛ���Z0q0�C��<�� ��x|6"�� ����ƚ�aèc眎S�:>�(�<cb�3o��c�zܑ!Fq��$�w���ri�b�,�P��l`s�m ������]z^x{���mo�v�!9�i���s����()���!) �N�y���=��M$���  Vt ��T7�C����-I��ǡDcd��ŀj0}���޻	�}hih����ˍ7XԾ�zV�"�D��m�ѣ4��z�# ���w�g����H��)���M8�#o��G02�S�"�!�)���sN/�<<)�a�B���- ��P��gQ�l��d�sz�Z�T�=�'��|�������H��� �	�/�h��S���[{�h��E�K A��^����Hz�GyO����C�uG��=|���ĔЇ�I������޻�*%6�.�F���w��n
I��V�a��6h�A�rF,�h�ǿ�U���4u�� ��]�F��1������Ǉ$a`��0yQ��������Fc�/���2�>���hy$x�ŧ6��gaE�@螤���{� ��Mb�:HL��β���$���tz�����+���ճB�����l��W�r��I3l{��e9��4���xå=�0zP�zV��9+��Ђ�����g+Vt��E�[�=@�w��i� �~���1Г\
�LJ�]&�\)��O���f����L�̋�)IHO�U�]܇[LN���������wQ��H�f�9c�����9��fJ��D+-7���q�¢�%A�l��6_�c�ۆ$/ONCR80�����sz$�?��v#y�'��&���GJ���s�����$��U�0�b��(y�����K����<��q�B��8m�!�/9���B��x E��u��.����'��*w�q�{�By����|N������� ��9�`���4�����WuRw�'l�O������A�aq�Fy�.�\JI"5�����q+�I���GK�Ѐ	ɩ�Z�Gq��%T��,�[be>�Ztׇ��`��,YW��Y`~](5&�tN��|�&�2��B�� `]�*:(c:^��`	��es�������,��}C���D�9��y���mQ+������=�4�߃�>҂;�|W@L)�9�����	��v�#���zH���<9(��r� `bM��6=�>�צ2�(.������]�<�!b�χ�v6O����LJ/ f���^��2/��$�e`zڜ�t&�F�j�`���"��?&����LK�W<2-}�D���:�(:& l�o��-/���L�T�x$`7���=,\x^�I>ع�Y�t�|�?Ѕ�-)%���H�E�K"RJ�t��ޖߵ��S�µ�]U���</ѧ���Ȏ/x^�P�;w=k>|8��&���۵���ެG�ȫލ!	�ٹ�;Zгso(mf�!�sö�>��a�aҁ�ٹ��?��V,j_��������]?I�?���P��3��@� �o��x慭�i(������+{��+hiϼ����=�>��%�6@r����T�L���F�R��#]�q�)T�v�S���V�d��1��ڨ���ɡ��H�c�Q�}#��\[����ͬ�i ��É7m��M���P^�푖��n�0˖&OSk���&ؘ�Gji���t��I�(VBh��<�&���.˲m�!z�i[�"n�k�2����G�8���ظiC�h�!�:�b�<��h!y�hn밋�����Z�ٚ
��ڗ���u!�� �S'����)�ۚ*�T��+HL�:��Hz`,��ˣ�W�)�� ��ˆ_��:�%�ζ�1N��Ii��n=(�Yޤ4�t�`�z ��@n}V_��fp8�켧ݢja����>�}�e����N���*�``�/&��T�-~�;[m4!�� >zj���kՄ�U��轘G`� ��ِ�����������i'pT<~?��ϮW��=��I?��Z|�w:G�\��U���6n�`��?o�CX�l���Bt�{��^��z�P���ט @俼���͓������W^����7*N9���W/V��Ϯ��3T���Z��.U��kq�P��>���+q�mW�ދűu�1P[�vIZ.������F<|��m�8X��ƷN�c�?����ތ�X��Ϩ�w� �Z���C�b�ߋ���vc9d�:F��Y-�"4�
�<f�'dY�� ��TZ>��VsT���W�����~�x�%��%�b�W��-9O:��x��}���U�.���y������iy�B�ե-�D~x�M@�#pfI�M #yc��(�I�K4�R�2��)�`N5��A�龤7Cx�!F�w[�I���['ΉH���$�$m@��t�M�\Cy��c��L�c�NuyM�}6k�-N��Ô�5�Q:��ۮ¥�]i���9��(e̐�聢�k��~�yW�����4$u Tf�<傋aj��7m���y��<���h�L�(ͅWt���Y��cW4��6|�-��,|nwp���5D����M�(p�,����+�BS8M��=eJWX����:1<��1�3�艉��0��˘���A2M"-���<�@��S�q]����tcJ������4"����h���wgG�N�+M��}O������5�=�. ����?�Q��κ�	�4�����W�f�]B �/�( `���K_�%PAw.=��߹�8�4b&}�Lj+
�<�w0���mh���� }���Gü�i�b�h�R6��l���h򀐼 ������_w}=��г�OM#�B���/b�қ������ޱ��^,~Z rc�W���I��&?+o���u+�/�hD�z6�a�����L�!��Vt��P2/��rdAZ��a��������ǹ]�	<��V҃&��sg��D�=.\��P>�5It�"�N��z���"��|�G5)��N��/�t!ߙZI��s�n۞�}�u��63|����
��a^$H��z�w�|�G�����ÆpIR�8ҁkǁ�U�ԛ���$+�1/��B�C �S B%�u��qn׭ Lz��
�q	��@��i�B�s��:�^S9E���7ϞJ|�x����_2��Y\i���N~�^����`O��9���s3�W�K)�d��y�L�0ݳ1�K #� ��4;Ѭp���64��u.}�y�8�����ueb���6Ҁ�Yb _��IBdg����1���v6O6���R������B{�����O�Z�� dг��0�$Q̉�@�5x6#!!7����o	I�a���وD��L0ܔo����v�k:r��>m*��%�AB7��@^Fl8+��W�;�%�V�02YeYg#chf"|=��]�@�g+8��+9?N�|����h�(Ֆ    IDATk��0P�]��rY��@L�~���l-�	���#?6��J��x ��I�6dmHo1�����]c( @���X̯�{g��G���G��iD:#!������X��y���y2��pAl����$��}�N|���{���x�އ����H����N�\a ���A5Pb
^��!�݋л�y&��k"rX�$M��d��eL�I�6�am�;m�;�����:b�!��0���(����[~�w�񶾕f�e9����;CÖ���>�cC��d��W�s����V���Ґp�B�[�>��ȯ9hC��ӫ�뀨#OZjC��g0͕y~G��V֍�@�}�,�$z<O#��U�S�����AC%jC�\�		�A���2+,]:�ԉ��#g����s�N gu�"4�	�����u߷�D߽����Y�@JIb�U)]�~���c�W����0Q��*���]�y�<���	t�:�PK���<C�B^ҩ���1�' �#�!X�C��t	����E�5��*3� &�2/i�:&z.f�
;7�α��� �� )М��Q +W<��,��O8�KV)�s=�9�
&aI��2ke�@14C[�4-�T���'?�K ��m�U��_�11���<�7����_������`�+r7��n�}�c+�p�l6U��7-jza^(�����<!G#�H�)��_Xmd�@_�����}�~�HY[`6��A�ʾ�0��8�����y��M.T5�HH��@��8P���Y�XV	L)e�_���$LNj��L˼Z�_h�K9��:��2�F�:!�����<`�w�]�s�/����RS�(@r+l�,�$EY#&$�_��V&�m�C��뒞��_�I��"״���U�xb��rY�g�_H̫���>C8sLOnP�I W�y��'&5*^:0��^�ar-���7��jx�pn1=����-�Ӭ�Z�'��@nd�\1=����;	����Ob�WL/���<�.'�����0�Ę���9���'&5"q�5��^� ����'V-�������y�-�׌$V�|bz����Ϙ�n8�)�2󚉄N�Pg��G̐Ѭ&Pl<��l��7�6�_����/��U�Iw$� �����d����<9�s�q��K�3�y>}�����<O��vv8R"o��@L�YN��iv%�+zf�6s���3�J�W΅�Ըr�vYD	~��畵�|�5ӸR�:�OLo�-É�y�Jֺ�v4�uv�J���+G���������#ڜ�\vg�yf�:��p����]��ʶ4Dk�=�3ö�q��0Mݼ�$���Kj96�N�Ҟ�B��ab��ӘX���eYIsf�/����J�W���D>m�9�^>����x��I�8�U�M�,CyRa�<~��*��$��e�祩�u^�Է��%V	���i�y���-�u��r�@y�z�$���O<�ړ��R��_([E�~�P��|��:�;�1��8�:����*�+"�������$��������N���%���z�W�0��:��Ԭ�ϙam /�%!�O��Jr��	Iu 7��W3�He9��2H�@�H�>3L���S��@鼒��/,㛔X=��+S_mI�����&?\�X"Ad3�ۆ�F$3�1�z�`���4�\I�@iq9c*��A��E��դZX�5:.�(-��XB�x�-:�<^�����!*��	�~�`UOk��m�������2���?�ہkW,�ߗ��p�9ݶz��\X�Xb%�yY�C����x�m�������I`.���J#1mL0������ZǤ��=�[,#a0�&L�F���O�6�,{p��BL,�υ<��=��l�5c��ZCnKg�d�������RJ���4n�?�72I ct��?H�I#U-� 
%�
J+ J�
M����Д�	��G�uIZ%�J_ғ��Wt��D�u ���	�Z
Ga�y�AZ�	��G���
�Ŏz�a'}Skc&�
�J��r	����;Z�����%����g��j�B�	��Մ|}�PG��ZI��s5QϧM���偖�����סB�B�|M�����a�|=����;�Ɠ!���7Cx�Y��M��f�_������kab�4+I�<�gJ���$}T@�!L��͓3��:���WfE��YoI;��a�kY���\0^�0I`ZL��][K�PGOs�a&�Aڡ'��eZh��$�i�o�}���z��O]H%!V�R���&t�<m��R�0�Pv�ݘ��P��3�x`V�BL-����N<0#މf�;����Ciw�x��53����2#y'�2������%��]<�뾚��%Ȍ\Շ.��k�%��F�x �q,�4��}�X~-i2}�����[�x��ug齫|����꺙�\-�_�x��:�14tf���`��.���q�?0�}�q�PN$m�W�"Z<0I�}�J�΄qL��<㉅�-�jQ����1}H��#������q�9��@�	o�x`^��q�I�~����������ڟ���������?M��~79Er�C��
�2w|ȥh?1^e䍫�1�m
�/�gs����w��+���#]<��
��;�IЄ��1[>�}��ߓ �oz#�^�j��x g�|��I����25T���d!\z�qW�}��p�MO�3�@�!����"�Ӗ������4HR)_@��J��҉�KY#LV�C�#����x����Z��#Vz���Gp��V<��~��F��ozQ_�� `�7�� t-n�� ����n����m���?\�uX�ԣw��Y��v0Q~Z x��Oo=�}�{�ӫ����ws}������r'��l� l�ۅ��m� �=2 D���^�ef�r����N�B�r�-�3ڦ`[�. ���)FB c�h��f$��Y �������. �{��h��f,'urٲ�L�?�7b1'-=�3! ��h��Wwc�	g�s��}�cҩ�Rg��8�.<�#�k �˾vyp��n\x~�����;H��'�m�]zX�>V?\�S #=yЛ�NPö���)X��2�>�lz��9ӑe�.3Q#J�S�ށWw�}nV���yz�z����yԩ�'�)�`sج�g����N��C��Tbn�X�S�����@z0Tƌ���:���'�ͥ5S�Y��f�p6f�pvH,�I��K�L���i��ӤF�R=˾vy�,^��Άԁ�>jw�����=��Fd5./���&�ʟ���]�N�}I+�/��?�����>J��;2ן�~���W���q��s��֝8��9�qu7�̚�}o��_��<�u'.<���x�X�.�:��6��* ~���r��<�5ܸ�/�~Ť����u�}����o����1�7�����0�m
�8�0ܸ�۴�܎�>����+�����~/}�� ��"�ѓ #C�/<�#b� `�O�1���F��S~.	RBx;�֟��@�j<20�g3�0:I�*��tW�ƍ(��un�M2:�;��R�I�>��BLJ�����m��8#-n�)�:�1�P�<�V&���}n[��~�y�N�J��: �e�.I5�gs�qU�0�,$��J���R���Q�4ࣀ��D[HZ?��h����è�����Ww�)�/�2]Kq�P�r=��O��d&uF�IVghv�S?���!��h�
������{iNȝd�(^���Om*��� ����i����9�|�+�Q���Qf�q�N������P��:�1���q	��RU#8|�F�������
Pn)���B�"��qu7V����>U��B��8�� ��_�@�]���[<�:����R�"�#�O��Ry����&=�}�_G����4�q�0�R���z��7NK�����7��R�_x��;̆͒+W��I�|�_W�x5����O����I�/�pF�g|ʤ��B5�i��%=�#"��I�gk$�:~zM�!\x~V���x`I��O��q)�,��$��[d>��n�o��O��W�\���q��,T��uՎ�I���,j�-Zt����ퟰq��]Ռ��0��ocά�F7Q���_��̙5դ�������c��OU7�R8�Z�4u�~���6�.�NC�f/U�.[vY�%�d�ʵW�C�K�ES?ҁY��J_�5����)��p'�w�����n]�x^�@�I�hs#��e�?+}�̐4����eX�:��20P�����C�'f�/��(�k����t+�~LH��e������j��.k</+=�7�\�w���y������o�O������\V������@��$H�YvT=�ʝg��\��Ǒ}4�B���`��.�l###ֹ�k�'	=0��x�Jiq7G�ie}�I�iM-F����)X�x �A~U�x`�P_�#�v!�˃<V��
h�@�}r���P�DM��<�x�to��(���]��@���P��7�K*�!-ڷcK�Ё2����L@1\�$�(��^�e_�3��n�DOyH'���A�r�A���s%*�#�@��Nk�4.Z��:G��I�id|���t-XMԛiƘ�]�e�.1��V���Y��=�2d�����ĥF��������QG��ZL0���t#�C��I?�<�?�*�-�����r��а���/+Ⱦ"1�t<�[I�!�4�i8s�:���a�{�y�f��uI;]�N*i����*3�^V�ܶP=�8	��py�R-��G�\�)�6����v�IOlo��y���ļ���A�u=�t ��v�5�w��F��s��B��yU}_��vt]׃��1|j���0�X�����)��T���Xi�Z��Z>O�#��'�G�qG&!q҇,o<g(`�*��t� �@f/8ƔW����M{Ͻ�t�2��}���q-�+�/��� �A_���!��
L2�ru�
�O<�M�0������q6���#Mg�uR�,C�窃�L����GӐ9a��&}�	�> ��d��RBI
�&�y�\�>��u��U�&M�De��')��U�(2·��0��?����/���f��,��G�aC�χ"�#Ӓ�:��J~�/�(~�.Œ��r�<P_c�12�!����%���>�
�4����tJa%�i�}�"�V�t������E{��S�VgA6hF20���>��<��|�sH�9����=��T̳7ܓHT�qG��%��6M�:�l�U����yYfI���}�����~�4���ʹw��
�J0�Ҡ���[d��11����C��2�2m�����s����.P}�1�Lf�D�pgdZ<��6N��s�e�/�\(����!U�g����o���\8uP�q؄��~3�|���v=��!ېԍqM?mQ��'���kkh�q��c�h�CħLš.�{�'S�� �D�������H��d��bpDVc��k�l�|��%�NX�H�*r�rF�+�4�̅�
w񼆉�#�O<�H��-*�³̗}�p��U���5���K����#�g�߇>W(Qw�����;ݘZ0
>���pFc��٧hCU7��CX��,�w����OD�ܰJ���kF&��:#��һ�\��������4H���|%��U[7��T2����Url���O�+K]��K�˱3�<��k�m��H��՞�{;�qC�}46��C���=L]�v��;_��>�+���AĴ��O��%͆z��n�m���m��%(1P�jZy�����ˋ�Ī�樇���n����vq��S���&��]��H��������kP	Ƒ���ʙ5�4[��4�����v��J^Q�G�8J�.X�� ��p����uш:�A��s��Ί��U��nUA3ɉ�/�h�������<�>��ֺx�zj�5���qUA�,��H�@�~����7��{UA]Sk#J:D�-�`n���� �4�����#&OD)_��m�AU���D����R���#����~Sk#��<Ѥ����U������������G0���Sojm��-�<�9�Q-��t@aݜ+�*��@�qO>��v; ���f2�����[�:��e>�V�-!&V}�(�� �`N�y�7\q	 �"���F��י�G�r�'�2&V�
(6����H-�\gXb^Շp����U����^���4cn��@��k�}�P GL� X�e0"}�5T���Z�%mz��9�6����e?x��4�(l�y>�, U'M.d�uu�9߱R�������i{= �y�
R7�RH����+.�E?���ӌ�-͆z����LT��2��?5 @ރ/>8p~�M ��g0f�k�2 ���_s ����)�Z�5���n��@��C����|I�o��Tp��+.1�"��������OMǂ9͘sh��$E�P�Hp��hjm4> ��������'P�����A�0�@Ӛ�<�����i�Q�g#�J��)22@���ὩiNOe��kJ���0W���$�D�璗��u<(QkC��DJL�5"6��=χ�q�6�#.�15L Ƣ0IiN?�e@8Ƙ��u@)XrN%jA
���9�'n{-�2e<2���x`��6���Jz-T�G���N;$��"�&�����JA��$�@�HK�x&�+X-��g�rd�gJx�k>��<���w��ZR9u�=
S+.��-�& �X�ܯさ��&X.����rc����C<��h��Rptі���k�;rP��-@i����QC(J!�ߟw0�i��'bs��@q�e  �EnΡ���~dd���^7�
2�b������C�]���d> �wY�ZXִ��J( �y<�_ؤ�/\�eP��3 �:(Ԇ�(2�Ǯ7y���
�kč��7h�`�/'2�D��=�"��:�0o��ױv�� �������x�l���m��H�����GX��u#q�n�I��T��L��Ѷ�p��ױx�A�y�%��x  {�yd��&O|��䢯���3NJPʫ+��p���li�50+l�p��K�C�]l��Y`�\�:`lu>nw��xh��4Y�	2��V����`�E_7פ��r	�F��jL���IMVz�pN\�c�W�k�ud\�n}ݪ���i��i�O����@���p�%��N`Lڸ5&�F�Bfh"�D>q�k��^�c��
堿�S�#�)����ӁE.m��f&�]�Ԉs�#'�8l2	妧2J0a}��sz~�Sc"��F��\/E�����b�d�V��yi�O� ��ҐU��0���Y|��	�/����z+2�_���/t�""�r0�:�-���WQ��5��#�ꙭé�O�����7_x�0���|�	<�������K�#�	��-��'J���R~]�RL�*N Y�_:2�u����/T}a&��~�U�Q�W��l�˔&���UV�,��l�uXcB���>� ���{������Q��Z�sh����]�luqT{��`ɟ8A�$�9� p�9���t�=���VV	�@��4n?�� ���$�ÇY��P���HG�}��N�jF��i���$8�o?��"��+l{�K.�z՘G�Kh�=-l�R_�F�+�Z��:�yy6�⃲�K?/d�Y����u�$P�j]�J�dYw��U7�Ļ�	��jBv&�����3�8C}%�0��1����?�Y�8�$$}0.t��$R(�Gh�ۖ�Y����
�Y;�鳔�ӈp��'� �:�֐G���H��֊��D���L��qaD�z�\�m1��(�p-�����H��'���j/L�4��ϧ�QyD��~c�Vp����mSˢ"bふbL�;S+��E_��T��H@��}�Z�ӑ���K��������q���e�ìy	����ZFĈ�c��!dD�ڴµ<"˚��<B\(*-�>���«n�I�`j����r��Yꕋ
��U��wR�"��x��Yw��>��2|�U����IӉq7m���%X�����
XԾ7mP�g���51��G�]��u�z�Hb�u.\�/���
�
  'IDAT\T���y�:�(�6mj `��so�g�u�1,[��YwY"��E?��Sˊ[BcP�8�< L�rf��q�yq�4�',9�o� }*��9���T���B:����yn���}�G�=��.�=��A�Z���������imw�k�_{�U �C���ҦN9
��vUf�PD�nL�}'
�����)G�:ʇ�+-+}= ��2�.�8�k7�� >Mu1HK�B_�p���+Smk��#*M�6_�I�4���fE	�zVK����d{���I��i� �tC�	6zY��&�~��`ٺ �zV�WӦ�`�ظi�a�Q�o����?�φ�{rؓ�R���,���gMly�� �������_>��&����W��P�v�?.��qפ_Zߑ`^}®e�U7�D}���h�J��:�A;��3w����r�fh?	DՎ뭿ګ����5�߽!4&Lj��z_��t0��1��T�^X�.�X�9��^��f�;̈\wge925^�H阔��]Ӹ�|���o+l���pqy|iӴ�Rp2�ڍ#��X�6���6��w�pF�V�֤/�2�y�Uk�����+����
�0�m��r�*������T+��H˅ߑ�dX��a`�>�Ze⸐@B�����q�HgE��?�$0+�^�Dy�`\���Ȩv�M8�V���j��b*W�����H-����Έq��Z��q��ZՃ�f.\�X�u\̅c�`�j~ƅ�P�=.i�ͨj2q�K �ZLWoo�Ò����-�l�� ��V�q��	B�������ja\0�V��a`��g�4픪e�	�H�N���[h�˔�i���V8�Q/���+!G���T����2�a`F�������!� ��` �������鯳y㞁��=��Ƹd`���Qb��B!��,wyI�h����
kO,ɽL��3�P(8?YѽcO�p炳ny��^��=����|�|�{w=��8D\lO.-��y�'X��ܹ���Υ����},j_�⛫�_|s���y���a`���%x��Yy11x��Y�CNv6O�� }���������=�nd�g�7j��������P�\�?�Ӎ��Ye��
�X���uI; ��g��_s�]���zr��2�W�/�h��gÊ���!���2�:Ǩ��3;�>�$�:�? X38K��
t{�& ��h�]��X		LbVSkc�/�Y�g�nCRF���SƊn�����2i�@R6���F�$4�[�=`:���lMP����L�#�@�P���%�����pn1�qgD��ŧ6hC84��1mM�bu�fD�<e>M���	���.7�yiA�Ӑ��a熬�I	������9���If�lDT��wF�ֆ0Gg�d�6������}濆��
/om�P��7���㱽w������#�Z��Έ��wF�ֆp���@Wp�C��K�.�h�P�H�`t6O6�-�����M!����f�[��rq��r��|@gК�a��fDF����n�;#RsVx�3�r�T^�����6)�ֽc����ՙ�������\�Y&����l�e��2��	���<�
_���<��zV&��u�&aIԄfD\���\{�h�"rEM���r�'ޙP+Fd��L�l��L��ȴ4��NFd���	r�4(g q���a��Ĵ4�T�-�[��3��Yf&W������3!(�ߙPa#�d��ޓe)�v��{�hih�����s">��^]�齲��H�}N�ֱ�I`�� r?�T�r	�6"Iχ�./�r�$��#��<
a��#���(����ˊ�D]�_�F��yrP��|���aZe_.#B��)[��u�P*�ZiR	�"�r)��4�6��-ݓy�D������詭�x:)$0Q�	$�4D.kڤr�ఉ.ɥQ�B"7�W�X��]��\�$���`f�)�eͦ҆#���F`p�]R��Iu`�޴ �3�Z�)u`�r�GRf[`�A[��*N4�-u��Q���<�b8�q`�@G���Kϻ��ߏKϻ$1y��iq�l|�'�w�\�4�<^N�~�'�ʍ�U�mmRrsO���]�$�^���n��0:�?�ZԚ�e����h&\zޕ�����r:/�˼��+��]�ȏ6���ǕO+�*Uu�Mѓ�A�r�mW�:��d�57pΣC����%2�]:���7�@f]�3��7�b�I3M6ؘ�1N;���/���尡D$��X$%3,��6DaV`�4a�D�Ǒ���LlD��ooZl���K��޵�]e��1$6?�:����ɳž4����������cC�'����`�I�kɨ�]�D���ux��i��̣t�9��f�Ĥ�akG.=��S��W�Xg�B�s�q2=�>��f��FH�f+�g۔b  _?��><��ig4N��ny"�;�w�κ��w����]M���g�ۮ&!F�
k��Exs؃ 贑 ����b�%��c���u4�]���:V�$D0�E�"H6�0��"�r�v�ޯ��z�������I�f�{�UwUU�3���Fd5�k��V����?��6`̓S`?ּ� �!���K�C�ֱ�Ҋ���yCz� Y@�F��rJ��c%�
2�E$d�ka�>׺7O#�F庄3t��ShD�X��-�$����:h�GT���ZM8�ςb�a�~�)�X�)�9{.�����s���<������n?Wk4l�6v	Z���P�"�O"�Q�i�wl(�FQ Q�eP����H�v�xp���l���}�\����#��1vo+F���K�C-8@�w0*lL�,T�W��.�GFȑ��j?�$G�Ռ�XX)�|�;�~�s��A6�A��Z*��Hמg��m�Ӽِ��|�BxV2䙳�����}��K�@ ��2tP�˿�9�C$�a���?H���~`�pX~`�5hspf�&Y5,A�&3�'?�y�/�#ga-�K���0?xM��4�h��������U��5<K�y��$|?43!ўZ ,P����o�L����L�+Wj���Y�����BxcBݷ6\��v����9V5�����]��_ve�?�F�!��+�W����Rnl��7W>�Xn]��y���G���,s8~��SPV�c_��U}��a�!!X�.�\���p�n�G��7W>�X6�6���7������x?�����ru}.���y��4`��W���
wi����*�k������9_Z����R;�yu}%�1|^>y�N�p�_P
��?ܯ+e�i����_Hןk��w��J�����p]u`]ρ:3�k���8��5f��֗a5�!���\f��Il��%d¥���J����H2ah���̄���:($�����K���z�A=_�
��L�2Tٰ���&4��I�����h��m�!����jo0�y�V�����A�	����.����U��S�Ý�Qگ�������J���'�?��z����od�e�[0lEl#ScD�!4ް��蛈?��bOdA�tE�}��������������CδWd�ux^\H�a�+��K+���)k�f8��-�
âZ����E���e���Gb�Cz���A�\#�q0><�oJ����H����8s��P���X�p���{�<��38�چ�|��/��՝O�;�t��f}[��k���y�Dx��nP���|"�~�^�v���x��B�JϗVF�V��8�7��!젹uힻ�k��� L�I�6��.4�vz!���Ga(�sX�8�8qz9�(�M[Ǭz�.��vq�=-etT����xU�s��r����a��Z+1�Y˷�/^��b��]C��Z��+J�*B�����x�4k�������Ց�i`2�}."��r��)kJ.���yU����MPih���y�Y��Qp�1��Csb,P���І^��U�� �I�� =M��qii�[�/ ������X�k.����M��2%�5�,<������+{%B����z�K�.+�H�	ZCxi��K5�:�6?«�7���	�n1��i575��9��2"?:TJ� �_��r�{[a�4���2;�T��ܚ7Xx�_��V$U`airTσ���4�g=E��֖׾�q�Ϝ��5'�^������x�;�W��!�?�[�p����`��M�O�>'&���1|^>y<yEx_�_lNy�и+�}l�1jx��3!.I�ލ��������1<�ޛ�|$�	�8���:&�o������2z������׵ŵ�����U�	?:���~��7�5Y[�������~+"Y����@���#�m���e[�FZB$,I��]��T.�<.���p������%׈Ȍ�!"M ����	OD� E\!6�y�vr�X?��|��aI�-u.6�ﶷV�{F��s�|�6�N&���B���pn��=� ���Xx�!.��Ј�+�{$̸�f&"�~�F$^��o��T���9�`��;}.|���'lD�`~e�F�՜%"2�x��Iw1y`��is�f��1w/b����#?�r.-m�x9�;h?����aE�X#pn�zbo��&���~i��6�����ȍ��4OxZ�:���M��Z������5(�m8���"�k԰;����H/EV�0Č�R��T��	�)���M�&�`��܂�;�3E9�~�7/�醱��Rx��lLgLDk��BS[�����390�a͌p�-�d�[���U���#sCm϶�VCꮷ�[h��#�cz}�|��L*p�w)�z���RG��a!��xh������"J�ܦ�V[��SMB�=���>	f�bn����̗V=q�s"i�T��a"i�������dE�M�b:��
+jg�QJ�j�6͗Vf{Ո�3:������w?q���w^,��}��eӈ��/&YM�$��o���E&��D�F�7��F�K���� a{o�����վ�Ƿ�����f��M��ǝ�/���:�����:����RcDx�f�D׈t%W��k���@��pUxNC�B�����-����?_�v��rfԎmΈ�1���ڦ����h�yu}���4AO����e,,����sѰ�/��a���x9>�8��>8	�k�e;&-�F k ���{��ၚ�7�g��c�5�xh��m#)i���iM2h2F���u��l{k�aFF�h/�W"���SF�d��2���c.�t���A�j3��CMm_!y׋D;]$Z�0 ���3���&��������¯	7.�$�+p~�vg�F��45��(
q�'Z6���."Ij/0I~aI"gnܼ.""�z��A���Nd�����Im�_x��T����/<J�Ɣ&��_x�0HK���'���W�c���8�C���0����8*B���v>0�������Ү�K3���{��I�T������/,%J�8����`WZ����/��3� �9���x:�9Լ��{�<��p*sxjz��Q2��7*<�&�3-�.˴�!��*a}�&N��ow9�3�[b�tX�[.���E9�cka��wu��X��zX�v�'N��w*���Bx�+BU�u_N�o~!o�z�Q�F�s�Xo�����/��IOQ�:�/�W�_h�{G�O��cqz���c�=%:8�W�_8f�S�m��!�^��we�������ܛ/Ǧ���f�����xN�{R6�����z^+��T�5m[햤~t�SE����v`tR��|b��r��H���7��М�,@i~!�7V�9L��Z(x�eQ��󥕨�zN�s*����{�6�j;���{�K��{�CZh�ͩ�|N�ᷮݳ�׳����х�\S�#�sN;�-�m�}�¤���:�>���ر�N��U�2F�"�{cJ��\�h�.w�\����lt#~<�c���m��Z���� u�tu�f��c��V
�'̾m{>��\�`���W���`>�o�%��c �3���H=�kN���n�(���6�g	�ے�viWU�Z����ն��+�AQLD�NOd<>����z�\��`i���I��3��~"i���8��34}�.�PB!���]n�H ����y}�ֆDc�)x,E��1�[3�����%ִ����+��F$����������y�Om�{;C������bC��cw����{����D^[_�<-��3jͰ~ <t_>o��}����C�  =�Y��|����<#?��dk�N5���Qr�R����;�f�;?�����ʜ�)<��C8j`^Y3�΋�{T��<���`��8I���]��g-QI�y-��,v�����0�Z�ܟ�Ҋ����gp��-��R���%�L�%��ychc� {�����wq���Z���ɇf&T�N�$\"�����93��B�po.X�7������H>o(F۵cl.�����(��K\�7�0���e	��I� ��!Z�ji2�K\�7�� !���Z�+E\��j�[+J�Ѕ'2�>������KĵC��\�-&{��HO�����㨬D�� ��߃�Y�o��+�    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/cave_tileset.png-ea6e9cc27b0413414dcf1b715660e66d.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://game/tiled/cave_tileset.png"
dest_files=[ "res://.import/cave_tileset.png-ea6e9cc27b0413414dcf1b715660e66d.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=false
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=false
svg/scale=1.0
           RSRC                    TileSet                                                                 	     resource_local_to_scene    resource_name    custom_solver_bias    extents    script 	   segments    points    0/name 
   0/texture    0/normal_map    0/tex_offset    0/material    0/modulate 	   0/region    0/tile_mode    0/occluder_offset    0/occluder    0/navigation_offset    0/navigation    0/shape_offset    0/shape_transform    0/shape    0/shape_one_way    0/shape_one_way_margin 	   0/shapes 
   0/z_index    1/name 
   1/texture    1/normal_map    1/tex_offset    1/material    1/modulate 	   1/region    1/tile_mode    1/occluder_offset    1/occluder    1/navigation_offset    1/navigation    1/shape_offset    1/shape_transform    1/shape    1/shape_one_way    1/shape_one_way_margin 	   1/shapes 
   1/z_index    2/name 
   2/texture    2/normal_map    2/tex_offset    2/material    2/modulate 	   2/region    2/tile_mode    2/occluder_offset    2/occluder    2/navigation_offset    2/navigation    2/shape_offset    2/shape_transform    2/shape    2/shape_one_way    2/shape_one_way_margin 	   2/shapes 
   2/z_index    3/name 
   3/texture    3/normal_map    3/tex_offset    3/material    3/modulate 	   3/region    3/tile_mode    3/occluder_offset    3/occluder    3/navigation_offset    3/navigation    3/shape_offset    3/shape_transform    3/shape    3/shape_one_way    3/shape_one_way_margin 	   3/shapes 
   3/z_index    4/name 
   4/texture    4/normal_map    4/tex_offset    4/material    4/modulate 	   4/region    4/tile_mode    4/occluder_offset    4/occluder    4/navigation_offset    4/navigation    4/shape_offset    4/shape_transform    4/shape    4/shape_one_way    4/shape_one_way_margin 	   4/shapes 
   4/z_index    5/name 
   5/texture    5/normal_map    5/tex_offset    5/material    5/modulate 	   5/region    5/tile_mode    5/occluder_offset    5/occluder    5/navigation_offset    5/navigation    5/shape_offset    5/shape_transform    5/shape    5/shape_one_way    5/shape_one_way_margin 	   5/shapes 
   5/z_index    6/name 
   6/texture    6/normal_map    6/tex_offset    6/material    6/modulate 	   6/region    6/tile_mode    6/occluder_offset    6/occluder    6/navigation_offset    6/navigation    6/shape_offset    6/shape_transform    6/shape    6/shape_one_way    6/shape_one_way_margin 	   6/shapes 
   6/z_index    7/name 
   7/texture    7/normal_map    7/tex_offset    7/material    7/modulate 	   7/region    7/tile_mode    7/occluder_offset    7/occluder    7/navigation_offset    7/navigation    7/shape_offset    7/shape_transform    7/shape    7/shape_one_way    7/shape_one_way_margin 	   7/shapes 
   7/z_index    8/name 
   8/texture    8/normal_map    8/tex_offset    8/material    8/modulate 	   8/region    8/tile_mode    8/occluder_offset    8/occluder    8/navigation_offset    8/navigation    8/shape_offset    8/shape_transform    8/shape    8/shape_one_way    8/shape_one_way_margin 	   8/shapes 
   8/z_index    9/name 
   9/texture    9/normal_map    9/tex_offset    9/material    9/modulate 	   9/region    9/tile_mode    9/occluder_offset    9/occluder    9/navigation_offset    9/navigation    9/shape_offset    9/shape_transform    9/shape    9/shape_one_way    9/shape_one_way_margin 	   9/shapes 
   9/z_index    10/name    10/texture    10/normal_map    10/tex_offset    10/material    10/modulate 
   10/region    10/tile_mode    10/occluder_offset    10/occluder    10/navigation_offset    10/navigation    10/shape_offset    10/shape_transform 	   10/shape    10/shape_one_way    10/shape_one_way_margin 
   10/shapes    10/z_index    11/name    11/texture    11/normal_map    11/tex_offset    11/material    11/modulate 
   11/region    11/tile_mode    11/occluder_offset    11/occluder    11/navigation_offset    11/navigation    11/shape_offset    11/shape_transform 	   11/shape    11/shape_one_way    11/shape_one_way_margin 
   11/shapes    11/z_index    12/name    12/texture    12/normal_map    12/tex_offset    12/material    12/modulate 
   12/region    12/tile_mode    12/occluder_offset    12/occluder    12/navigation_offset    12/navigation    12/shape_offset    12/shape_transform 	   12/shape    12/shape_one_way    12/shape_one_way_margin 
   12/shapes    12/z_index    13/name    13/texture    13/normal_map    13/tex_offset    13/material    13/modulate 
   13/region    13/tile_mode    13/occluder_offset    13/occluder    13/navigation_offset    13/navigation    13/shape_offset    13/shape_transform 	   13/shape    13/shape_one_way    13/shape_one_way_margin 
   13/shapes    13/z_index    14/name    14/texture    14/normal_map    14/tex_offset    14/material    14/modulate 
   14/region    14/tile_mode    14/occluder_offset    14/occluder    14/navigation_offset    14/navigation    14/shape_offset    14/shape_transform 	   14/shape    14/shape_one_way    14/shape_one_way_margin 
   14/shapes    14/z_index    15/name    15/texture    15/normal_map    15/tex_offset    15/material    15/modulate 
   15/region    15/tile_mode    15/occluder_offset    15/occluder    15/navigation_offset    15/navigation    15/shape_offset    15/shape_transform 	   15/shape    15/shape_one_way    15/shape_one_way_margin 
   15/shapes    15/z_index    16/name    16/texture    16/normal_map    16/tex_offset    16/material    16/modulate 
   16/region    16/tile_mode    16/occluder_offset    16/occluder    16/navigation_offset    16/navigation    16/shape_offset    16/shape_transform 	   16/shape    16/shape_one_way    16/shape_one_way_margin 
   16/shapes    16/z_index    17/name    17/texture    17/normal_map    17/tex_offset    17/material    17/modulate 
   17/region    17/tile_mode    17/occluder_offset    17/occluder    17/navigation_offset    17/navigation    17/shape_offset    17/shape_transform 	   17/shape    17/shape_one_way    17/shape_one_way_margin 
   17/shapes    17/z_index    18/name    18/texture    18/normal_map    18/tex_offset    18/material    18/modulate 
   18/region    18/tile_mode    18/occluder_offset    18/occluder    18/navigation_offset    18/navigation    18/shape_offset    18/shape_transform 	   18/shape    18/shape_one_way    18/shape_one_way_margin 
   18/shapes    18/z_index    19/name    19/texture    19/normal_map    19/tex_offset    19/material    19/modulate 
   19/region    19/tile_mode    19/occluder_offset    19/occluder    19/navigation_offset    19/navigation    19/shape_offset    19/shape_transform 	   19/shape    19/shape_one_way    19/shape_one_way_margin 
   19/shapes    19/z_index    20/name    20/texture    20/normal_map    20/tex_offset    20/material    20/modulate 
   20/region    20/tile_mode    20/occluder_offset    20/occluder    20/navigation_offset    20/navigation    20/shape_offset    20/shape_transform 	   20/shape    20/shape_one_way    20/shape_one_way_margin 
   20/shapes    20/z_index    21/name    21/texture    21/normal_map    21/tex_offset    21/material    21/modulate 
   21/region    21/tile_mode    21/occluder_offset    21/occluder    21/navigation_offset    21/navigation    21/shape_offset    21/shape_transform 	   21/shape    21/shape_one_way    21/shape_one_way_margin 
   21/shapes    21/z_index    22/name    22/texture    22/normal_map    22/tex_offset    22/material    22/modulate 
   22/region    22/tile_mode    22/occluder_offset    22/occluder    22/navigation_offset    22/navigation    22/shape_offset    22/shape_transform 	   22/shape    22/shape_one_way    22/shape_one_way_margin 
   22/shapes    22/z_index    23/name    23/texture    23/normal_map    23/tex_offset    23/material    23/modulate 
   23/region    23/tile_mode    23/occluder_offset    23/occluder    23/navigation_offset    23/navigation    23/shape_offset    23/shape_transform 	   23/shape    23/shape_one_way    23/shape_one_way_margin 
   23/shapes    23/z_index    24/name    24/texture    24/normal_map    24/tex_offset    24/material    24/modulate 
   24/region    24/tile_mode    24/occluder_offset    24/occluder    24/navigation_offset    24/navigation    24/shape_offset    24/shape_transform 	   24/shape    24/shape_one_way    24/shape_one_way_margin 
   24/shapes    24/z_index    25/name    25/texture    25/normal_map    25/tex_offset    25/material    25/modulate 
   25/region    25/tile_mode    25/occluder_offset    25/occluder    25/navigation_offset    25/navigation    25/shape_offset    25/shape_transform 	   25/shape    25/shape_one_way    25/shape_one_way_margin 
   25/shapes    25/z_index    26/name    26/texture    26/normal_map    26/tex_offset    26/material    26/modulate 
   26/region    26/tile_mode    26/occluder_offset    26/occluder    26/navigation_offset    26/navigation    26/shape_offset    26/shape_transform 	   26/shape    26/shape_one_way    26/shape_one_way_margin 
   26/shapes    26/z_index    27/name    27/texture    27/normal_map    27/tex_offset    27/material    27/modulate 
   27/region    27/tile_mode    27/occluder_offset    27/occluder    27/navigation_offset    27/navigation    27/shape_offset    27/shape_transform 	   27/shape    27/shape_one_way    27/shape_one_way_margin 
   27/shapes    27/z_index    28/name    28/texture    28/normal_map    28/tex_offset    28/material    28/modulate 
   28/region    28/tile_mode    28/occluder_offset    28/occluder    28/navigation_offset    28/navigation    28/shape_offset    28/shape_transform 	   28/shape    28/shape_one_way    28/shape_one_way_margin 
   28/shapes    28/z_index    29/name    29/texture    29/normal_map    29/tex_offset    29/material    29/modulate 
   29/region    29/tile_mode    29/occluder_offset    29/occluder    29/navigation_offset    29/navigation    29/shape_offset    29/shape_transform 	   29/shape    29/shape_one_way    29/shape_one_way_margin 
   29/shapes    29/z_index    30/name    30/texture    30/normal_map    30/tex_offset    30/material    30/modulate 
   30/region    30/tile_mode    30/occluder_offset    30/occluder    30/navigation_offset    30/navigation    30/shape_offset    30/shape_transform 	   30/shape    30/shape_one_way    30/shape_one_way_margin 
   30/shapes    30/z_index    31/name    31/texture    31/normal_map    31/tex_offset    31/material    31/modulate 
   31/region    31/tile_mode    31/occluder_offset    31/occluder    31/navigation_offset    31/navigation    31/shape_offset    31/shape_transform 	   31/shape    31/shape_one_way    31/shape_one_way_margin 
   31/shapes    31/z_index    32/name    32/texture    32/normal_map    32/tex_offset    32/material    32/modulate 
   32/region    32/tile_mode    32/occluder_offset    32/occluder    32/navigation_offset    32/navigation    32/shape_offset    32/shape_transform 	   32/shape    32/shape_one_way    32/shape_one_way_margin 
   32/shapes    32/z_index    33/name    33/texture    33/normal_map    33/tex_offset    33/material    33/modulate 
   33/region    33/tile_mode    33/occluder_offset    33/occluder    33/navigation_offset    33/navigation    33/shape_offset    33/shape_transform 	   33/shape    33/shape_one_way    33/shape_one_way_margin 
   33/shapes    33/z_index    34/name    34/texture    34/normal_map    34/tex_offset    34/material    34/modulate 
   34/region    34/tile_mode    34/occluder_offset    34/occluder    34/navigation_offset    34/navigation    34/shape_offset    34/shape_transform 	   34/shape    34/shape_one_way    34/shape_one_way_margin 
   34/shapes    34/z_index    35/name    35/texture    35/normal_map    35/tex_offset    35/material    35/modulate 
   35/region    35/tile_mode    35/occluder_offset    35/occluder    35/navigation_offset    35/navigation    35/shape_offset    35/shape_transform 	   35/shape    35/shape_one_way    35/shape_one_way_margin 
   35/shapes    35/z_index    36/name    36/texture    36/normal_map    36/tex_offset    36/material    36/modulate 
   36/region    36/tile_mode    36/occluder_offset    36/occluder    36/navigation_offset    36/navigation    36/shape_offset    36/shape_transform 	   36/shape    36/shape_one_way    36/shape_one_way_margin 
   36/shapes    36/z_index    37/name    37/texture    37/normal_map    37/tex_offset    37/material    37/modulate 
   37/region    37/tile_mode    37/occluder_offset    37/occluder    37/navigation_offset    37/navigation    37/shape_offset    37/shape_transform 	   37/shape    37/shape_one_way    37/shape_one_way_margin 
   37/shapes    37/z_index    38/name    38/texture    38/normal_map    38/tex_offset    38/material    38/modulate 
   38/region    38/tile_mode    38/occluder_offset    38/occluder    38/navigation_offset    38/navigation    38/shape_offset    38/shape_transform 	   38/shape    38/shape_one_way    38/shape_one_way_margin 
   38/shapes    38/z_index    39/name    39/texture    39/normal_map    39/tex_offset    39/material    39/modulate 
   39/region    39/tile_mode    39/occluder_offset    39/occluder    39/navigation_offset    39/navigation    39/shape_offset    39/shape_transform 	   39/shape    39/shape_one_way    39/shape_one_way_margin 
   39/shapes    39/z_index    40/name    40/texture    40/normal_map    40/tex_offset    40/material    40/modulate 
   40/region    40/tile_mode    40/occluder_offset    40/occluder    40/navigation_offset    40/navigation    40/shape_offset    40/shape_transform 	   40/shape    40/shape_one_way    40/shape_one_way_margin 
   40/shapes    40/z_index    41/name    41/texture    41/normal_map    41/tex_offset    41/material    41/modulate 
   41/region    41/tile_mode    41/occluder_offset    41/occluder    41/navigation_offset    41/navigation    41/shape_offset    41/shape_transform 	   41/shape    41/shape_one_way    41/shape_one_way_margin 
   41/shapes    41/z_index    42/name    42/texture    42/normal_map    42/tex_offset    42/material    42/modulate 
   42/region    42/tile_mode    42/occluder_offset    42/occluder    42/navigation_offset    42/navigation    42/shape_offset    42/shape_transform 	   42/shape    42/shape_one_way    42/shape_one_way_margin 
   42/shapes    42/z_index    43/name    43/texture    43/normal_map    43/tex_offset    43/material    43/modulate 
   43/region    43/tile_mode    43/occluder_offset    43/occluder    43/navigation_offset    43/navigation    43/shape_offset    43/shape_transform 	   43/shape    43/shape_one_way    43/shape_one_way_margin 
   43/shapes    43/z_index    44/name    44/texture    44/normal_map    44/tex_offset    44/material    44/modulate 
   44/region    44/tile_mode    44/occluder_offset    44/occluder    44/navigation_offset    44/navigation    44/shape_offset    44/shape_transform 	   44/shape    44/shape_one_way    44/shape_one_way_margin 
   44/shapes    44/z_index    45/name    45/texture    45/normal_map    45/tex_offset    45/material    45/modulate 
   45/region    45/tile_mode    45/occluder_offset    45/occluder    45/navigation_offset    45/navigation    45/shape_offset    45/shape_transform 	   45/shape    45/shape_one_way    45/shape_one_way_margin 
   45/shapes    45/z_index    46/name    46/texture    46/normal_map    46/tex_offset    46/material    46/modulate 
   46/region    46/tile_mode    46/occluder_offset    46/occluder    46/navigation_offset    46/navigation    46/shape_offset    46/shape_transform 	   46/shape    46/shape_one_way    46/shape_one_way_margin 
   46/shapes    46/z_index    47/name    47/texture    47/normal_map    47/tex_offset    47/material    47/modulate 
   47/region    47/tile_mode    47/occluder_offset    47/occluder    47/navigation_offset    47/navigation    47/shape_offset    47/shape_transform 	   47/shape    47/shape_one_way    47/shape_one_way_margin 
   47/shapes    47/z_index    48/name    48/texture    48/normal_map    48/tex_offset    48/material    48/modulate 
   48/region    48/tile_mode    48/occluder_offset    48/occluder    48/navigation_offset    48/navigation    48/shape_offset    48/shape_transform 	   48/shape    48/shape_one_way    48/shape_one_way_margin 
   48/shapes    48/z_index    49/name    49/texture    49/normal_map    49/tex_offset    49/material    49/modulate 
   49/region    49/tile_mode    49/occluder_offset    49/occluder    49/navigation_offset    49/navigation    49/shape_offset    49/shape_transform 	   49/shape    49/shape_one_way    49/shape_one_way_margin 
   49/shapes    49/z_index    50/name    50/texture    50/normal_map    50/tex_offset    50/material    50/modulate 
   50/region    50/tile_mode    50/occluder_offset    50/occluder    50/navigation_offset    50/navigation    50/shape_offset    50/shape_transform 	   50/shape    50/shape_one_way    50/shape_one_way_margin 
   50/shapes    50/z_index    51/name    51/texture    51/normal_map    51/tex_offset    51/material    51/modulate 
   51/region    51/tile_mode    51/occluder_offset    51/occluder    51/navigation_offset    51/navigation    51/shape_offset    51/shape_transform 	   51/shape    51/shape_one_way    51/shape_one_way_margin 
   51/shapes    51/z_index    52/name    52/texture    52/normal_map    52/tex_offset    52/material    52/modulate 
   52/region    52/tile_mode    52/occluder_offset    52/occluder    52/navigation_offset    52/navigation    52/shape_offset    52/shape_transform 	   52/shape    52/shape_one_way    52/shape_one_way_margin 
   52/shapes    52/z_index    53/name    53/texture    53/normal_map    53/tex_offset    53/material    53/modulate 
   53/region    53/tile_mode    53/occluder_offset    53/occluder    53/navigation_offset    53/navigation    53/shape_offset    53/shape_transform 	   53/shape    53/shape_one_way    53/shape_one_way_margin 
   53/shapes    53/z_index    54/name    54/texture    54/normal_map    54/tex_offset    54/material    54/modulate 
   54/region    54/tile_mode    54/occluder_offset    54/occluder    54/navigation_offset    54/navigation    54/shape_offset    54/shape_transform 	   54/shape    54/shape_one_way    54/shape_one_way_margin 
   54/shapes    54/z_index    55/name    55/texture    55/normal_map    55/tex_offset    55/material    55/modulate 
   55/region    55/tile_mode    55/occluder_offset    55/occluder    55/navigation_offset    55/navigation    55/shape_offset    55/shape_transform 	   55/shape    55/shape_one_way    55/shape_one_way_margin 
   55/shapes    55/z_index    56/name    56/texture    56/normal_map    56/tex_offset    56/material    56/modulate 
   56/region    56/tile_mode    56/occluder_offset    56/occluder    56/navigation_offset    56/navigation    56/shape_offset    56/shape_transform 	   56/shape    56/shape_one_way    56/shape_one_way_margin 
   56/shapes    56/z_index    57/name    57/texture    57/normal_map    57/tex_offset    57/material    57/modulate 
   57/region    57/tile_mode    57/occluder_offset    57/occluder    57/navigation_offset    57/navigation    57/shape_offset    57/shape_transform 	   57/shape    57/shape_one_way    57/shape_one_way_margin 
   57/shapes    57/z_index    58/name    58/texture    58/normal_map    58/tex_offset    58/material    58/modulate 
   58/region    58/tile_mode    58/occluder_offset    58/occluder    58/navigation_offset    58/navigation    58/shape_offset    58/shape_transform 	   58/shape    58/shape_one_way    58/shape_one_way_margin 
   58/shapes    58/z_index    59/name    59/texture    59/normal_map    59/tex_offset    59/material    59/modulate 
   59/region    59/tile_mode    59/occluder_offset    59/occluder    59/navigation_offset    59/navigation    59/shape_offset    59/shape_transform 	   59/shape    59/shape_one_way    59/shape_one_way_margin 
   59/shapes    59/z_index    60/name    60/texture    60/normal_map    60/tex_offset    60/material    60/modulate 
   60/region    60/tile_mode    60/occluder_offset    60/occluder    60/navigation_offset    60/navigation    60/shape_offset    60/shape_transform 	   60/shape    60/shape_one_way    60/shape_one_way_margin 
   60/shapes    60/z_index    61/name    61/texture    61/normal_map    61/tex_offset    61/material    61/modulate 
   61/region    61/tile_mode    61/occluder_offset    61/occluder    61/navigation_offset    61/navigation    61/shape_offset    61/shape_transform 	   61/shape    61/shape_one_way    61/shape_one_way_margin 
   61/shapes    61/z_index    62/name    62/texture    62/normal_map    62/tex_offset    62/material    62/modulate 
   62/region    62/tile_mode    62/occluder_offset    62/occluder    62/navigation_offset    62/navigation    62/shape_offset    62/shape_transform 	   62/shape    62/shape_one_way    62/shape_one_way_margin 
   62/shapes    62/z_index    63/name    63/texture    63/normal_map    63/tex_offset    63/material    63/modulate 
   63/region    63/tile_mode    63/occluder_offset    63/occluder    63/navigation_offset    63/navigation    63/shape_offset    63/shape_transform 	   63/shape    63/shape_one_way    63/shape_one_way_margin 
   63/shapes    63/z_index    64/name    64/texture    64/normal_map    64/tex_offset    64/material    64/modulate 
   64/region    64/tile_mode    64/occluder_offset    64/occluder    64/navigation_offset    64/navigation    64/shape_offset    64/shape_transform 	   64/shape    64/shape_one_way    64/shape_one_way_margin 
   64/shapes    64/z_index    65/name    65/texture    65/normal_map    65/tex_offset    65/material    65/modulate 
   65/region    65/tile_mode    65/occluder_offset    65/occluder    65/navigation_offset    65/navigation    65/shape_offset    65/shape_transform 	   65/shape    65/shape_one_way    65/shape_one_way_margin 
   65/shapes    65/z_index    66/name    66/texture    66/normal_map    66/tex_offset    66/material    66/modulate 
   66/region    66/tile_mode    66/occluder_offset    66/occluder    66/navigation_offset    66/navigation    66/shape_offset    66/shape_transform 	   66/shape    66/shape_one_way    66/shape_one_way_margin 
   66/shapes    66/z_index    67/name    67/texture    67/normal_map    67/tex_offset    67/material    67/modulate 
   67/region    67/tile_mode    67/occluder_offset    67/occluder    67/navigation_offset    67/navigation    67/shape_offset    67/shape_transform 	   67/shape    67/shape_one_way    67/shape_one_way_margin 
   67/shapes    67/z_index    68/name    68/texture    68/normal_map    68/tex_offset    68/material    68/modulate 
   68/region    68/tile_mode    68/occluder_offset    68/occluder    68/navigation_offset    68/navigation    68/shape_offset    68/shape_transform 	   68/shape    68/shape_one_way    68/shape_one_way_margin 
   68/shapes    68/z_index    69/name    69/texture    69/normal_map    69/tex_offset    69/material    69/modulate 
   69/region    69/tile_mode    69/occluder_offset    69/occluder    69/navigation_offset    69/navigation    69/shape_offset    69/shape_transform 	   69/shape    69/shape_one_way    69/shape_one_way_margin 
   69/shapes    69/z_index    70/name    70/texture    70/normal_map    70/tex_offset    70/material    70/modulate 
   70/region    70/tile_mode    70/occluder_offset    70/occluder    70/navigation_offset    70/navigation    70/shape_offset    70/shape_transform 	   70/shape    70/shape_one_way    70/shape_one_way_margin 
   70/shapes    70/z_index    71/name    71/texture    71/normal_map    71/tex_offset    71/material    71/modulate 
   71/region    71/tile_mode    71/occluder_offset    71/occluder    71/navigation_offset    71/navigation    71/shape_offset    71/shape_transform 	   71/shape    71/shape_one_way    71/shape_one_way_margin 
   71/shapes    71/z_index    72/name    72/texture    72/normal_map    72/tex_offset    72/material    72/modulate 
   72/region    72/tile_mode    72/occluder_offset    72/occluder    72/navigation_offset    72/navigation    72/shape_offset    72/shape_transform 	   72/shape    72/shape_one_way    72/shape_one_way_margin 
   72/shapes    72/z_index    73/name    73/texture    73/normal_map    73/tex_offset    73/material    73/modulate 
   73/region    73/tile_mode    73/occluder_offset    73/occluder    73/navigation_offset    73/navigation    73/shape_offset    73/shape_transform 	   73/shape    73/shape_one_way    73/shape_one_way_margin 
   73/shapes    73/z_index    74/name    74/texture    74/normal_map    74/tex_offset    74/material    74/modulate 
   74/region    74/tile_mode    74/occluder_offset    74/occluder    74/navigation_offset    74/navigation    74/shape_offset    74/shape_transform 	   74/shape    74/shape_one_way    74/shape_one_way_margin 
   74/shapes    74/z_index    75/name    75/texture    75/normal_map    75/tex_offset    75/material    75/modulate 
   75/region    75/tile_mode    75/occluder_offset    75/occluder    75/navigation_offset    75/navigation    75/shape_offset    75/shape_transform 	   75/shape    75/shape_one_way    75/shape_one_way_margin 
   75/shapes    75/z_index    76/name    76/texture    76/normal_map    76/tex_offset    76/material    76/modulate 
   76/region    76/tile_mode    76/occluder_offset    76/occluder    76/navigation_offset    76/navigation    76/shape_offset    76/shape_transform 	   76/shape    76/shape_one_way    76/shape_one_way_margin 
   76/shapes    76/z_index    77/name    77/texture    77/normal_map    77/tex_offset    77/material    77/modulate 
   77/region    77/tile_mode    77/occluder_offset    77/occluder    77/navigation_offset    77/navigation    77/shape_offset    77/shape_transform 	   77/shape    77/shape_one_way    77/shape_one_way_margin 
   77/shapes    77/z_index    78/name    78/texture    78/normal_map    78/tex_offset    78/material    78/modulate 
   78/region    78/tile_mode    78/occluder_offset    78/occluder    78/navigation_offset    78/navigation    78/shape_offset    78/shape_transform 	   78/shape    78/shape_one_way    78/shape_one_way_margin 
   78/shapes    78/z_index    79/name    79/texture    79/normal_map    79/tex_offset    79/material    79/modulate 
   79/region    79/tile_mode    79/occluder_offset    79/occluder    79/navigation_offset    79/navigation    79/shape_offset    79/shape_transform 	   79/shape    79/shape_one_way    79/shape_one_way_margin 
   79/shapes    79/z_index    80/name    80/texture    80/normal_map    80/tex_offset    80/material    80/modulate 
   80/region    80/tile_mode    80/occluder_offset    80/occluder    80/navigation_offset    80/navigation    80/shape_offset    80/shape_transform 	   80/shape    80/shape_one_way    80/shape_one_way_margin 
   80/shapes    80/z_index    81/name    81/texture    81/normal_map    81/tex_offset    81/material    81/modulate 
   81/region    81/tile_mode    81/occluder_offset    81/occluder    81/navigation_offset    81/navigation    81/shape_offset    81/shape_transform 	   81/shape    81/shape_one_way    81/shape_one_way_margin 
   81/shapes    81/z_index    82/name    82/texture    82/normal_map    82/tex_offset    82/material    82/modulate 
   82/region    82/tile_mode    82/occluder_offset    82/occluder    82/navigation_offset    82/navigation    82/shape_offset    82/shape_transform 	   82/shape    82/shape_one_way    82/shape_one_way_margin 
   82/shapes    82/z_index    83/name    83/texture    83/normal_map    83/tex_offset    83/material    83/modulate 
   83/region    83/tile_mode    83/occluder_offset    83/occluder    83/navigation_offset    83/navigation    83/shape_offset    83/shape_transform 	   83/shape    83/shape_one_way    83/shape_one_way_margin 
   83/shapes    83/z_index    84/name    84/texture    84/normal_map    84/tex_offset    84/material    84/modulate 
   84/region    84/tile_mode    84/occluder_offset    84/occluder    84/navigation_offset    84/navigation    84/shape_offset    84/shape_transform 	   84/shape    84/shape_one_way    84/shape_one_way_margin 
   84/shapes    84/z_index    85/name    85/texture    85/normal_map    85/tex_offset    85/material    85/modulate 
   85/region    85/tile_mode    85/occluder_offset    85/occluder    85/navigation_offset    85/navigation    85/shape_offset    85/shape_transform 	   85/shape    85/shape_one_way    85/shape_one_way_margin 
   85/shapes    85/z_index    86/name    86/texture    86/normal_map    86/tex_offset    86/material    86/modulate 
   86/region    86/tile_mode    86/occluder_offset    86/occluder    86/navigation_offset    86/navigation    86/shape_offset    86/shape_transform 	   86/shape    86/shape_one_way    86/shape_one_way_margin 
   86/shapes    86/z_index    87/name    87/texture    87/normal_map    87/tex_offset    87/material    87/modulate 
   87/region    87/tile_mode    87/occluder_offset    87/occluder    87/navigation_offset    87/navigation    87/shape_offset    87/shape_transform 	   87/shape    87/shape_one_way    87/shape_one_way_margin 
   87/shapes    87/z_index    88/name    88/texture    88/normal_map    88/tex_offset    88/material    88/modulate 
   88/region    88/tile_mode    88/occluder_offset    88/occluder    88/navigation_offset    88/navigation    88/shape_offset    88/shape_transform 	   88/shape    88/shape_one_way    88/shape_one_way_margin 
   88/shapes    88/z_index    89/name    89/texture    89/normal_map    89/tex_offset    89/material    89/modulate 
   89/region    89/tile_mode    89/occluder_offset    89/occluder    89/navigation_offset    89/navigation    89/shape_offset    89/shape_transform 	   89/shape    89/shape_one_way    89/shape_one_way_margin 
   89/shapes    89/z_index    90/name    90/texture    90/normal_map    90/tex_offset    90/material    90/modulate 
   90/region    90/tile_mode    90/occluder_offset    90/occluder    90/navigation_offset    90/navigation    90/shape_offset    90/shape_transform 	   90/shape    90/shape_one_way    90/shape_one_way_margin 
   90/shapes    90/z_index    91/name    91/texture    91/normal_map    91/tex_offset    91/material    91/modulate 
   91/region    91/tile_mode    91/occluder_offset    91/occluder    91/navigation_offset    91/navigation    91/shape_offset    91/shape_transform 	   91/shape    91/shape_one_way    91/shape_one_way_margin 
   91/shapes    91/z_index    92/name    92/texture    92/normal_map    92/tex_offset    92/material    92/modulate 
   92/region    92/tile_mode    92/occluder_offset    92/occluder    92/navigation_offset    92/navigation    92/shape_offset    92/shape_transform 	   92/shape    92/shape_one_way    92/shape_one_way_margin 
   92/shapes    92/z_index    93/name    93/texture    93/normal_map    93/tex_offset    93/material    93/modulate 
   93/region    93/tile_mode    93/occluder_offset    93/occluder    93/navigation_offset    93/navigation    93/shape_offset    93/shape_transform 	   93/shape    93/shape_one_way    93/shape_one_way_margin 
   93/shapes    93/z_index    94/name    94/texture    94/normal_map    94/tex_offset    94/material    94/modulate 
   94/region    94/tile_mode    94/occluder_offset    94/occluder    94/navigation_offset    94/navigation    94/shape_offset    94/shape_transform 	   94/shape    94/shape_one_way    94/shape_one_way_margin 
   94/shapes    94/z_index    95/name    95/texture    95/normal_map    95/tex_offset    95/material    95/modulate 
   95/region    95/tile_mode    95/occluder_offset    95/occluder    95/navigation_offset    95/navigation    95/shape_offset    95/shape_transform 	   95/shape    95/shape_one_way    95/shape_one_way_margin 
   95/shapes    95/z_index    96/name    96/texture    96/normal_map    96/tex_offset    96/material    96/modulate 
   96/region    96/tile_mode    96/occluder_offset    96/occluder    96/navigation_offset    96/navigation    96/shape_offset    96/shape_transform 	   96/shape    96/shape_one_way    96/shape_one_way_margin 
   96/shapes    96/z_index    97/name    97/texture    97/normal_map    97/tex_offset    97/material    97/modulate 
   97/region    97/tile_mode    97/occluder_offset    97/occluder    97/navigation_offset    97/navigation    97/shape_offset    97/shape_transform 	   97/shape    97/shape_one_way    97/shape_one_way_margin 
   97/shapes    97/z_index    98/name    98/texture    98/normal_map    98/tex_offset    98/material    98/modulate 
   98/region    98/tile_mode    98/occluder_offset    98/occluder    98/navigation_offset    98/navigation    98/shape_offset    98/shape_transform 	   98/shape    98/shape_one_way    98/shape_one_way_margin 
   98/shapes    98/z_index    99/name    99/texture    99/normal_map    99/tex_offset    99/material    99/modulate 
   99/region    99/tile_mode    99/occluder_offset    99/occluder    99/navigation_offset    99/navigation    99/shape_offset    99/shape_transform 	   99/shape    99/shape_one_way    99/shape_one_way_margin 
   99/shapes    99/z_index 	   100/name    100/texture    100/normal_map    100/tex_offset    100/material    100/modulate    100/region    100/tile_mode    100/occluder_offset    100/occluder    100/navigation_offset    100/navigation    100/shape_offset    100/shape_transform 
   100/shape    100/shape_one_way    100/shape_one_way_margin    100/shapes    100/z_index 	   101/name    101/texture    101/normal_map    101/tex_offset    101/material    101/modulate    101/region    101/tile_mode    101/occluder_offset    101/occluder    101/navigation_offset    101/navigation    101/shape_offset    101/shape_transform 
   101/shape    101/shape_one_way    101/shape_one_way_margin    101/shapes    101/z_index 	   102/name    102/texture    102/normal_map    102/tex_offset    102/material    102/modulate    102/region    102/tile_mode    102/occluder_offset    102/occluder    102/navigation_offset    102/navigation    102/shape_offset    102/shape_transform 
   102/shape    102/shape_one_way    102/shape_one_way_margin    102/shapes    102/z_index 	   103/name    103/texture    103/normal_map    103/tex_offset    103/material    103/modulate    103/region    103/tile_mode    103/occluder_offset    103/occluder    103/navigation_offset    103/navigation    103/shape_offset    103/shape_transform 
   103/shape    103/shape_one_way    103/shape_one_way_margin    103/shapes    103/z_index 	   104/name    104/texture    104/normal_map    104/tex_offset    104/material    104/modulate    104/region    104/tile_mode    104/occluder_offset    104/occluder    104/navigation_offset    104/navigation    104/shape_offset    104/shape_transform 
   104/shape    104/shape_one_way    104/shape_one_way_margin    104/shapes    104/z_index 	   105/name    105/texture    105/normal_map    105/tex_offset    105/material    105/modulate    105/region    105/tile_mode    105/occluder_offset    105/occluder    105/navigation_offset    105/navigation    105/shape_offset    105/shape_transform 
   105/shape    105/shape_one_way    105/shape_one_way_margin    105/shapes    105/z_index 	   106/name    106/texture    106/normal_map    106/tex_offset    106/material    106/modulate    106/region    106/tile_mode    106/occluder_offset    106/occluder    106/navigation_offset    106/navigation    106/shape_offset    106/shape_transform 
   106/shape    106/shape_one_way    106/shape_one_way_margin    106/shapes    106/z_index 	   107/name    107/texture    107/normal_map    107/tex_offset    107/material    107/modulate    107/region    107/tile_mode    107/occluder_offset    107/occluder    107/navigation_offset    107/navigation    107/shape_offset    107/shape_transform 
   107/shape    107/shape_one_way    107/shape_one_way_margin    107/shapes    107/z_index 	   108/name    108/texture    108/normal_map    108/tex_offset    108/material    108/modulate    108/region    108/tile_mode    108/occluder_offset    108/occluder    108/navigation_offset    108/navigation    108/shape_offset    108/shape_transform 
   108/shape    108/shape_one_way    108/shape_one_way_margin    108/shapes    108/z_index 	   109/name    109/texture    109/normal_map    109/tex_offset    109/material    109/modulate    109/region    109/tile_mode    109/occluder_offset    109/occluder    109/navigation_offset    109/navigation    109/shape_offset    109/shape_transform 
   109/shape    109/shape_one_way    109/shape_one_way_margin    109/shapes    109/z_index 	   110/name    110/texture    110/normal_map    110/tex_offset    110/material    110/modulate    110/region    110/tile_mode    110/occluder_offset    110/occluder    110/navigation_offset    110/navigation    110/shape_offset    110/shape_transform 
   110/shape    110/shape_one_way    110/shape_one_way_margin    110/shapes    110/z_index 	   111/name    111/texture    111/normal_map    111/tex_offset    111/material    111/modulate    111/region    111/tile_mode    111/occluder_offset    111/occluder    111/navigation_offset    111/navigation    111/shape_offset    111/shape_transform 
   111/shape    111/shape_one_way    111/shape_one_way_margin    111/shapes    111/z_index 	   112/name    112/texture    112/normal_map    112/tex_offset    112/material    112/modulate    112/region    112/tile_mode    112/occluder_offset    112/occluder    112/navigation_offset    112/navigation    112/shape_offset    112/shape_transform 
   112/shape    112/shape_one_way    112/shape_one_way_margin    112/shapes    112/z_index 	   113/name    113/texture    113/normal_map    113/tex_offset    113/material    113/modulate    113/region    113/tile_mode    113/occluder_offset    113/occluder    113/navigation_offset    113/navigation    113/shape_offset    113/shape_transform 
   113/shape    113/shape_one_way    113/shape_one_way_margin    113/shapes    113/z_index 	   114/name    114/texture    114/normal_map    114/tex_offset    114/material    114/modulate    114/region    114/tile_mode    114/occluder_offset    114/occluder    114/navigation_offset    114/navigation    114/shape_offset    114/shape_transform 
   114/shape    114/shape_one_way    114/shape_one_way_margin    114/shapes    114/z_index 	   115/name    115/texture    115/normal_map    115/tex_offset    115/material    115/modulate    115/region    115/tile_mode    115/occluder_offset    115/occluder    115/navigation_offset    115/navigation    115/shape_offset    115/shape_transform 
   115/shape    115/shape_one_way    115/shape_one_way_margin    115/shapes    115/z_index 	   116/name    116/texture    116/normal_map    116/tex_offset    116/material    116/modulate    116/region    116/tile_mode    116/occluder_offset    116/occluder    116/navigation_offset    116/navigation    116/shape_offset    116/shape_transform 
   116/shape    116/shape_one_way    116/shape_one_way_margin    116/shapes    116/z_index 	   117/name    117/texture    117/normal_map    117/tex_offset    117/material    117/modulate    117/region    117/tile_mode    117/occluder_offset    117/occluder    117/navigation_offset    117/navigation    117/shape_offset    117/shape_transform 
   117/shape    117/shape_one_way    117/shape_one_way_margin    117/shapes    117/z_index 	   118/name    118/texture    118/normal_map    118/tex_offset    118/material    118/modulate    118/region    118/tile_mode    118/occluder_offset    118/occluder    118/navigation_offset    118/navigation    118/shape_offset    118/shape_transform 
   118/shape    118/shape_one_way    118/shape_one_way_margin    118/shapes    118/z_index 	   119/name    119/texture    119/normal_map    119/tex_offset    119/material    119/modulate    119/region    119/tile_mode    119/occluder_offset    119/occluder    119/navigation_offset    119/navigation    119/shape_offset    119/shape_transform 
   119/shape    119/shape_one_way    119/shape_one_way_margin    119/shapes    119/z_index 	   120/name    120/texture    120/normal_map    120/tex_offset    120/material    120/modulate    120/region    120/tile_mode    120/occluder_offset    120/occluder    120/navigation_offset    120/navigation    120/shape_offset    120/shape_transform 
   120/shape    120/shape_one_way    120/shape_one_way_margin    120/shapes    120/z_index 	   121/name    121/texture    121/normal_map    121/tex_offset    121/material    121/modulate    121/region    121/tile_mode    121/occluder_offset    121/occluder    121/navigation_offset    121/navigation    121/shape_offset    121/shape_transform 
   121/shape    121/shape_one_way    121/shape_one_way_margin    121/shapes    121/z_index 	   122/name    122/texture    122/normal_map    122/tex_offset    122/material    122/modulate    122/region    122/tile_mode    122/occluder_offset    122/occluder    122/navigation_offset    122/navigation    122/shape_offset    122/shape_transform 
   122/shape    122/shape_one_way    122/shape_one_way_margin    122/shapes    122/z_index 	   123/name    123/texture    123/normal_map    123/tex_offset    123/material    123/modulate    123/region    123/tile_mode    123/occluder_offset    123/occluder    123/navigation_offset    123/navigation    123/shape_offset    123/shape_transform 
   123/shape    123/shape_one_way    123/shape_one_way_margin    123/shapes    123/z_index 	   124/name    124/texture    124/normal_map    124/tex_offset    124/material    124/modulate    124/region    124/tile_mode    124/occluder_offset    124/occluder    124/navigation_offset    124/navigation    124/shape_offset    124/shape_transform 
   124/shape    124/shape_one_way    124/shape_one_way_margin    124/shapes    124/z_index 	   125/name    125/texture    125/normal_map    125/tex_offset    125/material    125/modulate    125/region    125/tile_mode    125/occluder_offset    125/occluder    125/navigation_offset    125/navigation    125/shape_offset    125/shape_transform 
   125/shape    125/shape_one_way    125/shape_one_way_margin    125/shapes    125/z_index 	   126/name    126/texture    126/normal_map    126/tex_offset    126/material    126/modulate    126/region    126/tile_mode    126/occluder_offset    126/occluder    126/navigation_offset    126/navigation    126/shape_offset    126/shape_transform 
   126/shape    126/shape_one_way    126/shape_one_way_margin    126/shapes    126/z_index 	   127/name    127/texture    127/normal_map    127/tex_offset    127/material    127/modulate    127/region    127/tile_mode    127/occluder_offset    127/occluder    127/navigation_offset    127/navigation    127/shape_offset    127/shape_transform 
   127/shape    127/shape_one_way    127/shape_one_way_margin    127/shapes    127/z_index 	   128/name    128/texture    128/normal_map    128/tex_offset    128/material    128/modulate    128/region    128/tile_mode    128/occluder_offset    128/occluder    128/navigation_offset    128/navigation    128/shape_offset    128/shape_transform 
   128/shape    128/shape_one_way    128/shape_one_way_margin    128/shapes    128/z_index 	   129/name    129/texture    129/normal_map    129/tex_offset    129/material    129/modulate    129/region    129/tile_mode    129/occluder_offset    129/occluder    129/navigation_offset    129/navigation    129/shape_offset    129/shape_transform 
   129/shape    129/shape_one_way    129/shape_one_way_margin    129/shapes    129/z_index 	   130/name    130/texture    130/normal_map    130/tex_offset    130/material    130/modulate    130/region    130/tile_mode    130/occluder_offset    130/occluder    130/navigation_offset    130/navigation    130/shape_offset    130/shape_transform 
   130/shape    130/shape_one_way    130/shape_one_way_margin    130/shapes    130/z_index 	   131/name    131/texture    131/normal_map    131/tex_offset    131/material    131/modulate    131/region    131/tile_mode    131/occluder_offset    131/occluder    131/navigation_offset    131/navigation    131/shape_offset    131/shape_transform 
   131/shape    131/shape_one_way    131/shape_one_way_margin    131/shapes    131/z_index 	   132/name    132/texture    132/normal_map    132/tex_offset    132/material    132/modulate    132/region    132/tile_mode    132/occluder_offset    132/occluder    132/navigation_offset    132/navigation    132/shape_offset    132/shape_transform 
   132/shape    132/shape_one_way    132/shape_one_way_margin    132/shapes    132/z_index 	   133/name    133/texture    133/normal_map    133/tex_offset    133/material    133/modulate    133/region    133/tile_mode    133/occluder_offset    133/occluder    133/navigation_offset    133/navigation    133/shape_offset    133/shape_transform 
   133/shape    133/shape_one_way    133/shape_one_way_margin    133/shapes    133/z_index 	   134/name    134/texture    134/normal_map    134/tex_offset    134/material    134/modulate    134/region    134/tile_mode    134/occluder_offset    134/occluder    134/navigation_offset    134/navigation    134/shape_offset    134/shape_transform 
   134/shape    134/shape_one_way    134/shape_one_way_margin    134/shapes    134/z_index 	   135/name    135/texture    135/normal_map    135/tex_offset    135/material    135/modulate    135/region    135/tile_mode    135/occluder_offset    135/occluder    135/navigation_offset    135/navigation    135/shape_offset    135/shape_transform 
   135/shape    135/shape_one_way    135/shape_one_way_margin    135/shapes    135/z_index 	   136/name    136/texture    136/normal_map    136/tex_offset    136/material    136/modulate    136/region    136/tile_mode    136/occluder_offset    136/occluder    136/navigation_offset    136/navigation    136/shape_offset    136/shape_transform 
   136/shape    136/shape_one_way    136/shape_one_way_margin    136/shapes    136/z_index 	   137/name    137/texture    137/normal_map    137/tex_offset    137/material    137/modulate    137/region    137/tile_mode    137/occluder_offset    137/occluder    137/navigation_offset    137/navigation    137/shape_offset    137/shape_transform 
   137/shape    137/shape_one_way    137/shape_one_way_margin    137/shapes    137/z_index 	   138/name    138/texture    138/normal_map    138/tex_offset    138/material    138/modulate    138/region    138/tile_mode    138/occluder_offset    138/occluder    138/navigation_offset    138/navigation    138/shape_offset    138/shape_transform 
   138/shape    138/shape_one_way    138/shape_one_way_margin    138/shapes    138/z_index 	   139/name    139/texture    139/normal_map    139/tex_offset    139/material    139/modulate    139/region    139/tile_mode    139/occluder_offset    139/occluder    139/navigation_offset    139/navigation    139/shape_offset    139/shape_transform 
   139/shape    139/shape_one_way    139/shape_one_way_margin    139/shapes    139/z_index 	   140/name    140/texture    140/normal_map    140/tex_offset    140/material    140/modulate    140/region    140/tile_mode    140/occluder_offset    140/occluder    140/navigation_offset    140/navigation    140/shape_offset    140/shape_transform 
   140/shape    140/shape_one_way    140/shape_one_way_margin    140/shapes    140/z_index 	   141/name    141/texture    141/normal_map    141/tex_offset    141/material    141/modulate    141/region    141/tile_mode    141/occluder_offset    141/occluder    141/navigation_offset    141/navigation    141/shape_offset    141/shape_transform 
   141/shape    141/shape_one_way    141/shape_one_way_margin    141/shapes    141/z_index 	   142/name    142/texture    142/normal_map    142/tex_offset    142/material    142/modulate    142/region    142/tile_mode    142/occluder_offset    142/occluder    142/navigation_offset    142/navigation    142/shape_offset    142/shape_transform 
   142/shape    142/shape_one_way    142/shape_one_way_margin    142/shapes    142/z_index 	   143/name    143/texture    143/normal_map    143/tex_offset    143/material    143/modulate    143/region    143/tile_mode    143/occluder_offset    143/occluder    143/navigation_offset    143/navigation    143/shape_offset    143/shape_transform 
   143/shape    143/shape_one_way    143/shape_one_way_margin    143/shapes    143/z_index 	   144/name    144/texture    144/normal_map    144/tex_offset    144/material    144/modulate    144/region    144/tile_mode    144/occluder_offset    144/occluder    144/navigation_offset    144/navigation    144/shape_offset    144/shape_transform 
   144/shape    144/shape_one_way    144/shape_one_way_margin    144/shapes    144/z_index 	   145/name    145/texture    145/normal_map    145/tex_offset    145/material    145/modulate    145/region    145/tile_mode    145/occluder_offset    145/occluder    145/navigation_offset    145/navigation    145/shape_offset    145/shape_transform 
   145/shape    145/shape_one_way    145/shape_one_way_margin    145/shapes    145/z_index 	   146/name    146/texture    146/normal_map    146/tex_offset    146/material    146/modulate    146/region    146/tile_mode    146/occluder_offset    146/occluder    146/navigation_offset    146/navigation    146/shape_offset    146/shape_transform 
   146/shape    146/shape_one_way    146/shape_one_way_margin    146/shapes    146/z_index 	   147/name    147/texture    147/normal_map    147/tex_offset    147/material    147/modulate    147/region    147/tile_mode    147/occluder_offset    147/occluder    147/navigation_offset    147/navigation    147/shape_offset    147/shape_transform 
   147/shape    147/shape_one_way    147/shape_one_way_margin    147/shapes    147/z_index 	   148/name    148/texture    148/normal_map    148/tex_offset    148/material    148/modulate    148/region    148/tile_mode    148/occluder_offset    148/occluder    148/navigation_offset    148/navigation    148/shape_offset    148/shape_transform 
   148/shape    148/shape_one_way    148/shape_one_way_margin    148/shapes    148/z_index 	   149/name    149/texture    149/normal_map    149/tex_offset    149/material    149/modulate    149/region    149/tile_mode    149/occluder_offset    149/occluder    149/navigation_offset    149/navigation    149/shape_offset    149/shape_transform 
   149/shape    149/shape_one_way    149/shape_one_way_margin    149/shapes    149/z_index 	   150/name    150/texture    150/normal_map    150/tex_offset    150/material    150/modulate    150/region    150/tile_mode    150/occluder_offset    150/occluder    150/navigation_offset    150/navigation    150/shape_offset    150/shape_transform 
   150/shape    150/shape_one_way    150/shape_one_way_margin    150/shapes    150/z_index 	   151/name    151/texture    151/normal_map    151/tex_offset    151/material    151/modulate    151/region    151/tile_mode    151/occluder_offset    151/occluder    151/navigation_offset    151/navigation    151/shape_offset    151/shape_transform 
   151/shape    151/shape_one_way    151/shape_one_way_margin    151/shapes    151/z_index 	   152/name    152/texture    152/normal_map    152/tex_offset    152/material    152/modulate    152/region    152/tile_mode    152/occluder_offset    152/occluder    152/navigation_offset    152/navigation    152/shape_offset    152/shape_transform 
   152/shape    152/shape_one_way    152/shape_one_way_margin    152/shapes    152/z_index 	   153/name    153/texture    153/normal_map    153/tex_offset    153/material    153/modulate    153/region    153/tile_mode    153/occluder_offset    153/occluder    153/navigation_offset    153/navigation    153/shape_offset    153/shape_transform 
   153/shape    153/shape_one_way    153/shape_one_way_margin    153/shapes    153/z_index 	   154/name    154/texture    154/normal_map    154/tex_offset    154/material    154/modulate    154/region    154/tile_mode    154/occluder_offset    154/occluder    154/navigation_offset    154/navigation    154/shape_offset    154/shape_transform 
   154/shape    154/shape_one_way    154/shape_one_way_margin    154/shapes    154/z_index 	   155/name    155/texture    155/normal_map    155/tex_offset    155/material    155/modulate    155/region    155/tile_mode    155/occluder_offset    155/occluder    155/navigation_offset    155/navigation    155/shape_offset    155/shape_transform 
   155/shape    155/shape_one_way    155/shape_one_way_margin    155/shapes    155/z_index 	   156/name    156/texture    156/normal_map    156/tex_offset    156/material    156/modulate    156/region    156/tile_mode    156/occluder_offset    156/occluder    156/navigation_offset    156/navigation    156/shape_offset    156/shape_transform 
   156/shape    156/shape_one_way    156/shape_one_way_margin    156/shapes    156/z_index 	   157/name    157/texture    157/normal_map    157/tex_offset    157/material    157/modulate    157/region    157/tile_mode    157/occluder_offset    157/occluder    157/navigation_offset    157/navigation    157/shape_offset    157/shape_transform 
   157/shape    157/shape_one_way    157/shape_one_way_margin    157/shapes    157/z_index 	   158/name    158/texture    158/normal_map    158/tex_offset    158/material    158/modulate    158/region    158/tile_mode    158/occluder_offset    158/occluder    158/navigation_offset    158/navigation    158/shape_offset    158/shape_transform 
   158/shape    158/shape_one_way    158/shape_one_way_margin    158/shapes    158/z_index 	   159/name    159/texture    159/normal_map    159/tex_offset    159/material    159/modulate    159/region    159/tile_mode    159/occluder_offset    159/occluder    159/navigation_offset    159/navigation    159/shape_offset    159/shape_transform 
   159/shape    159/shape_one_way    159/shape_one_way_margin    159/shapes    159/z_index 	   160/name    160/texture    160/normal_map    160/tex_offset    160/material    160/modulate    160/region    160/tile_mode    160/occluder_offset    160/occluder    160/navigation_offset    160/navigation    160/shape_offset    160/shape_transform 
   160/shape    160/shape_one_way    160/shape_one_way_margin    160/shapes    160/z_index 	   161/name    161/texture    161/normal_map    161/tex_offset    161/material    161/modulate    161/region    161/tile_mode    161/occluder_offset    161/occluder    161/navigation_offset    161/navigation    161/shape_offset    161/shape_transform 
   161/shape    161/shape_one_way    161/shape_one_way_margin    161/shapes    161/z_index 	   162/name    162/texture    162/normal_map    162/tex_offset    162/material    162/modulate    162/region    162/tile_mode    162/occluder_offset    162/occluder    162/navigation_offset    162/navigation    162/shape_offset    162/shape_transform 
   162/shape    162/shape_one_way    162/shape_one_way_margin    162/shapes    162/z_index 	   163/name    163/texture    163/normal_map    163/tex_offset    163/material    163/modulate    163/region    163/tile_mode    163/occluder_offset    163/occluder    163/navigation_offset    163/navigation    163/shape_offset    163/shape_transform 
   163/shape    163/shape_one_way    163/shape_one_way_margin    163/shapes    163/z_index 	   164/name    164/texture    164/normal_map    164/tex_offset    164/material    164/modulate    164/region    164/tile_mode    164/occluder_offset    164/occluder    164/navigation_offset    164/navigation    164/shape_offset    164/shape_transform 
   164/shape    164/shape_one_way    164/shape_one_way_margin    164/shapes    164/z_index 	   165/name    165/texture    165/normal_map    165/tex_offset    165/material    165/modulate    165/region    165/tile_mode    165/occluder_offset    165/occluder    165/navigation_offset    165/navigation    165/shape_offset    165/shape_transform 
   165/shape    165/shape_one_way    165/shape_one_way_margin    165/shapes    165/z_index 	   166/name    166/texture    166/normal_map    166/tex_offset    166/material    166/modulate    166/region    166/tile_mode    166/occluder_offset    166/occluder    166/navigation_offset    166/navigation    166/shape_offset    166/shape_transform 
   166/shape    166/shape_one_way    166/shape_one_way_margin    166/shapes    166/z_index 	   167/name    167/texture    167/normal_map    167/tex_offset    167/material    167/modulate    167/region    167/tile_mode    167/occluder_offset    167/occluder    167/navigation_offset    167/navigation    167/shape_offset    167/shape_transform 
   167/shape    167/shape_one_way    167/shape_one_way_margin    167/shapes    167/z_index 	   168/name    168/texture    168/normal_map    168/tex_offset    168/material    168/modulate    168/region    168/tile_mode    168/occluder_offset    168/occluder    168/navigation_offset    168/navigation    168/shape_offset    168/shape_transform 
   168/shape    168/shape_one_way    168/shape_one_way_margin    168/shapes    168/z_index 	   169/name    169/texture    169/normal_map    169/tex_offset    169/material    169/modulate    169/region    169/tile_mode    169/occluder_offset    169/occluder    169/navigation_offset    169/navigation    169/shape_offset    169/shape_transform 
   169/shape    169/shape_one_way    169/shape_one_way_margin    169/shapes    169/z_index 	   170/name    170/texture    170/normal_map    170/tex_offset    170/material    170/modulate    170/region    170/tile_mode    170/occluder_offset    170/occluder    170/navigation_offset    170/navigation    170/shape_offset    170/shape_transform 
   170/shape    170/shape_one_way    170/shape_one_way_margin    170/shapes    170/z_index 	   171/name    171/texture    171/normal_map    171/tex_offset    171/material    171/modulate    171/region    171/tile_mode    171/occluder_offset    171/occluder    171/navigation_offset    171/navigation    171/shape_offset    171/shape_transform 
   171/shape    171/shape_one_way    171/shape_one_way_margin    171/shapes    171/z_index 	   172/name    172/texture    172/normal_map    172/tex_offset    172/material    172/modulate    172/region    172/tile_mode    172/occluder_offset    172/occluder    172/navigation_offset    172/navigation    172/shape_offset    172/shape_transform 
   172/shape    172/shape_one_way    172/shape_one_way_margin    172/shapes    172/z_index 	   173/name    173/texture    173/normal_map    173/tex_offset    173/material    173/modulate    173/region    173/tile_mode    173/occluder_offset    173/occluder    173/navigation_offset    173/navigation    173/shape_offset    173/shape_transform 
   173/shape    173/shape_one_way    173/shape_one_way_margin    173/shapes    173/z_index 	   174/name    174/texture    174/normal_map    174/tex_offset    174/material    174/modulate    174/region    174/tile_mode    174/occluder_offset    174/occluder    174/navigation_offset    174/navigation    174/shape_offset    174/shape_transform 
   174/shape    174/shape_one_way    174/shape_one_way_margin    174/shapes    174/z_index 	   175/name    175/texture    175/normal_map    175/tex_offset    175/material    175/modulate    175/region    175/tile_mode    175/occluder_offset    175/occluder    175/navigation_offset    175/navigation    175/shape_offset    175/shape_transform 
   175/shape    175/shape_one_way    175/shape_one_way_margin    175/shapes    175/z_index 	   176/name    176/texture    176/normal_map    176/tex_offset    176/material    176/modulate    176/region    176/tile_mode    176/occluder_offset    176/occluder    176/navigation_offset    176/navigation    176/shape_offset    176/shape_transform 
   176/shape    176/shape_one_way    176/shape_one_way_margin    176/shapes    176/z_index 	   177/name    177/texture    177/normal_map    177/tex_offset    177/material    177/modulate    177/region    177/tile_mode    177/occluder_offset    177/occluder    177/navigation_offset    177/navigation    177/shape_offset    177/shape_transform 
   177/shape    177/shape_one_way    177/shape_one_way_margin    177/shapes    177/z_index 	   178/name    178/texture    178/normal_map    178/tex_offset    178/material    178/modulate    178/region    178/tile_mode    178/occluder_offset    178/occluder    178/navigation_offset    178/navigation    178/shape_offset    178/shape_transform 
   178/shape    178/shape_one_way    178/shape_one_way_margin    178/shapes    178/z_index 	   179/name    179/texture    179/normal_map    179/tex_offset    179/material    179/modulate    179/region    179/tile_mode    179/occluder_offset    179/occluder    179/navigation_offset    179/navigation    179/shape_offset    179/shape_transform 
   179/shape    179/shape_one_way    179/shape_one_way_margin    179/shapes    179/z_index 	   180/name    180/texture    180/normal_map    180/tex_offset    180/material    180/modulate    180/region    180/tile_mode    180/occluder_offset    180/occluder    180/navigation_offset    180/navigation    180/shape_offset    180/shape_transform 
   180/shape    180/shape_one_way    180/shape_one_way_margin    180/shapes    180/z_index 	   181/name    181/texture    181/normal_map    181/tex_offset    181/material    181/modulate    181/region    181/tile_mode    181/occluder_offset    181/occluder    181/navigation_offset    181/navigation    181/shape_offset    181/shape_transform 
   181/shape    181/shape_one_way    181/shape_one_way_margin    181/shapes    181/z_index 	   182/name    182/texture    182/normal_map    182/tex_offset    182/material    182/modulate    182/region    182/tile_mode    182/occluder_offset    182/occluder    182/navigation_offset    182/navigation    182/shape_offset    182/shape_transform 
   182/shape    182/shape_one_way    182/shape_one_way_margin    182/shapes    182/z_index 	   183/name    183/texture    183/normal_map    183/tex_offset    183/material    183/modulate    183/region    183/tile_mode    183/occluder_offset    183/occluder    183/navigation_offset    183/navigation    183/shape_offset    183/shape_transform 
   183/shape    183/shape_one_way    183/shape_one_way_margin    183/shapes    183/z_index 	   184/name    184/texture    184/normal_map    184/tex_offset    184/material    184/modulate    184/region    184/tile_mode    184/occluder_offset    184/occluder    184/navigation_offset    184/navigation    184/shape_offset    184/shape_transform 
   184/shape    184/shape_one_way    184/shape_one_way_margin    184/shapes    184/z_index 	   185/name    185/texture    185/normal_map    185/tex_offset    185/material    185/modulate    185/region    185/tile_mode    185/occluder_offset    185/occluder    185/navigation_offset    185/navigation    185/shape_offset    185/shape_transform 
   185/shape    185/shape_one_way    185/shape_one_way_margin    185/shapes    185/z_index 	   186/name    186/texture    186/normal_map    186/tex_offset    186/material    186/modulate    186/region    186/tile_mode    186/occluder_offset    186/occluder    186/navigation_offset    186/navigation    186/shape_offset    186/shape_transform 
   186/shape    186/shape_one_way    186/shape_one_way_margin    186/shapes    186/z_index 	   187/name    187/texture    187/normal_map    187/tex_offset    187/material    187/modulate    187/region    187/tile_mode    187/occluder_offset    187/occluder    187/navigation_offset    187/navigation    187/shape_offset    187/shape_transform 
   187/shape    187/shape_one_way    187/shape_one_way_margin    187/shapes    187/z_index 	   188/name    188/texture    188/normal_map    188/tex_offset    188/material    188/modulate    188/region    188/tile_mode    188/occluder_offset    188/occluder    188/navigation_offset    188/navigation    188/shape_offset    188/shape_transform 
   188/shape    188/shape_one_way    188/shape_one_way_margin    188/shapes    188/z_index 	   189/name    189/texture    189/normal_map    189/tex_offset    189/material    189/modulate    189/region    189/tile_mode    189/occluder_offset    189/occluder    189/navigation_offset    189/navigation    189/shape_offset    189/shape_transform 
   189/shape    189/shape_one_way    189/shape_one_way_margin    189/shapes    189/z_index 	   190/name    190/texture    190/normal_map    190/tex_offset    190/material    190/modulate    190/region    190/tile_mode    190/occluder_offset    190/occluder    190/navigation_offset    190/navigation    190/shape_offset    190/shape_transform 
   190/shape    190/shape_one_way    190/shape_one_way_margin    190/shapes    190/z_index 	   191/name    191/texture    191/normal_map    191/tex_offset    191/material    191/modulate    191/region    191/tile_mode    191/occluder_offset    191/occluder    191/navigation_offset    191/navigation    191/shape_offset    191/shape_transform 
   191/shape    191/shape_one_way    191/shape_one_way_margin    191/shapes    191/z_index 	   192/name    192/texture    192/normal_map    192/tex_offset    192/material    192/modulate    192/region    192/tile_mode    192/occluder_offset    192/occluder    192/navigation_offset    192/navigation    192/shape_offset    192/shape_transform 
   192/shape    192/shape_one_way    192/shape_one_way_margin    192/shapes    192/z_index 	   193/name    193/texture    193/normal_map    193/tex_offset    193/material    193/modulate    193/region    193/tile_mode    193/occluder_offset    193/occluder    193/navigation_offset    193/navigation    193/shape_offset    193/shape_transform 
   193/shape    193/shape_one_way    193/shape_one_way_margin    193/shapes    193/z_index 	   194/name    194/texture    194/normal_map    194/tex_offset    194/material    194/modulate    194/region    194/tile_mode    194/occluder_offset    194/occluder    194/navigation_offset    194/navigation    194/shape_offset    194/shape_transform 
   194/shape    194/shape_one_way    194/shape_one_way_margin    194/shapes    194/z_index 	   195/name    195/texture    195/normal_map    195/tex_offset    195/material    195/modulate    195/region    195/tile_mode    195/occluder_offset    195/occluder    195/navigation_offset    195/navigation    195/shape_offset    195/shape_transform 
   195/shape    195/shape_one_way    195/shape_one_way_margin    195/shapes    195/z_index 	   196/name    196/texture    196/normal_map    196/tex_offset    196/material    196/modulate    196/region    196/tile_mode    196/occluder_offset    196/occluder    196/navigation_offset    196/navigation    196/shape_offset    196/shape_transform 
   196/shape    196/shape_one_way    196/shape_one_way_margin    196/shapes    196/z_index 	   197/name    197/texture    197/normal_map    197/tex_offset    197/material    197/modulate    197/region    197/tile_mode    197/occluder_offset    197/occluder    197/navigation_offset    197/navigation    197/shape_offset    197/shape_transform 
   197/shape    197/shape_one_way    197/shape_one_way_margin    197/shapes    197/z_index 	   198/name    198/texture    198/normal_map    198/tex_offset    198/material    198/modulate    198/region    198/tile_mode    198/occluder_offset    198/occluder    198/navigation_offset    198/navigation    198/shape_offset    198/shape_transform 
   198/shape    198/shape_one_way    198/shape_one_way_margin    198/shapes    198/z_index 	   199/name    199/texture    199/normal_map    199/tex_offset    199/material    199/modulate    199/region    199/tile_mode    199/occluder_offset    199/occluder    199/navigation_offset    199/navigation    199/shape_offset    199/shape_transform 
   199/shape    199/shape_one_way    199/shape_one_way_margin    199/shapes    199/z_index 	   200/name    200/texture    200/normal_map    200/tex_offset    200/material    200/modulate    200/region    200/tile_mode    200/occluder_offset    200/occluder    200/navigation_offset    200/navigation    200/shape_offset    200/shape_transform 
   200/shape    200/shape_one_way    200/shape_one_way_margin    200/shapes    200/z_index 	   201/name    201/texture    201/normal_map    201/tex_offset    201/material    201/modulate    201/region    201/tile_mode    201/occluder_offset    201/occluder    201/navigation_offset    201/navigation    201/shape_offset    201/shape_transform 
   201/shape    201/shape_one_way    201/shape_one_way_margin    201/shapes    201/z_index 	   202/name    202/texture    202/normal_map    202/tex_offset    202/material    202/modulate    202/region    202/tile_mode    202/occluder_offset    202/occluder    202/navigation_offset    202/navigation    202/shape_offset    202/shape_transform 
   202/shape    202/shape_one_way    202/shape_one_way_margin    202/shapes    202/z_index 	   203/name    203/texture    203/normal_map    203/tex_offset    203/material    203/modulate    203/region    203/tile_mode    203/occluder_offset    203/occluder    203/navigation_offset    203/navigation    203/shape_offset    203/shape_transform 
   203/shape    203/shape_one_way    203/shape_one_way_margin    203/shapes    203/z_index 	   204/name    204/texture    204/normal_map    204/tex_offset    204/material    204/modulate    204/region    204/tile_mode    204/occluder_offset    204/occluder    204/navigation_offset    204/navigation    204/shape_offset    204/shape_transform 
   204/shape    204/shape_one_way    204/shape_one_way_margin    204/shapes    204/z_index 	   205/name    205/texture    205/normal_map    205/tex_offset    205/material    205/modulate    205/region    205/tile_mode    205/occluder_offset    205/occluder    205/navigation_offset    205/navigation    205/shape_offset    205/shape_transform 
   205/shape    205/shape_one_way    205/shape_one_way_margin    205/shapes    205/z_index 	   206/name    206/texture    206/normal_map    206/tex_offset    206/material    206/modulate    206/region    206/tile_mode    206/occluder_offset    206/occluder    206/navigation_offset    206/navigation    206/shape_offset    206/shape_transform 
   206/shape    206/shape_one_way    206/shape_one_way_margin    206/shapes    206/z_index 	   207/name    207/texture    207/normal_map    207/tex_offset    207/material    207/modulate    207/region    207/tile_mode    207/occluder_offset    207/occluder    207/navigation_offset    207/navigation    207/shape_offset    207/shape_transform 
   207/shape    207/shape_one_way    207/shape_one_way_margin    207/shapes    207/z_index 	   208/name    208/texture    208/normal_map    208/tex_offset    208/material    208/modulate    208/region    208/tile_mode    208/occluder_offset    208/occluder    208/navigation_offset    208/navigation    208/shape_offset    208/shape_transform 
   208/shape    208/shape_one_way    208/shape_one_way_margin    208/shapes    208/z_index 	   209/name    209/texture    209/normal_map    209/tex_offset    209/material    209/modulate    209/region    209/tile_mode    209/occluder_offset    209/occluder    209/navigation_offset    209/navigation    209/shape_offset    209/shape_transform 
   209/shape    209/shape_one_way    209/shape_one_way_margin    209/shapes    209/z_index 	   210/name    210/texture    210/normal_map    210/tex_offset    210/material    210/modulate    210/region    210/tile_mode    210/occluder_offset    210/occluder    210/navigation_offset    210/navigation    210/shape_offset    210/shape_transform 
   210/shape    210/shape_one_way    210/shape_one_way_margin    210/shapes    210/z_index 	   211/name    211/texture    211/normal_map    211/tex_offset    211/material    211/modulate    211/region    211/tile_mode    211/occluder_offset    211/occluder    211/navigation_offset    211/navigation    211/shape_offset    211/shape_transform 
   211/shape    211/shape_one_way    211/shape_one_way_margin    211/shapes    211/z_index 	   212/name    212/texture    212/normal_map    212/tex_offset    212/material    212/modulate    212/region    212/tile_mode    212/occluder_offset    212/occluder    212/navigation_offset    212/navigation    212/shape_offset    212/shape_transform 
   212/shape    212/shape_one_way    212/shape_one_way_margin    212/shapes    212/z_index 	   213/name    213/texture    213/normal_map    213/tex_offset    213/material    213/modulate    213/region    213/tile_mode    213/occluder_offset    213/occluder    213/navigation_offset    213/navigation    213/shape_offset    213/shape_transform 
   213/shape    213/shape_one_way    213/shape_one_way_margin    213/shapes    213/z_index 	   214/name    214/texture    214/normal_map    214/tex_offset    214/material    214/modulate    214/region    214/tile_mode    214/occluder_offset    214/occluder    214/navigation_offset    214/navigation    214/shape_offset    214/shape_transform 
   214/shape    214/shape_one_way    214/shape_one_way_margin    214/shapes    214/z_index 	   215/name    215/texture    215/normal_map    215/tex_offset    215/material    215/modulate    215/region    215/tile_mode    215/occluder_offset    215/occluder    215/navigation_offset    215/navigation    215/shape_offset    215/shape_transform 
   215/shape    215/shape_one_way    215/shape_one_way_margin    215/shapes    215/z_index 	   216/name    216/texture    216/normal_map    216/tex_offset    216/material    216/modulate    216/region    216/tile_mode    216/occluder_offset    216/occluder    216/navigation_offset    216/navigation    216/shape_offset    216/shape_transform 
   216/shape    216/shape_one_way    216/shape_one_way_margin    216/shapes    216/z_index 	   217/name    217/texture    217/normal_map    217/tex_offset    217/material    217/modulate    217/region    217/tile_mode    217/occluder_offset    217/occluder    217/navigation_offset    217/navigation    217/shape_offset    217/shape_transform 
   217/shape    217/shape_one_way    217/shape_one_way_margin    217/shapes    217/z_index 	   218/name    218/texture    218/normal_map    218/tex_offset    218/material    218/modulate    218/region    218/tile_mode    218/occluder_offset    218/occluder    218/navigation_offset    218/navigation    218/shape_offset    218/shape_transform 
   218/shape    218/shape_one_way    218/shape_one_way_margin    218/shapes    218/z_index 	   219/name    219/texture    219/normal_map    219/tex_offset    219/material    219/modulate    219/region    219/tile_mode    219/occluder_offset    219/occluder    219/navigation_offset    219/navigation    219/shape_offset    219/shape_transform 
   219/shape    219/shape_one_way    219/shape_one_way_margin    219/shapes    219/z_index 	   220/name    220/texture    220/normal_map    220/tex_offset    220/material    220/modulate    220/region    220/tile_mode    220/occluder_offset    220/occluder    220/navigation_offset    220/navigation    220/shape_offset    220/shape_transform 
   220/shape    220/shape_one_way    220/shape_one_way_margin    220/shapes    220/z_index 	   221/name    221/texture    221/normal_map    221/tex_offset    221/material    221/modulate    221/region    221/tile_mode    221/occluder_offset    221/occluder    221/navigation_offset    221/navigation    221/shape_offset    221/shape_transform 
   221/shape    221/shape_one_way    221/shape_one_way_margin    221/shapes    221/z_index 	   222/name    222/texture    222/normal_map    222/tex_offset    222/material    222/modulate    222/region    222/tile_mode    222/occluder_offset    222/occluder    222/navigation_offset    222/navigation    222/shape_offset    222/shape_transform 
   222/shape    222/shape_one_way    222/shape_one_way_margin    222/shapes    222/z_index 	   223/name    223/texture    223/normal_map    223/tex_offset    223/material    223/modulate    223/region    223/tile_mode    223/occluder_offset    223/occluder    223/navigation_offset    223/navigation    223/shape_offset    223/shape_transform 
   223/shape    223/shape_one_way    223/shape_one_way_margin    223/shapes    223/z_index 	   224/name    224/texture    224/normal_map    224/tex_offset    224/material    224/modulate    224/region    224/tile_mode    224/occluder_offset    224/occluder    224/navigation_offset    224/navigation    224/shape_offset    224/shape_transform 
   224/shape    224/shape_one_way    224/shape_one_way_margin    224/shapes    224/z_index 	   225/name    225/texture    225/normal_map    225/tex_offset    225/material    225/modulate    225/region    225/tile_mode    225/occluder_offset    225/occluder    225/navigation_offset    225/navigation    225/shape_offset    225/shape_transform 
   225/shape    225/shape_one_way    225/shape_one_way_margin    225/shapes    225/z_index 	   226/name    226/texture    226/normal_map    226/tex_offset    226/material    226/modulate    226/region    226/tile_mode    226/occluder_offset    226/occluder    226/navigation_offset    226/navigation    226/shape_offset    226/shape_transform 
   226/shape    226/shape_one_way    226/shape_one_way_margin    226/shapes    226/z_index 	   227/name    227/texture    227/normal_map    227/tex_offset    227/material    227/modulate    227/region    227/tile_mode    227/occluder_offset    227/occluder    227/navigation_offset    227/navigation    227/shape_offset    227/shape_transform 
   227/shape    227/shape_one_way    227/shape_one_way_margin    227/shapes    227/z_index 	   228/name    228/texture    228/normal_map    228/tex_offset    228/material    228/modulate    228/region    228/tile_mode    228/occluder_offset    228/occluder    228/navigation_offset    228/navigation    228/shape_offset    228/shape_transform 
   228/shape    228/shape_one_way    228/shape_one_way_margin    228/shapes    228/z_index 	   229/name    229/texture    229/normal_map    229/tex_offset    229/material    229/modulate    229/region    229/tile_mode    229/occluder_offset    229/occluder    229/navigation_offset    229/navigation    229/shape_offset    229/shape_transform 
   229/shape    229/shape_one_way    229/shape_one_way_margin    229/shapes    229/z_index 	   230/name    230/texture    230/normal_map    230/tex_offset    230/material    230/modulate    230/region    230/tile_mode    230/occluder_offset    230/occluder    230/navigation_offset    230/navigation    230/shape_offset    230/shape_transform 
   230/shape    230/shape_one_way    230/shape_one_way_margin    230/shapes    230/z_index 	   231/name    231/texture    231/normal_map    231/tex_offset    231/material    231/modulate    231/region    231/tile_mode    231/occluder_offset    231/occluder    231/navigation_offset    231/navigation    231/shape_offset    231/shape_transform 
   231/shape    231/shape_one_way    231/shape_one_way_margin    231/shapes    231/z_index 	   232/name    232/texture    232/normal_map    232/tex_offset    232/material    232/modulate    232/region    232/tile_mode    232/occluder_offset    232/occluder    232/navigation_offset    232/navigation    232/shape_offset    232/shape_transform 
   232/shape    232/shape_one_way    232/shape_one_way_margin    232/shapes    232/z_index 	   233/name    233/texture    233/normal_map    233/tex_offset    233/material    233/modulate    233/region    233/tile_mode    233/occluder_offset    233/occluder    233/navigation_offset    233/navigation    233/shape_offset    233/shape_transform 
   233/shape    233/shape_one_way    233/shape_one_way_margin    233/shapes    233/z_index 	   234/name    234/texture    234/normal_map    234/tex_offset    234/material    234/modulate    234/region    234/tile_mode    234/occluder_offset    234/occluder    234/navigation_offset    234/navigation    234/shape_offset    234/shape_transform 
   234/shape    234/shape_one_way    234/shape_one_way_margin    234/shapes    234/z_index 	   235/name    235/texture    235/normal_map    235/tex_offset    235/material    235/modulate    235/region    235/tile_mode    235/occluder_offset    235/occluder    235/navigation_offset    235/navigation    235/shape_offset    235/shape_transform 
   235/shape    235/shape_one_way    235/shape_one_way_margin    235/shapes    235/z_index 	   236/name    236/texture    236/normal_map    236/tex_offset    236/material    236/modulate    236/region    236/tile_mode    236/occluder_offset    236/occluder    236/navigation_offset    236/navigation    236/shape_offset    236/shape_transform 
   236/shape    236/shape_one_way    236/shape_one_way_margin    236/shapes    236/z_index 	   237/name    237/texture    237/normal_map    237/tex_offset    237/material    237/modulate    237/region    237/tile_mode    237/occluder_offset    237/occluder    237/navigation_offset    237/navigation    237/shape_offset    237/shape_transform 
   237/shape    237/shape_one_way    237/shape_one_way_margin    237/shapes    237/z_index 	   238/name    238/texture    238/normal_map    238/tex_offset    238/material    238/modulate    238/region    238/tile_mode    238/occluder_offset    238/occluder    238/navigation_offset    238/navigation    238/shape_offset    238/shape_transform 
   238/shape    238/shape_one_way    238/shape_one_way_margin    238/shapes    238/z_index 	   239/name    239/texture    239/normal_map    239/tex_offset    239/material    239/modulate    239/region    239/tile_mode    239/occluder_offset    239/occluder    239/navigation_offset    239/navigation    239/shape_offset    239/shape_transform 
   239/shape    239/shape_one_way    239/shape_one_way_margin    239/shapes    239/z_index 	   240/name    240/texture    240/normal_map    240/tex_offset    240/material    240/modulate    240/region    240/tile_mode    240/occluder_offset    240/occluder    240/navigation_offset    240/navigation    240/shape_offset    240/shape_transform 
   240/shape    240/shape_one_way    240/shape_one_way_margin    240/shapes    240/z_index 	   241/name    241/texture    241/normal_map    241/tex_offset    241/material    241/modulate    241/region    241/tile_mode    241/occluder_offset    241/occluder    241/navigation_offset    241/navigation    241/shape_offset    241/shape_transform 
   241/shape    241/shape_one_way    241/shape_one_way_margin    241/shapes    241/z_index 	   242/name    242/texture    242/normal_map    242/tex_offset    242/material    242/modulate    242/region    242/tile_mode    242/occluder_offset    242/occluder    242/navigation_offset    242/navigation    242/shape_offset    242/shape_transform 
   242/shape    242/shape_one_way    242/shape_one_way_margin    242/shapes    242/z_index 	   243/name    243/texture    243/normal_map    243/tex_offset    243/material    243/modulate    243/region    243/tile_mode    243/occluder_offset    243/occluder    243/navigation_offset    243/navigation    243/shape_offset    243/shape_transform 
   243/shape    243/shape_one_way    243/shape_one_way_margin    243/shapes    243/z_index 	   244/name    244/texture    244/normal_map    244/tex_offset    244/material    244/modulate    244/region    244/tile_mode    244/occluder_offset    244/occluder    244/navigation_offset    244/navigation    244/shape_offset    244/shape_transform 
   244/shape    244/shape_one_way    244/shape_one_way_margin    244/shapes    244/z_index 	   245/name    245/texture    245/normal_map    245/tex_offset    245/material    245/modulate    245/region    245/tile_mode    245/occluder_offset    245/occluder    245/navigation_offset    245/navigation    245/shape_offset    245/shape_transform 
   245/shape    245/shape_one_way    245/shape_one_way_margin    245/shapes    245/z_index 	   246/name    246/texture    246/normal_map    246/tex_offset    246/material    246/modulate    246/region    246/tile_mode    246/occluder_offset    246/occluder    246/navigation_offset    246/navigation    246/shape_offset    246/shape_transform 
   246/shape    246/shape_one_way    246/shape_one_way_margin    246/shapes    246/z_index 	   247/name    247/texture    247/normal_map    247/tex_offset    247/material    247/modulate    247/region    247/tile_mode    247/occluder_offset    247/occluder    247/navigation_offset    247/navigation    247/shape_offset    247/shape_transform 
   247/shape    247/shape_one_way    247/shape_one_way_margin    247/shapes    247/z_index 	   248/name    248/texture    248/normal_map    248/tex_offset    248/material    248/modulate    248/region    248/tile_mode    248/occluder_offset    248/occluder    248/navigation_offset    248/navigation    248/shape_offset    248/shape_transform 
   248/shape    248/shape_one_way    248/shape_one_way_margin    248/shapes    248/z_index 	   249/name    249/texture    249/normal_map    249/tex_offset    249/material    249/modulate    249/region    249/tile_mode    249/occluder_offset    249/occluder    249/navigation_offset    249/navigation    249/shape_offset    249/shape_transform 
   249/shape    249/shape_one_way    249/shape_one_way_margin    249/shapes    249/z_index 	   250/name    250/texture    250/normal_map    250/tex_offset    250/material    250/modulate    250/region    250/tile_mode    250/occluder_offset    250/occluder    250/navigation_offset    250/navigation    250/shape_offset    250/shape_transform 
   250/shape    250/shape_one_way    250/shape_one_way_margin    250/shapes    250/z_index 	   251/name    251/texture    251/normal_map    251/tex_offset    251/material    251/modulate    251/region    251/tile_mode    251/occluder_offset    251/occluder    251/navigation_offset    251/navigation    251/shape_offset    251/shape_transform 
   251/shape    251/shape_one_way    251/shape_one_way_margin    251/shapes    251/z_index 	   252/name    252/texture    252/normal_map    252/tex_offset    252/material    252/modulate    252/region    252/tile_mode    252/occluder_offset    252/occluder    252/navigation_offset    252/navigation    252/shape_offset    252/shape_transform 
   252/shape    252/shape_one_way    252/shape_one_way_margin    252/shapes    252/z_index 	   253/name    253/texture    253/normal_map    253/tex_offset    253/material    253/modulate    253/region    253/tile_mode    253/occluder_offset    253/occluder    253/navigation_offset    253/navigation    253/shape_offset    253/shape_transform 
   253/shape    253/shape_one_way    253/shape_one_way_margin    253/shapes    253/z_index 	   254/name    254/texture    254/normal_map    254/tex_offset    254/material    254/modulate    254/region    254/tile_mode    254/occluder_offset    254/occluder    254/navigation_offset    254/navigation    254/shape_offset    254/shape_transform 
   254/shape    254/shape_one_way    254/shape_one_way_margin    254/shapes    254/z_index 	   255/name    255/texture    255/normal_map    255/tex_offset    255/material    255/modulate    255/region    255/tile_mode    255/occluder_offset    255/occluder    255/navigation_offset    255/navigation    255/shape_offset    255/shape_transform 
   255/shape    255/shape_one_way    255/shape_one_way_margin    255/shapes    255/z_index 	   256/name    256/texture    256/normal_map    256/tex_offset    256/material    256/modulate    256/region    256/tile_mode    256/occluder_offset    256/occluder    256/navigation_offset    256/navigation    256/shape_offset    256/shape_transform 
   256/shape    256/shape_one_way    256/shape_one_way_margin    256/shapes    256/z_index 	   257/name    257/texture    257/normal_map    257/tex_offset    257/material    257/modulate    257/region    257/tile_mode    257/occluder_offset    257/occluder    257/navigation_offset    257/navigation    257/shape_offset    257/shape_transform 
   257/shape    257/shape_one_way    257/shape_one_way_margin    257/shapes    257/z_index 	   258/name    258/texture    258/normal_map    258/tex_offset    258/material    258/modulate    258/region    258/tile_mode    258/occluder_offset    258/occluder    258/navigation_offset    258/navigation    258/shape_offset    258/shape_transform 
   258/shape    258/shape_one_way    258/shape_one_way_margin    258/shapes    258/z_index 	   259/name    259/texture    259/normal_map    259/tex_offset    259/material    259/modulate    259/region    259/tile_mode    259/occluder_offset    259/occluder    259/navigation_offset    259/navigation    259/shape_offset    259/shape_transform 
   259/shape    259/shape_one_way    259/shape_one_way_margin    259/shapes    259/z_index 	   260/name    260/texture    260/normal_map    260/tex_offset    260/material    260/modulate    260/region    260/tile_mode    260/occluder_offset    260/occluder    260/navigation_offset    260/navigation    260/shape_offset    260/shape_transform 
   260/shape    260/shape_one_way    260/shape_one_way_margin    260/shapes    260/z_index 	   261/name    261/texture    261/normal_map    261/tex_offset    261/material    261/modulate    261/region    261/tile_mode    261/occluder_offset    261/occluder    261/navigation_offset    261/navigation    261/shape_offset    261/shape_transform 
   261/shape    261/shape_one_way    261/shape_one_way_margin    261/shapes    261/z_index 	   262/name    262/texture    262/normal_map    262/tex_offset    262/material    262/modulate    262/region    262/tile_mode    262/occluder_offset    262/occluder    262/navigation_offset    262/navigation    262/shape_offset    262/shape_transform 
   262/shape    262/shape_one_way    262/shape_one_way_margin    262/shapes    262/z_index 	   263/name    263/texture    263/normal_map    263/tex_offset    263/material    263/modulate    263/region    263/tile_mode    263/occluder_offset    263/occluder    263/navigation_offset    263/navigation    263/shape_offset    263/shape_transform 
   263/shape    263/shape_one_way    263/shape_one_way_margin    263/shapes    263/z_index 	   264/name    264/texture    264/normal_map    264/tex_offset    264/material    264/modulate    264/region    264/tile_mode    264/occluder_offset    264/occluder    264/navigation_offset    264/navigation    264/shape_offset    264/shape_transform 
   264/shape    264/shape_one_way    264/shape_one_way_margin    264/shapes    264/z_index 	   265/name    265/texture    265/normal_map    265/tex_offset    265/material    265/modulate    265/region    265/tile_mode    265/occluder_offset    265/occluder    265/navigation_offset    265/navigation    265/shape_offset    265/shape_transform 
   265/shape    265/shape_one_way    265/shape_one_way_margin    265/shapes    265/z_index 	   266/name    266/texture    266/normal_map    266/tex_offset    266/material    266/modulate    266/region    266/tile_mode    266/occluder_offset    266/occluder    266/navigation_offset    266/navigation    266/shape_offset    266/shape_transform 
   266/shape    266/shape_one_way    266/shape_one_way_margin    266/shapes    266/z_index 	   267/name    267/texture    267/normal_map    267/tex_offset    267/material    267/modulate    267/region    267/tile_mode    267/occluder_offset    267/occluder    267/navigation_offset    267/navigation    267/shape_offset    267/shape_transform 
   267/shape    267/shape_one_way    267/shape_one_way_margin    267/shapes    267/z_index 	   268/name    268/texture    268/normal_map    268/tex_offset    268/material    268/modulate    268/region    268/tile_mode    268/occluder_offset    268/occluder    268/navigation_offset    268/navigation    268/shape_offset    268/shape_transform 
   268/shape    268/shape_one_way    268/shape_one_way_margin    268/shapes    268/z_index 	   269/name    269/texture    269/normal_map    269/tex_offset    269/material    269/modulate    269/region    269/tile_mode    269/occluder_offset    269/occluder    269/navigation_offset    269/navigation    269/shape_offset    269/shape_transform 
   269/shape    269/shape_one_way    269/shape_one_way_margin    269/shapes    269/z_index 	   270/name    270/texture    270/normal_map    270/tex_offset    270/material    270/modulate    270/region    270/tile_mode    270/occluder_offset    270/occluder    270/navigation_offset    270/navigation    270/shape_offset    270/shape_transform 
   270/shape    270/shape_one_way    270/shape_one_way_margin    270/shapes    270/z_index 	   271/name    271/texture    271/normal_map    271/tex_offset    271/material    271/modulate    271/region    271/tile_mode    271/occluder_offset    271/occluder    271/navigation_offset    271/navigation    271/shape_offset    271/shape_transform 
   271/shape    271/shape_one_way    271/shape_one_way_margin    271/shapes    271/z_index 	   272/name    272/texture    272/normal_map    272/tex_offset    272/material    272/modulate    272/region    272/tile_mode    272/occluder_offset    272/occluder    272/navigation_offset    272/navigation    272/shape_offset    272/shape_transform 
   272/shape    272/shape_one_way    272/shape_one_way_margin    272/shapes    272/z_index 	   273/name    273/texture    273/normal_map    273/tex_offset    273/material    273/modulate    273/region    273/tile_mode    273/occluder_offset    273/occluder    273/navigation_offset    273/navigation    273/shape_offset    273/shape_transform 
   273/shape    273/shape_one_way    273/shape_one_way_margin    273/shapes    273/z_index 	   274/name    274/texture    274/normal_map    274/tex_offset    274/material    274/modulate    274/region    274/tile_mode    274/occluder_offset    274/occluder    274/navigation_offset    274/navigation    274/shape_offset    274/shape_transform 
   274/shape    274/shape_one_way    274/shape_one_way_margin    274/shapes    274/z_index 	   275/name    275/texture    275/normal_map    275/tex_offset    275/material    275/modulate    275/region    275/tile_mode    275/occluder_offset    275/occluder    275/navigation_offset    275/navigation    275/shape_offset    275/shape_transform 
   275/shape    275/shape_one_way    275/shape_one_way_margin    275/shapes    275/z_index 	   276/name    276/texture    276/normal_map    276/tex_offset    276/material    276/modulate    276/region    276/tile_mode    276/occluder_offset    276/occluder    276/navigation_offset    276/navigation    276/shape_offset    276/shape_transform 
   276/shape    276/shape_one_way    276/shape_one_way_margin    276/shapes    276/z_index 	   277/name    277/texture    277/normal_map    277/tex_offset    277/material    277/modulate    277/region    277/tile_mode    277/occluder_offset    277/occluder    277/navigation_offset    277/navigation    277/shape_offset    277/shape_transform 
   277/shape    277/shape_one_way    277/shape_one_way_margin    277/shapes    277/z_index 	   278/name    278/texture    278/normal_map    278/tex_offset    278/material    278/modulate    278/region    278/tile_mode    278/occluder_offset    278/occluder    278/navigation_offset    278/navigation    278/shape_offset    278/shape_transform 
   278/shape    278/shape_one_way    278/shape_one_way_margin    278/shapes    278/z_index 	   279/name    279/texture    279/normal_map    279/tex_offset    279/material    279/modulate    279/region    279/tile_mode    279/occluder_offset    279/occluder    279/navigation_offset    279/navigation    279/shape_offset    279/shape_transform 
   279/shape    279/shape_one_way    279/shape_one_way_margin    279/shapes    279/z_index 	   280/name    280/texture    280/normal_map    280/tex_offset    280/material    280/modulate    280/region    280/tile_mode    280/occluder_offset    280/occluder    280/navigation_offset    280/navigation    280/shape_offset    280/shape_transform 
   280/shape    280/shape_one_way    280/shape_one_way_margin    280/shapes    280/z_index 	   281/name    281/texture    281/normal_map    281/tex_offset    281/material    281/modulate    281/region    281/tile_mode    281/occluder_offset    281/occluder    281/navigation_offset    281/navigation    281/shape_offset    281/shape_transform 
   281/shape    281/shape_one_way    281/shape_one_way_margin    281/shapes    281/z_index 	   282/name    282/texture    282/normal_map    282/tex_offset    282/material    282/modulate    282/region    282/tile_mode    282/occluder_offset    282/occluder    282/navigation_offset    282/navigation    282/shape_offset    282/shape_transform 
   282/shape    282/shape_one_way    282/shape_one_way_margin    282/shapes    282/z_index 	   283/name    283/texture    283/normal_map    283/tex_offset    283/material    283/modulate    283/region    283/tile_mode    283/occluder_offset    283/occluder    283/navigation_offset    283/navigation    283/shape_offset    283/shape_transform 
   283/shape    283/shape_one_way    283/shape_one_way_margin    283/shapes    283/z_index 	   284/name    284/texture    284/normal_map    284/tex_offset    284/material    284/modulate    284/region    284/tile_mode    284/occluder_offset    284/occluder    284/navigation_offset    284/navigation    284/shape_offset    284/shape_transform 
   284/shape    284/shape_one_way    284/shape_one_way_margin    284/shapes    284/z_index 	   285/name    285/texture    285/normal_map    285/tex_offset    285/material    285/modulate    285/region    285/tile_mode    285/occluder_offset    285/occluder    285/navigation_offset    285/navigation    285/shape_offset    285/shape_transform 
   285/shape    285/shape_one_way    285/shape_one_way_margin    285/shapes    285/z_index 	   286/name    286/texture    286/normal_map    286/tex_offset    286/material    286/modulate    286/region    286/tile_mode    286/occluder_offset    286/occluder    286/navigation_offset    286/navigation    286/shape_offset    286/shape_transform 
   286/shape    286/shape_one_way    286/shape_one_way_margin    286/shapes    286/z_index 	   287/name    287/texture    287/normal_map    287/tex_offset    287/material    287/modulate    287/region    287/tile_mode    287/occluder_offset    287/occluder    287/navigation_offset    287/navigation    287/shape_offset    287/shape_transform 
   287/shape    287/shape_one_way    287/shape_one_way_margin    287/shapes    287/z_index 	   288/name    288/texture    288/normal_map    288/tex_offset    288/material    288/modulate    288/region    288/tile_mode    288/occluder_offset    288/occluder    288/navigation_offset    288/navigation    288/shape_offset    288/shape_transform 
   288/shape    288/shape_one_way    288/shape_one_way_margin    288/shapes    288/z_index 	   289/name    289/texture    289/normal_map    289/tex_offset    289/material    289/modulate    289/region    289/tile_mode    289/occluder_offset    289/occluder    289/navigation_offset    289/navigation    289/shape_offset    289/shape_transform 
   289/shape    289/shape_one_way    289/shape_one_way_margin    289/shapes    289/z_index 	   290/name    290/texture    290/normal_map    290/tex_offset    290/material    290/modulate    290/region    290/tile_mode    290/occluder_offset    290/occluder    290/navigation_offset    290/navigation    290/shape_offset    290/shape_transform 
   290/shape    290/shape_one_way    290/shape_one_way_margin    290/shapes    290/z_index 	   291/name    291/texture    291/normal_map    291/tex_offset    291/material    291/modulate    291/region    291/tile_mode    291/occluder_offset    291/occluder    291/navigation_offset    291/navigation    291/shape_offset    291/shape_transform 
   291/shape    291/shape_one_way    291/shape_one_way_margin    291/shapes    291/z_index 	   292/name    292/texture    292/normal_map    292/tex_offset    292/material    292/modulate    292/region    292/tile_mode    292/occluder_offset    292/occluder    292/navigation_offset    292/navigation    292/shape_offset    292/shape_transform 
   292/shape    292/shape_one_way    292/shape_one_way_margin    292/shapes    292/z_index 	   293/name    293/texture    293/normal_map    293/tex_offset    293/material    293/modulate    293/region    293/tile_mode    293/occluder_offset    293/occluder    293/navigation_offset    293/navigation    293/shape_offset    293/shape_transform 
   293/shape    293/shape_one_way    293/shape_one_way_margin    293/shapes    293/z_index 	   294/name    294/texture    294/normal_map    294/tex_offset    294/material    294/modulate    294/region    294/tile_mode    294/occluder_offset    294/occluder    294/navigation_offset    294/navigation    294/shape_offset    294/shape_transform 
   294/shape    294/shape_one_way    294/shape_one_way_margin    294/shapes    294/z_index 	   295/name    295/texture    295/normal_map    295/tex_offset    295/material    295/modulate    295/region    295/tile_mode    295/occluder_offset    295/occluder    295/navigation_offset    295/navigation    295/shape_offset    295/shape_transform 
   295/shape    295/shape_one_way    295/shape_one_way_margin    295/shapes    295/z_index 	   296/name    296/texture    296/normal_map    296/tex_offset    296/material    296/modulate    296/region    296/tile_mode    296/occluder_offset    296/occluder    296/navigation_offset    296/navigation    296/shape_offset    296/shape_transform 
   296/shape    296/shape_one_way    296/shape_one_way_margin    296/shapes    296/z_index 	   297/name    297/texture    297/normal_map    297/tex_offset    297/material    297/modulate    297/region    297/tile_mode    297/occluder_offset    297/occluder    297/navigation_offset    297/navigation    297/shape_offset    297/shape_transform 
   297/shape    297/shape_one_way    297/shape_one_way_margin    297/shapes    297/z_index 	   298/name    298/texture    298/normal_map    298/tex_offset    298/material    298/modulate    298/region    298/tile_mode    298/occluder_offset    298/occluder    298/navigation_offset    298/navigation    298/shape_offset    298/shape_transform 
   298/shape    298/shape_one_way    298/shape_one_way_margin    298/shapes    298/z_index 	   299/name    299/texture    299/normal_map    299/tex_offset    299/material    299/modulate    299/region    299/tile_mode    299/occluder_offset    299/occluder    299/navigation_offset    299/navigation    299/shape_offset    299/shape_transform 
   299/shape    299/shape_one_way    299/shape_one_way_margin    299/shapes    299/z_index 	   300/name    300/texture    300/normal_map    300/tex_offset    300/material    300/modulate    300/region    300/tile_mode    300/occluder_offset    300/occluder    300/navigation_offset    300/navigation    300/shape_offset    300/shape_transform 
   300/shape    300/shape_one_way    300/shape_one_way_margin    300/shapes    300/z_index 	   301/name    301/texture    301/normal_map    301/tex_offset    301/material    301/modulate    301/region    301/tile_mode    301/occluder_offset    301/occluder    301/navigation_offset    301/navigation    301/shape_offset    301/shape_transform 
   301/shape    301/shape_one_way    301/shape_one_way_margin    301/shapes    301/z_index 	   302/name    302/texture    302/normal_map    302/tex_offset    302/material    302/modulate    302/region    302/tile_mode    302/occluder_offset    302/occluder    302/navigation_offset    302/navigation    302/shape_offset    302/shape_transform 
   302/shape    302/shape_one_way    302/shape_one_way_margin    302/shapes    302/z_index 	   303/name    303/texture    303/normal_map    303/tex_offset    303/material    303/modulate    303/region    303/tile_mode    303/occluder_offset    303/occluder    303/navigation_offset    303/navigation    303/shape_offset    303/shape_transform 
   303/shape    303/shape_one_way    303/shape_one_way_margin    303/shapes    303/z_index 	   304/name    304/texture    304/normal_map    304/tex_offset    304/material    304/modulate    304/region    304/tile_mode    304/occluder_offset    304/occluder    304/navigation_offset    304/navigation    304/shape_offset    304/shape_transform 
   304/shape    304/shape_one_way    304/shape_one_way_margin    304/shapes    304/z_index 	   305/name    305/texture    305/normal_map    305/tex_offset    305/material    305/modulate    305/region    305/tile_mode    305/occluder_offset    305/occluder    305/navigation_offset    305/navigation    305/shape_offset    305/shape_transform 
   305/shape    305/shape_one_way    305/shape_one_way_margin    305/shapes    305/z_index 	   306/name    306/texture    306/normal_map    306/tex_offset    306/material    306/modulate    306/region    306/tile_mode    306/occluder_offset    306/occluder    306/navigation_offset    306/navigation    306/shape_offset    306/shape_transform 
   306/shape    306/shape_one_way    306/shape_one_way_margin    306/shapes    306/z_index 	   307/name    307/texture    307/normal_map    307/tex_offset    307/material    307/modulate    307/region    307/tile_mode    307/occluder_offset    307/occluder    307/navigation_offset    307/navigation    307/shape_offset    307/shape_transform 
   307/shape    307/shape_one_way    307/shape_one_way_margin    307/shapes    307/z_index 	   308/name    308/texture    308/normal_map    308/tex_offset    308/material    308/modulate    308/region    308/tile_mode    308/occluder_offset    308/occluder    308/navigation_offset    308/navigation    308/shape_offset    308/shape_transform 
   308/shape    308/shape_one_way    308/shape_one_way_margin    308/shapes    308/z_index 	   309/name    309/texture    309/normal_map    309/tex_offset    309/material    309/modulate    309/region    309/tile_mode    309/occluder_offset    309/occluder    309/navigation_offset    309/navigation    309/shape_offset    309/shape_transform 
   309/shape    309/shape_one_way    309/shape_one_way_margin    309/shapes    309/z_index       Texture "   res://game/tiled/cave_tileset.png �   
   local://1 ��     
   local://2 �     
   local://3 H�     
   local://4 q�     
   local://5 ��     
   local://6 þ     
   local://7 �     
   local://8 �     
   local://9 >�        local://10 g�        local://11 ��        local://12 ��        local://13 �        local://14 �        local://15 4�        local://16 ]�        local://17 ��        local://18 ��        local://19 ��        local://20 �        local://21 *�        local://22 S�        local://23 |�        local://24 ��        local://25 ��        local://26 ��        local://27  �        local://28 I�        local://29 r�        local://30 ��        local://31 ��        local://32 ��        local://33 w�        local://34 ��        local://35 *�        local://36 S�        local://37 |�        local://38 ��        local://39 ��        local://40 ��        local://41  �        local://42 ��        local://43 ��        local://44 ]�        local://45 ��        local://46 ��        local://47 ��        local://48 �        local://49 *�        local://50 S�        local://51 |�        local://52 ��        local://53 ��        local://54 ��        local://55  �        local://56 I�        local://57 r�        local://58 ��        local://59 ��        local://60 ��        local://61 �        local://62 ?�        local://63 h�        local://64 ��        local://65 ��        local://66 ��        local://67 ,�        local://68 ��        local://69 ��        local://70 ��        local://71 !�        local://72 J�        local://73 ��        local://74 ��        local://75 %�        local://76 N�        local://77 w�        local://78 ��        local://79 ��        local://80 �        local://81 ;�        local://82 d�        local://83 ��        local://84 ��        local://85 ��        local://86 �        local://87 1�        local://88 Z�        local://89 ��        local://90 ��        local://91 ��        local://92 ��        local://93 '�        local://94 P�        local://95 y�        local://96 ��        local://97 ��        local://98 ��        local://99 �        local://100 F�        local://101 o�        local://102 ��        local://103 ��        local://104 ��        local://105 �        local://106 <�        local://107 e�        local://108 ��        local://109 ��        local://110 ��        local://111 	�        local://112 2�        local://113 [�        local://114 ��        local://115 ��        local://116 ��        local://117 ��        local://118 (�        local://119 Q�        local://120 z�        local://121 ��        local://122 ��        local://123 ��        local://124 �        local://125 G�        local://126 p�        local://127 ��        local://128 ��        local://129 ��        local://130 �        local://131 =�        local://132 f�        local://133 ��        local://134 ��        local://135 ��        local://136 
�        local://137 3�        local://138 \�        local://139 ��        local://140 ��        local://141 ��        local://142  �        local://143 )�        local://144 R�        local://145 {�        local://146 ��        local://147 ��        local://148 ��        local://149 �        local://150 H�        local://151 q�        local://152 ��        local://153 ��        local://154 ,�        local://155 U�        local://156 ~�        local://157 ��        local://158 ��        local://159 ��        local://160 "�        local://161 K�        local://162 t�        local://163 ��        local://164 7�        local://165 ��        local://166 ��        local://167 �        local://168 }�        local://169 ��        local://170 ��        local://171 ��        local://172 !�        local://173 J�        local://174 s�        RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConcavePolygonShape2D       %                    ��      ��  �A  ��  �A  ��r�A�� �r�A�� �? AÁ��? AÁ��� A�� A�           RectangleShape2D       
      A  �@   ConcavePolygonShape2D       %                �A      �A      �A  �A  �A  �A� AY�A� AY�A   AЛ�@   AЛ�@M2=Л�@M2=Л�@           RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   ConcavePolygonShape2D       %                    �A      �A  �A  �A  �A  �A  �A� A  �A� AЛ�@Л�@Л�@Л�@Л�@M2=Л�@M2=           RectangleShape2D       
      A  �@   ConcavePolygonShape2D       %                    �A      �A  ��  �A  ��  �A�M�   A�M�   AЛ��   AЛ��   A   �M2�   �M2�           RectangleShape2D       
      A  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %        ~�      ��  ��      ��           ConcavePolygonShape2D       %   
                 �A      �A  BA  A  BA  A  �@  ��  �@  ��                           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %        ��      ��  �      ��           ConvexPolygonShape2D       %            �A          �@   �  GA  �A   ConvexPolygonShape2D       %        ��      �� ���      ��           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConvexPolygonShape2D       %            �A          �@  �=  NA  �A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     @@  �@   RectangleShape2D       
     @@  �@   RectangleShape2D       
      ?   A   RectangleShape2D       
      ?   A   RectangleShape2D       
     @@  �@   RectangleShape2D       
     @@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �?  �@   RectangleShape2D       
     @@   @   RectangleShape2D       
     �?  �@   RectangleShape2D       
     @@   @   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �@  �@   RectangleShape2D       
     �@  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   ConvexPolygonShape2D       %        ��  �AD��.:�              �A   ConvexPolygonShape2D       %            �A        ]�@�.�=�EGA��~A   RectangleShape2D       
     �@   A   RectangleShape2D       
      A  �@   RectangleShape2D       
      A  �@   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   RectangleShape2D       
     �@   A   ConcavePolygonShape2D       %   
             ��      ��    ����*�������*���      ��      ��                           ConvexPolygonShape2D       %                    ��D�@��~�N�EA�.�=   ConcavePolygonShape2D       %   
                 ��      ��D��Y}�D��Y}�  ��      ��                               RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   ConcavePolygonShape2D       %   
           �EGA    �EGA    Tt�@*���Tt�@*���      ��      ��                           RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   RectangleShape2D       
      A   A   TileSet            cave_tileset                        	          
   
                             �?  �?  �?  �?                �A  �A             
                        
                        
      A   A        �?       �  �?   A   A                              �?                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                         
                             �?  �?  �?  �?         �A      �A  �A!          "   
           #          $   
           %          &   
      A   A'        �?       �  �?   A   A(            )          *        �?+                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           ,          -          .             /          0   
           1          2        �?  �?  �?  �?3         B      �A  �A4          5   
           6          7   
           8          9   
      A   A:        �?       �  �?   A   A;            <          =        �?>                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           ?          @          A             B          C   
           D          E        �?  �?  �?  �?F        @B      �A  �AG          H   
           I          J   
           K          L   
      A   AM        �?       �  �?   A   AN            O          P        �?Q                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           R          S          T             U          V   
           W          X        �?  �?  �?  �?Y        �B      �A  �AZ          [   
           \          ]   
           ^          _   
      A   A`        �?       �  �?   A   Aa            b          c        �?d                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           e          f          g             h          i   
           j          k        �?  �?  �?  �?l            �A  �A  �Am          n   
           o          p   
           q          r   
      A   As        �?       �  �?   A   At            u          v        �?w                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           x          y          z             {          |   
           }          ~        �?  �?  �?  �?        �A  �A  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�            �          �        �?�                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                       shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
           �          �        �?  �?  �?  �?�         B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�         	   �          �        �?�                     shape       	         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
           �          �        �?  �?  �?  �?�        @B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�         
   �          �        �?�                     shape       
         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
           �          �        �?  �?  �?  �?�        �B  �A  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�            �          �        �?�                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
           �          �        �?  �?  �?  �?�             B  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�            �          �        �?�                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
           �          �        �?  �?  �?  �?�        �A   B  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�            �          �        �?�                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �             �          �   
           �          �        �?  �?  �?  �?�         B   B  �A  �A�          �   
           �          �   
           �          �   
      A   A�        �?       �  �?   A   A�            �          �        �?�                     shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �          �          �                         
                           �?  �?  �?  �?       @B   B  �A  �A           
                      
           	         
  
      A   A       �?       �  �?   A   A                           �?                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?       �B   B  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A                     !       �?"                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           #         $         %            &         '  
           (         )       �?  �?  �?  �?*           @B  �A  �A+         ,  
           -         .  
           /         0  
      A   A1       �?       �  �?   A   A2           3         4       �?5                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           6         7         8            9         :  
           ;         <       �?  �?  �?  �?=       �A  @B  �A  �A>         ?  
           @         A  
           B         C  
      A   AD       �?       �  �?   A   AE           F         G       �?H                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           I         J         K            L         M  
           N         O       �?  �?  �?  �?P        B  @B  �A  �AQ         R  
           S         T  
           U         V  
      A   AW       �?       �  �?   A   AX           Y         Z       �?[                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           \         ]         ^            _         `  
           a         b       �?  �?  �?  �?c       @B  @B  �A  �Ad         e  
           f         g  
           h         i  
      A   Aj       �?       �  �?   A   Ak           l         m       �?n                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           o         p         q            r         s  
           t         u       �?  �?  �?  �?v       �B  @B  �A  �Aw         x  
           y         z  
           {         |  
      A   A}       �?       �  �?   A   A~                    �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�           �         �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�           �         �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�           �         �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�           �         �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�           �         �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�           �         �       �?�                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
                       
      A   A       �?       �  �?   A   A                           �?                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                             	            
           
                           �?  �?  �?  �?        B  �B  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A                           �?                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                            �?  �?  �?  �?!       @B  �B  �A  �A"         #  
           $         %  
           &         '  
      A   A(       �?       �  �?   A   A)           *         +       �?,                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           -         .         /            0         1  
           2         3       �?  �?  �?  �?4       �B  �B  �A  �A5         6  
           7         8  
           9         :  
      A   A;       �?       �  �?   A   A<           =         >       �??                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           @         A         B            C         D  
           E         F       �?  �?  �?  �?G           �B  �A  �AH         I  
           J         K  
           L         M  
         �AN       �?       �  �?      �AO            P         Q       �?R                    shape                 shape_transform      �?       �  �?      �A      one_way              one_way_margin      �?      autotile_coord 
           S         T         U            V         W  
           X         Y       �?  �?  �?  �?Z       �A  �B  �A  �A[         \  
           ]         ^  
           _         `  
      A  �@a       �?       �  �?   A  �@b        !   c         d       �?e                    shape       !         shape_transform      �?       �  �?   A  �@      one_way              one_way_margin      �?      autotile_coord 
           f         g         h            i         j  
           k         l       �?  �?  �?  �?m        B  �B  �A  �An         o  
           p         q  
           r         s  
           t       �?       �  �?        u        "   v         w       �?x                    shape       "         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           y         z         {            |         }  
           ~                �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A  @A�       �?       �  �?  @A  @A�        #   �         �       �?�                    shape       #         shape_transform      �?       �  �?  @A  @A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
     �@  @A�       �?       �  �?  �@  @A�        $   �         �       �?�                    shape       $         shape_transform      �?       �  �?  �@  @A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �B  �A  �A�         �  
           �         �  
           �         �  
     �@   A�       �?       �  �?  �@   A�        %   �         �       �?�                    shape       %         shape_transform      �?       �  �?  �@   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �B  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A   A�       �?       �  �?  @A   A�        &   �         �       �?�                    shape       &         shape_transform      �?       �  �?  @A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �B  �A  �A�         �  
           �         �  
           �         �  
     @A  �@�       �?       �  �?  @A  �@�        '   �         �       �?�                    shape       '         shape_transform      �?       �  �?  @A  �@      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �B  �A  �A�         �  
           �         �  
           �         �  
     �@  �@�       �?       �  �?  �@  �@�        (   �         �       �?�                    shape       (         shape_transform      �?       �  �?  �@  �@      one_way              one_way_margin      �?      autotile_coord 
           �         �                                 
                           �?  �?  �?  �?            C  �A  �A           
                    	  
           
           
                  �?       �  �?                )                   �?                    shape       )         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?       �A   C  �A  �A           
                      
                      
      A  @A       �?       �  �?   A  @A         *   !         "       �?#                    shape       *         shape_transform      �?       �  �?   A  @A      one_way              one_way_margin      �?      autotile_coord 
           $         %         &            '         (  
           )         *       �?  �?  �?  �?+        B   C  �A  �A,         -  
           .         /  
           0         1  
     �A    2       �?       �  �?  �A    3        +   4         5       �?6                    shape       +         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           7         8         9            :         ;  
           <         =       �?  �?  �?  �?>       @B   C  �A  �A?         @  
           A         B  
           C         D  
      A  �@E       �?       �  �?   A  �@F        ,   G         H       �?I                    shape       ,         shape_transform      �?       �  �?   A  �@      one_way              one_way_margin      �?      autotile_coord 
           J         K         L            M         N  
           O         P       �?  �?  �?  �?Q       �B   C  �A  �AR         S  
           T         U  
           V         W  
     @A   AX       �?       �  �?  @A   AY        -   Z         [       �?\                    shape       -         shape_transform      �?       �  �?  @A   A      one_way              one_way_margin      �?      autotile_coord 
           ]         ^         _            `         a  
           b         c       �?  �?  �?  �?d           C  �A  �Ae         f  
           g         h  
           i         j  
      A  @Ak       �?       �  �?   A  @Al        .   m         n       �?o                    shape       .         shape_transform      �?       �  �?   A  @A      one_way              one_way_margin      �?      autotile_coord 
           p         q         r            s         t  
           u         v       �?  �?  �?  �?w       �A  C  �A  �Ax         y  
           z         {  
           |         }  
      A  @A~       �?       �  �?   A  @A        /   �         �       �?�                    shape       /         shape_transform      �?       �  �?   A  @A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  C  �A  �A�         �  
           �         �  
           �         �  
     �@   A�       �?       �  �?  �@   A�        0   �         �       �?�                    shape       0         shape_transform      �?       �  �?  �@   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  C  �A  �A�         �  
           �         �  
           �         �  
     �@   A�       �?       �  �?  �@   A�        1   �         �       �?�                    shape       1         shape_transform      �?       �  �?  �@   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  C  �A  �A�         �  
           �         �  
           �         �  
     @A   A�       �?       �  �?  @A   A�        2   �         �       �?�                    shape       2         shape_transform      �?       �  �?  @A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�            C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A   C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B   C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B   C  �A  �A�         �  
           �            
                      
                  �?          �?                                                     	         
                       
                           �?  �?  �?  �?       �B   C  �A  �A           
                      
                      
                  �?          �?                                                                                     
                     !       �?  �?  �?  �?"           0C  �A  �A#         $  
           %         &  
           '         (  
           )       �?          �?        *         +         ,         -         .         /         0            1         2  
           3         4       �?  �?  �?  �?5       �A  0C  �A  �A6         7  
           8         9  
           :         ;  
           <       �?          �?        =         >         ?         @         A         B         C            D         E  
           F         G       �?  �?  �?  �?H        B  0C  �A  �AI         J  
           K         L  
           M         N  
           O       �?          �?        P         Q         R         S         T         U         V            W         X  
           Y         Z       �?  �?  �?  �?[       @B  0C  �A  �A\         ]  
           ^         _  
           `         a  
           b       �?          �?        c         d         e         f         g         h         i            j         k  
           l         m       �?  �?  �?  �?n       �B  0C  �A  �Ao         p  
           q         r  
           s         t  
           u       �?          �?        v         w         x         y         z         {         |            }         ~  
                    �       �?  �?  �?  �?�           @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  @C  �A  �A�         �  
           �         �  
           �         �  
      A  �@�       �?       �  �?   A  �@�        3   �         �       �?�                    shape       3         shape_transform      �?       �  �?   A  �@      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  @C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           PC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  PC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �                                          
                           �?  �?  �?  �?        B  PC  �A  �A           
           	         
  
                      
                  �?          �?                                                                                     
                           �?  �?  �?  �?       @B  PC  �A  �A           
                      
                      
                   �?          �?        !         "         #         $         %         &         '            (         )  
           *         +       �?  �?  �?  �?,       �B  PC  �A  �A-         .  
           /         0  
           1         2  
           3       �?          �?        4         5         6         7         8         9         :            ;         <  
           =         >       �?  �?  �?  �??           `C  �A  �A@         A  
           B         C  
           D         E  
           F       �?          �?        G         H         I         J         K         L         M            N         O  
           P         Q       �?  �?  �?  �?R       �A  `C  �A  �AS         T  
           U         V  
           W         X  
           Y       �?          �?        Z         [         \         ]         ^         _         `            a         b  
           c         d       �?  �?  �?  �?e        B  `C  �A  �Af         g  
           h         i  
           j         k  
           l       �?          �?        m         n         o         p         q         r         s            t         u  
           v         w       �?  �?  �?  �?x       @B  `C  �A  �Ay         z  
           {         |  
           }         ~  
                  �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  `C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  pC  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �C  �A  �A�         �  
                       
                      
                  �?          �?                                            	         
                                
                           �?  �?  �?  �?       �A  �C  �A  �A           
                      
                      
                  �?          �?                                                                                      
           !         "       �?  �?  �?  �?#        B  �C  �A  �A$         %  
           &         '  
           (         )  
           *       �?          �?        +         ,         -         .         /         0         1            2         3  
           4         5       �?  �?  �?  �?6       @B  �C  �A  �A7         8  
           9         :  
           ;         <  
           =       �?          �?        >         ?         @         A         B         C         D            E         F  
           G         H       �?  �?  �?  �?I       �B  �C  �A  �AJ         K  
           L         M  
           N         O  
           P       �?          �?        Q         R         S         T         U         V         W            X         Y  
           Z         [       �?  �?  �?  �?\           �C  �A  �A]         ^  
           _         `  
           a         b  
           c       �?          �?        d         e         f         g         h         i         j            k         l  
           m         n       �?  �?  �?  �?o       �A  �C  �A  �Ap         q  
           r         s  
           t         u  
           v       �?          �?        w         x         y         z         {         |         }            ~           
           �         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �                                                   
                           �?  �?  �?  �?       �B  �C  �A  �A         	  
           
           
                      
                  �?          �?                                                                                     
                           �?  �?  �?  �?           �C  �A  �A           
                      
                       
           !       �?          �?        "         #         $         %         &         '         (            )         *  
           +         ,       �?  �?  �?  �?-       �A  �C  �A  �A.         /  
           0         1  
           2         3  
           4       �?          �?        5         6         7         8         9         :         ;            <         =  
           >         ?       �?  �?  �?  �?@        B  �C  �A  �AA         B  
           C         D  
           E         F  
           G       �?          �?        H         I         J         K         L         M         N            O         P  
           Q         R       �?  �?  �?  �?S       @B  �C  �A  �AT         U  
           V         W  
           X         Y  
           Z       �?          �?        [         \         ]         ^         _         `         a            b         c  
           d         e       �?  �?  �?  �?f       �B  �C  �A  �Ag         h  
           i         j  
           k         l  
           m       �?          �?        n         o         p         q         r         s         t            u         v  
           w         x       �?  �?  �?  �?y           �C  �A  �Az         {  
           |         }  
           ~           
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �C  �A  �A�            
                      
                      
      A   A       �?       �  �?   A   A        4                   �?	                    shape       4         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           
                                         
                           �?  �?  �?  �?       @B  �C  �A  �A           
                      
                      
                  �?          �?                                                                                    !  
           "         #       �?  �?  �?  �?$       �B  �C  �A  �A%         &  
           '         (  
           )         *  
      A   A+       �?       �  �?   A   A,        5   -         .       �?/                    shape       5         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           0         1         2            3         4  
           5         6       �?  �?  �?  �?7           �C  �A  �A8         9  
           :         ;  
           <         =  
           >       �?          �?        ?         @         A         B         C         D         E            F         G  
           H         I       �?  �?  �?  �?J       �A  �C  �A  �AK         L  
           M         N  
           O         P  
      A   AQ       �?       �  �?   A   AR        6   S         T       �?U                    shape       6         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           V         W         X            Y         Z  
           [         \       �?  �?  �?  �?]        B  �C  �A  �A^         _  
           `         a  
           b         c  
           d       �?          �?        e         f         g         h         i         j         k            l         m  
           n         o       �?  �?  �?  �?p       @B  �C  �A  �Aq         r  
           s         t  
           u         v  
      A   Aw       �?       �  �?   A   Ax        7   y         z       �?{                    shape       7         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           |         }         ~                     �  
           �         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        8   �         �       �?�                    shape       8         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        9   �         �       �?�                    shape       9         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        :   �         �       �?�                    shape       :         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        ;   �         �       �?�                    shape       ;         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �          	         	         	         	            	         	  
           	         	       �?  �?  �?  �?	       �A  �C  �A  �A		         
	  
           	         	  
           	         	  
           	       �?          �?        	         	         	         	         	         	         	            	         	  
           	         	       �?  �?  �?  �?	        B  �C  �A  �A	         	  
           	         	  
            	         !	  
           "	       �?          �?        #	         $	         %	         &	         '	         (	         )	            *	         +	  
           ,	         -	       �?  �?  �?  �?.	       @B  �C  �A  �A/	         0	  
           1	         2	  
           3	         4	  
           5	       �?          �?        6	         7	         8	         9	         :	         ;	         <	            =	         >	  
           ?	         @	       �?  �?  �?  �?A	       �B  �C  �A  �AB	         C	  
           D	         E	  
           F	         G	  
      A   AH	       �?       �  �?   A   AI	        <   J	         K	       �?L	                    shape       <         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           M	         N	         O	            P	         Q	  
           R	         S	       �?  �?  �?  �?T	           �C  �A  �AU	         V	  
           W	         X	  
           Y	         Z	  
      A   A[	       �?       �  �?   A   A\	        =   ]	         ^	       �?_	                    shape       =         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           `	         a	         b	            c	         d	  
           e	         f	       �?  �?  �?  �?g	       �A  �C  �A  �Ah	         i	  
           j	         k	  
           l	         m	  
      A   An	       �?       �  �?   A   Ao	        >   p	         q	       �?r	                    shape       >         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           s	         t	         u	            v	         w	  
           x	         y	       �?  �?  �?  �?z	        B  �C  �A  �A{	         |	  
           }	         ~	  
           	         �	  
      A   A�	       �?       �  �?   A   A�	        ?   �	         �	       �?�	                    shape       ?         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	       @B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
      A   A�	       �?       �  �?   A   A�	        @   �	         �	       �?�	                    shape       @         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	       �B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
      A   A�	       �?       �  �?   A   A�	        A   �	         �	       �?�	                    shape       A         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	           �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
     �A  �A�	       �?       �  �?  �A  �A�	        B   �	         �	       �?�	                    shape       B         shape_transform      �?       �  �?  �A  �A      one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	       �A  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?       �  �?        �	        C   �	         �	       �?�	                    shape       C         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	        B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?          �?        �	         �	         �	         �	         �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	       @B  �C  �A  �A�	         �	  
           �	         �	  
           �	         �	  
           �	       �?          �?        �	         �	         �	         �	         �	         �	         �	            �	         �	  
           �	         �	       �?  �?  �?  �?�	       �B  �C  �A  �A 
         
  
           
         
  
           
         
  
      A   A
       �?       �  �?   A   A
        D   
         	
       �?

                    shape       D         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           
         
         
            
         
  
           
         
       �?  �?  �?  �?
           �C  �A  �A
         
  
           
         
  
           
         
  
      A   A
       �?       �  �?   A   A
        E   
         
       �?
                    shape       E         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           
         
          
            !
         "
  
           #
         $
       �?  �?  �?  �?%
       �A  �C  �A  �A&
         '
  
           (
         )
  
           *
         +
  
      A   A,
       �?       �  �?   A   A-
        F   .
         /
       �?0
                    shape       F         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           1
         2
         3
            4
         5
  
           6
         7
       �?  �?  �?  �?8
        B  �C  �A  �A9
         :
  
           ;
         <
  
           =
         >
  
           ?
       �?          �?        @
         A
         B
         C
         D
         E
         F
            G
         H
  
           I
         J
       �?  �?  �?  �?K
       @B  �C  �A  �AL
         M
  
           N
         O
  
           P
         Q
  
           R
       �?          �?        S
         T
         U
         V
         W
         X
         Y
            Z
         [
  
           \
         ]
       �?  �?  �?  �?^
       �B  �C  �A  �A_
         `
  
           a
         b
  
           c
         d
  
      A   Ae
       �?       �  �?   A   Af
        G   g
         h
       �?i
                    shape       G         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           j
         k
         l
            m
         n
  
           o
         p
       �?  �?  �?  �?q
           �C  �A  �Ar
         s
  
           t
         u
  
           v
         w
  
           x
       �?          �?        y
         z
         {
         |
         }
         ~
         
            �
         �
  
           �
         �
       �?  �?  �?  �?�
       �A  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
     �A  �A�
       �?       �  �?  �A  �A�
        H   �
         �
       �?�
                    shape       H         shape_transform      �?       �  �?  �A  �A      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
           �
         �
       �?  �?  �?  �?�
        B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?       �  �?        �
        I   �
         �
       �?�
                    shape       I         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
           �
         �
       �?  �?  �?  �?�
       @B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?          �?        �
         �
         �
         �
         �
         �
         �
            �
         �
  
           �
         �
       �?  �?  �?  �?�
       �B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
           �
       �?          �?        �
         �
         �
         �
         �
         �
         �
            �
         �
  
           �
         �
       �?  �?  �?  �?�
           �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
     �A  �A�
       �?       �  �?  �A  �A�
        J   �
         �
       �?�
                    shape       J         shape_transform      �?       �  �?  �A  �A      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
           �
         �
       �?  �?  �?  �?�
       �A  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
      A   A�
       �?       �  �?   A   A�
        K   �
         �
       �?�
                    shape       K         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �
         �
         �
            �
         �
  
           �
         �
       �?  �?  �?  �?�
        B  �C  �A  �A�
         �
  
           �
         �
  
           �
         �
  
      A   A�
       �?       �  �?   A   A�
        L   �
                 �?                    shape       L         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?	       @B  �C  �A  �A
           
                      
                      
                  �?       �  �?                M                   �?                    shape       M         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?       �B  �C  �A  �A           
                       
           !         "  
           #       �?          �?        $         %         &         '         (         )         *            +         ,  
           -         .       �?  �?  �?  �?/           �C  �A  �A0         1  
           2         3  
           4         5  
      A   A6       �?       �  �?   A   A7        N   8         9       �?:                    shape       N         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           ;         <         =            >         ?  
           @         A       �?  �?  �?  �?B       �A  �C  �A  �AC         D  
           E         F  
           G         H  
      A   AI       �?       �  �?   A   AJ        O   K         L       �?M                    shape       O         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           N         O         P            Q         R  
           S         T       �?  �?  �?  �?U        B  �C  �A  �AV         W  
           X         Y  
           Z         [  
      A   A\       �?       �  �?   A   A]        P   ^         _       �?`                    shape       P         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           a         b         c            d         e  
           f         g       �?  �?  �?  �?h       @B  �C  �A  �Ai         j  
           k         l  
           m         n  
      A   Ao       �?       �  �?   A   Ap        Q   q         r       �?s                    shape       Q         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           t         u         v            w         x  
           y         z       �?  �?  �?  �?{       �B  �C  �A  �A|         }  
           ~           
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  �C  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        R   �         �       �?�                    shape       R         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  �C  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        S   �         �       �?�                    shape       S         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  �C  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�            D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        T   �         �       �?�                    shape       T         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?        �A   D  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A        U   	         
       �?                    shape       U         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?        B   D  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A        V                   �?                    shape       V         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                              !            "         #  
           $         %       �?  �?  �?  �?&       @B   D  �A  �A'         (  
           )         *  
           +         ,  
      A   A-       �?       �  �?   A   A.        W   /         0       �?1                    shape       W         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           2         3         4            5         6  
           7         8       �?  �?  �?  �?9       �B   D  �A  �A:         ;  
           <         =  
           >         ?  
      A   A@       �?       �  �?   A   AA        X   B         C       �?D                    shape       X         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           E         F         G            H         I  
           J         K       �?  �?  �?  �?L           D  �A  �AM         N  
           O         P  
           Q         R  
      A   AS       �?       �  �?   A   AT        Y   U         V       �?W                    shape       Y         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           X         Y         Z            [         \  
           ]         ^       �?  �?  �?  �?_       �A  D  �A  �A`         a  
           b         c  
           d         e  
      A   Af       �?       �  �?   A   Ag        Z   h         i       �?j                    shape       Z         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           k         l         m            n         o  
           p         q       �?  �?  �?  �?r        B  D  �A  �As         t  
           u         v  
           w         x  
      A   Ay       �?       �  �?   A   Az        [   {         |       �?}                    shape       [         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           ~                  �            �         �  
           �         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        \   �         �       �?�                    shape       \         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        ]   �         �       �?�                    shape       ]         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        ^   �         �       �?�                    shape       ^         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        _   �         �       �?�                    shape       _         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        `   �         �       �?�                    shape       `         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        a   �         �       �?�                    shape       a         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �                                                                              
                    	       �?  �?  �?  �?
           D  �A  �A           
                      
                      
                  �?          �?                                                                                     
                           �?  �?  �?  �?       �A  D  �A  �A           
                     !  
           "         #  
           $       �?          �?        %         &         '         (         )         *         +            ,         -  
           .         /       �?  �?  �?  �?0        B  D  �A  �A1         2  
           3         4  
           5         6  
           7       �?          �?        8         9         :         ;         <         =         >            ?         @  
           A         B       �?  �?  �?  �?C       @B  D  �A  �AD         E  
           F         G  
           H         I  
           J       �?          �?        K         L         M         N         O         P         Q            R         S  
           T         U       �?  �?  �?  �?V       �B  D  �A  �AW         X  
           Y         Z  
           [         \  
           ]       �?          �?        ^         _         `         a         b         c         d            e         f  
           g         h       �?  �?  �?  �?i           D  �A  �Aj         k  
           l         m  
           n         o  
           p       �?          �?        q         r         s         t         u         v         w            x         y  
           z         {       �?  �?  �?  �?|       �A  D  �A  �A}         ~  
                    �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �                 �?  �?  �?  �?       @B  D  �A  �A           
                      
                      
                  �?          �?        	         
                                                                    
                           �?  �?  �?  �?       �B  D  �A  �A           
                      
                      
                  �?          �?                                                      !         "            #         $  
           %         &       �?  �?  �?  �?'           D  �A  �A(         )  
           *         +  
           ,         -  
           .       �?          �?        /         0         1         2         3         4         5            6         7  
           8         9       �?  �?  �?  �?:       �A  D  �A  �A;         <  
           =         >  
           ?         @  
           A       �?          �?        B         C         D         E         F         G         H            I         J  
           K         L       �?  �?  �?  �?M        B  D  �A  �AN         O  
           P         Q  
           R         S  
           T       �?          �?        U         V         W         X         Y         Z         [            \         ]  
           ^         _       �?  �?  �?  �?`       @B  D  �A  �Aa         b  
           c         d  
           e         f  
           g       �?          �?        h         i         j         k         l         m         n            o         p  
           q         r       �?  �?  �?  �?s       �B  D  �A  �At         u  
           v         w  
           x         y  
           z       �?          �?        {         |         }         ~                  �         �            �         �  
           �         �       �?  �?  �?  �?�           D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        b   �         �       �?�                    shape       b         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        c   �         �       �?�                    shape       c         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�            D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        d   �         �       �?�                    shape       d         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A   D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A         e                   �?                    shape       e         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
           	         
       �?  �?  �?  �?        B   D  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A        f                   �?                    shape       f         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?       @B   D  �A  �A            
           !         "  
           #         $  
           %       �?          �?        &         '         (         )         *         +         ,            -         .  
           /         0       �?  �?  �?  �?1       �B   D  �A  �A2         3  
           4         5  
           6         7  
           8       �?          �?        9         :         ;         <         =         >         ?            @         A  
           B         C       �?  �?  �?  �?D           $D  �A  �AE         F  
           G         H  
           I         J  
      A   AK       �?       �  �?   A   AL        g   M         N       �?O                    shape       g         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           P         Q         R            S         T  
           U         V       �?  �?  �?  �?W       �A  $D  �A  �AX         Y  
           Z         [  
           \         ]  
      A   A^       �?       �  �?   A   A_        h   `         a       �?b                    shape       h         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           c         d         e            f         g  
           h         i       �?  �?  �?  �?j        B  $D  �A  �Ak         l  
           m         n  
           o         p  
      A   Aq       �?       �  �?   A   Ar        i   s         t       �?u                    shape       i         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           v         w         x            y         z  
           {         |       �?  �?  �?  �?}       @B  $D  �A  �A~           
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        j   �         �       �?�                    shape       j         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  $D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        k   �         �       �?�                    shape       k         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           (D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        l   �         �       �?�                    shape       l         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  (D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        m   �         �       �?�                    shape       m         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        n   �         �       �?�                    shape       n         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        o   �         �       �?�                    shape       o         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  (D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        p   �         �       �?�                    shape       p         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
                            �?  �?  �?  �?           ,D  �A  �A           
                      
                      
      A   A	       �?       �  �?   A   A
        q                   �?                    shape       q         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?       �A  ,D  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A        r                   �?                     shape       r         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           !         "         #            $         %  
           &         '       �?  �?  �?  �?(        B  ,D  �A  �A)         *  
           +         ,  
           -         .  
      A   A/       �?       �  �?   A   A0        s   1         2       �?3                    shape       s         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           4         5         6            7         8  
           9         :       �?  �?  �?  �?;       @B  ,D  �A  �A<         =  
           >         ?  
           @         A  
      A   AB       �?       �  �?   A   AC        t   D         E       �?F                    shape       t         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           G         H         I            J         K  
           L         M       �?  �?  �?  �?N       �B  ,D  �A  �AO         P  
           Q         R  
           S         T  
           U       �?          �?        V         W         X         Y         Z         [         \            ]         ^  
           _         `       �?  �?  �?  �?a           0D  �A  �Ab         c  
           d         e  
           f         g  
           h       �?          �?        i         j         k         l         m         n         o            p         q  
           r         s       �?  �?  �?  �?t       �A  0D  �A  �Au         v  
           w         x  
           y         z  
           {       �?          �?        |         }         ~                  �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  0D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  4D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  4D  �A  �A�         �  
           �         �  
           �         �  
                   �?          �?                                                                                   	  
           
                �?  �?  �?  �?       �B  4D  �A  �A           
                      
                      
                  �?          �?                                                                                     
                           �?  �?  �?  �?           8D  �A  �A          !  
           "         #  
           $         %  
           &       �?          �?        '         (         )         *         +         ,         -            .         /  
           0         1       �?  �?  �?  �?2       �A  8D  �A  �A3         4  
           5         6  
           7         8  
           9       �?          �?        :         ;         <         =         >         ?         @            A         B  
           C         D       �?  �?  �?  �?E        B  8D  �A  �AF         G  
           H         I  
           J         K  
           L       �?          �?        M         N         O         P         Q         R         S            T         U  
           V         W       �?  �?  �?  �?X       @B  8D  �A  �AY         Z  
           [         \  
           ]         ^  
      A   A_       �?       �  �?   A   A`        u   a         b       �?c                    shape       u         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           d         e         f            g         h  
           i         j       �?  �?  �?  �?k       �B  8D  �A  �Al         m  
           n         o  
           p         q  
      A   Ar       �?       �  �?   A   As        v   t         u       �?v                    shape       v         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           w         x         y            z         {  
           |         }       �?  �?  �?  �?~           <D  �A  �A         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        w   �         �       �?�                    shape       w         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  <D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        x   �         �       �?�                    shape       x         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        y   �         �       �?�                    shape       y         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        z   �         �       �?�                    shape       z         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  <D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        {   �         �       �?�                    shape       {         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           @D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        |   �         �       �?�                    shape       |         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  @D  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        }   �         �       �?�                    shape       }         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �            
                           �?  �?  �?  �?        B  @D  �A  �A           
                      
                    	  
      A   A
       �?       �  �?   A   A        ~                   �?                    shape       ~         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?       @B  @D  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A                            �?!                    shape                shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           "         #         $            %         &  
           '         (       �?  �?  �?  �?)       �B  @D  �A  �A*         +  
           ,         -  
           .         /  
      A   A0       �?       �  �?   A   A1        �   2         3       �?4                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           5         6         7            8         9  
           :         ;       �?  �?  �?  �?<           DD  �A  �A=         >  
           ?         @  
           A         B  
      A   AC       �?       �  �?   A   AD        �   E         F       �?G                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           H         I         J            K         L  
           M         N       �?  �?  �?  �?O       �A  DD  �A  �AP         Q  
           R         S  
           T         U  
      A   AV       �?       �  �?   A   AW        �   X         Y       �?Z                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           [         \         ]            ^         _  
           `         a       �?  �?  �?  �?b        B  DD  �A  �Ac         d  
           e         f  
           g         h  
      A   Ai       �?       �  �?   A   Aj        �   k         l       �?m                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           n         o         p            q         r  
           s         t       �?  �?  �?  �?u       @B  DD  �A  �Av         w  
           x         y  
           z         {  
           |       �?          �?        }         ~                  �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  DD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           HD  �A  �A�         �  
           �         �  
           �         �  
     PA  8A�       �?       �  �?  PA  8A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  PA  8A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  HD  �A  �A�         �  
           �         �  
           �         �  
     @@  8A�       �?       �  �?  @@  8A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @@  8A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  HD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           LD  �A  �A�         �  
           �         �  
           �            
     xA  A       �?       �  �?  xA  A        �                   �?                    shape       �         shape_transform      �?       �  �?  xA  A      one_way              one_way_margin      �?      autotile_coord 
                                         	         
  
                           �?  �?  �?  �?       �A  LD  �A  �A           
                      
                      
                  �?          �?                                                                                     
                           �?  �?  �?  �?         B  LD  �A  �A!         "  
           #         $  
           %         &  
      ?   A'       �?       �  �?   ?   A(        �   )         *       �?+                    shape       �         shape_transform      �?       �  �?   ?   A      one_way              one_way_margin      �?      autotile_coord 
           ,         -         .            /         0  
           1         2       �?  �?  �?  �?3       @B  LD  �A  �A4         5  
           6         7  
           8         9  
           :       �?          �?        ;         <         =         >         ?         @         A            B         C  
           D         E       �?  �?  �?  �?F       �B  LD  �A  �AG         H  
           I         J  
           K         L  
           M       �?          �?        N         O         P         Q         R         S         T            U         V  
           W         X       �?  �?  �?  �?Y           PD  �A  �AZ         [  
           \         ]  
           ^         _  
     PA  �@`       �?       �  �?  PA  �@a        �   b         c       �?d                    shape       �         shape_transform      �?       �  �?  PA  �@      one_way              one_way_margin      �?      autotile_coord 
           e         f         g            h         i  
           j         k       �?  �?  �?  �?l       �A  PD  �A  �Am         n  
           o         p  
           q         r  
           s       �?          �?        t         u         v         w         x         y         z            {         |  
           }         ~       �?  �?  �?  �?        B  PD  �A  �A�         �  
           �         �  
           �         �  
     @@  �@�       �?       �  �?  @@  �@�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @@  �@      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  PD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  PD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           TD  �A  �A�         �  
           �         �  
           �         �  
     @A  A�       �?       �  �?  @A  A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  @A  A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  TD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  TD  �A  �A�         �  
           �         �  
           �         �  
     �@  A�       �?       �  �?  �@  A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �@  A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  TD  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �                        
                           �?  �?  �?  �?       �B  TD  �A  �A           
                      
           	         
  
      A   A       �?       �  �?   A   A        �                   �?                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?           XD  �A  �A           
                      
                      
     pA  �@       �?       �  �?  pA  �@        �             !       �?"                    shape       �         shape_transform      �?       �  �?  pA  �@      one_way              one_way_margin      �?      autotile_coord 
                       shape       �         shape_transform      �?       �  �?  PA  `A      one_way              one_way_margin      �?      autotile_coord 
           #         $         %            &         '  
           (         )       �?  �?  �?  �?*       �A  XD  �A  �A+         ,  
           -         .  
           /         0  
           1       �?          �?        2         3         4         5         6         7         8            9         :  
           ;         <       �?  �?  �?  �?=        B  XD  �A  �A>         ?  
           @         A  
           B         C  
     �?  �@D       �?       �  �?  �?  �@E        �   F         G       �?H                    shape       �         shape_transform      �?       �  �?  �?  �@      one_way              one_way_margin      �?      autotile_coord 
                       shape       �         shape_transform      �?       �  �?  @@  `A      one_way              one_way_margin      �?      autotile_coord 
           I         J         K            L         M  
           N         O       �?  �?  �?  �?P       @B  XD  �A  �AQ         R  
           S         T  
           U         V  
      A   AW       �?       �  �?   A   AX        �   Y         Z       �?[                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           \         ]         ^            _         `  
           a         b       �?  �?  �?  �?c       �B  XD  �A  �Ad         e  
           f         g  
           h         i  
      A   Aj       �?       �  �?   A   Ak        �   l         m       �?n                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           o         p         q            r         s  
           t         u       �?  �?  �?  �?v           \D  �A  �Aw         x  
           y         z  
           {         |  
     @A  �@}       �?       �  �?  @A  �@~        �            �       �?�                    shape       �         shape_transform      �?       �  �?  @A  �@      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  \D  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  \D  �A  �A�         �  
           �         �  
           �         �  
     �@  �@�       �?       �  �?  �@  �@�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �@  �@      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  \D  �A  �A�         �  
           �         �  
           �         �  
      A  0A�       �?       �  �?   A  0A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A  0A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  \D  �A  �A�         �  
           �         �  
           �         �  
      A  0A�       �?       �  �?   A  0A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A  0A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           `D  �A  �A�         �  
           �         �  
           �         �  
     �A    �       �?       �  �?  �A    �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A          one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  `D  �A  �A�         �  
           �         �  
           �         �  
           �       �?       �  �?        �        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?              one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  `D  �A  �A�         �  
           �         �  
                       
     �@   A       �?       �  �?  �@   A        �                   �?                    shape       �         shape_transform      �?       �  �?  �@   A      one_way              one_way_margin      �?      autotile_coord 
                             	            
           
                           �?  �?  �?  �?       @B  `D  �A  �A           
                      
                      
      A  �@       �?       �  �?   A  �@        �                   �?                    shape       �         shape_transform      �?       �  �?   A  �@      one_way              one_way_margin      �?      autotile_coord 
                                                    
                            �?  �?  �?  �?!       �B  `D  �A  �A"         #  
           $         %  
           &         '  
      A  �@(       �?       �  �?   A  �@)        �   *         +       �?,                    shape       �         shape_transform      �?       �  �?   A  �@      one_way              one_way_margin      �?      autotile_coord 
           -         .         /            0         1  
           2         3       �?  �?  �?  �?4           dD  �A  �A5         6  
           7         8  
           9         :  
      A   A;       �?       �  �?   A   A<        �   =         >       �??                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           @         A         B            C         D  
           E         F       �?  �?  �?  �?G       �A  dD  �A  �AH         I  
           J         K  
           L         M  
      A   AN       �?       �  �?   A   AO        �   P         Q       �?R                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           S         T         U            V         W  
           X         Y       �?  �?  �?  �?Z        B  dD  �A  �A[         \  
           ]         ^  
           _         `  
     �@   Aa       �?       �  �?  �@   Ab        �   c         d       �?e                    shape       �         shape_transform      �?       �  �?  �@   A      one_way              one_way_margin      �?      autotile_coord 
           f         g         h            i         j  
           k         l       �?  �?  �?  �?m       @B  dD  �A  �An         o  
           p         q  
           r         s  
     0A   At       �?       �  �?  0A   Au        �   v         w       �?x                    shape       �         shape_transform      �?       �  �?  0A   A      one_way              one_way_margin      �?      autotile_coord 
           y         z         {            |         }  
           ~                �?  �?  �?  �?�       �B  dD  �A  �A�         �  
           �         �  
           �         �  
     0A   A�       �?       �  �?  0A   A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  0A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�           hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  hD  �A  �A�         �  
           �         �  
           �         �  
     �A  �A�       �?       �  �?  �A  �A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A  �A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  hD  �A  �A�         �  
           �         �  
           �         �  
         �A�       �?       �  �?      �A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?      �A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  hD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           lD  �A  �A�         �  
           �         �  
           �         �  
     �A  �A�       �?       �  �?  �A  �A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?  �A  �A      one_way              one_way_margin      �?      autotile_coord 
           �         �                                 
                           �?  �?  �?  �?       �A  lD  �A  �A           
                    	  
           
           
      A   A       �?       �  �?   A   A        �                   �?                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
                                                    
                           �?  �?  �?  �?        B  lD  �A  �A           
                      
                      
      A   A       �?       �  �?   A   A         �   !         "       �?#                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           $         %         &            '         (  
           )         *       �?  �?  �?  �?+       @B  lD  �A  �A,         -  
           .         /  
           0         1  
         �A2       �?       �  �?      �A3        �   4         5       �?6                    shape       �         shape_transform      �?       �  �?      �A      one_way              one_way_margin      �?      autotile_coord 
           7         8         9            :         ;  
           <         =       �?  �?  �?  �?>       �B  lD  �A  �A?         @  
           A         B  
           C         D  
           E       �?          �?        F         G         H         I         J         K         L            M         N  
           O         P       �?  �?  �?  �?Q           pD  �A  �AR         S  
           T         U  
           V         W  
      A   AX       �?       �  �?   A   AY        �   Z         [       �?\                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           ]         ^         _            `         a  
           b         c       �?  �?  �?  �?d       �A  pD  �A  �Ae         f  
           g         h  
           i         j  
      A   Ak       �?       �  �?   A   Al        �   m         n       �?o                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           p         q         r            s         t  
           u         v       �?  �?  �?  �?w        B  pD  �A  �Ax         y  
           z         {  
           |         }  
      A   A~       �?       �  �?   A   A        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  pD  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  pD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�           tD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �A  tD  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�        B  tD  �A  �A�         �  
           �         �  
           �         �  
      A   A�       �?       �  �?   A   A�        �   �         �       �?�                    shape       �         shape_transform      �?       �  �?   A   A      one_way              one_way_margin      �?      autotile_coord 
           �         �         �            �         �  
           �         �       �?  �?  �?  �?�       @B  tD  �A  �A�         �  
           �         �  
           �         �  
           �       �?          �?        �         �         �         �         �         �         �            �         �  
           �         �       �?  �?  �?  �?�       �B  tD  �A  �A�         �  
           �            
                      
                  �?          �?                                                     RSRC          [remap]

importer="vnen.tiled_tileset_importer"
type="TileSet"
path="res://.import/cave_tileset.tsx-664912ec42fbeafac01494085168b693.res"

[deps]

source_file="res://game/tiled/cave_tileset.tsx"
dest_files=[ "res://.import/cave_tileset.tsx-664912ec42fbeafac01494085168b693.res" ]

[params]

custom_properties=true
tile_metadata=false
image_flags=7
embed_internal_images=false
save_tiled_properties=false
apply_offset=false
post_import_script=""
   GDSC      	      �      ���Ӷ���   �����϶�   ���������Ӷ�   ��������Ŷ��   �������¶���   �嶶   ���������������Ŷ���   ���Ҷ���   ��������Ӷ��   ����¶��   �����ƶ�   �������Ŷ���   ��������������Ŷ   �����������������ݶ�   ��¶   ������Ѷ   �����¶�   ���Ķ���   �������Ӷ���   �����������Ӷ���      res://engine/editor.tscn      =                      --        pck       map       /maps/        res://game/maps/                   	                              #   	   /   
   9      K      L      R      a      b      h      z      �      �      �      3YY0�  PQV�  �%  PQ�  �  ;�  �  ;�  NO�  )�  �  T�  PQV�  &�  T�  P�  Q�  V�  ;�  �  T�	  P�  Q�  �  L�  L�  MT�
  P�  QM�  L�  M�  �  &�  �  V�  ;�  �  T�  P�  T�  P�  QQ�  �  &�  �  V�  ;�  �  T�  P�  QT�  P�  QL�  M�  �  �>  P�  R�  Q�  �  ;�  �  PQT�  P�  QY`              [gd_scene load_steps=2 format=2]

[ext_resource path="res://main.gd" type="Script" id=1]

[node name="main" type="Node2D"]
script = ExtResource( 1 )
           [remap]

path="res://main.gdc"
 ECFG	      _global_script_classes�                    base      Node      class         Constructor       language      GDScript      path      res://engine/constructor.gd             base      Entity        class         Enemy         language      GDScript      path      res://engine/objects/enemy.gd               base      KinematicBody2D       class         Entity        language      GDScript      path      res://engine/objects/entity.gd              base      Node      class         Helper        language      GDScript      path      res://engine/helper.gd              base      Node      class         Parser        language      GDScript      path      res://engine/parser.gd              base      Entity        class         Player        language      GDScript      path      res://engine/objects/player.gd              base      Node      class         StateMachine      language      GDScript      path      res://engine/state_machine.gd               base      Node2D        class         Weapon        language      GDScript      path      res://engine/objects/weapon.gd     _global_script_class_icons�               Constructor              Enemy                Entity               Helper               Parser               Player               StateMachine             Weapon            application/config/name         TetraScript    application/run/main_scene         res://main.tscn    display/window/stretch/aspect         expand     editor_plugins/enabled             vnen.tiled_importer %   importer_defaults/vnen.tiled_importerL     	         add_background              collision_layer             custom_properties               embed_internal_images                image_flags             post_import_script        res://engine/tiled.gd         save_tiled_properties               tile_metadata               uv_clip          importer_defaults/texture\              compress/bptc_ldr                compress/hdr_mode                compress/lossy_quality    ffffff�?      compress/mode                compress/normal_map           	   detect_3d                flags/anisotropic                flags/filter             flags/mipmaps                flags/repeat          
   flags/srgb              process/HDR_as_SRGB              process/fix_alpha_border            process/invert_color             process/premult_alpha             
   size_limit               stream            	   svg/scale        �?!   tiled_importer/enable_json_format                      