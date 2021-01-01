set arg1=%1
set arg2=%2
"D:\Godot Engine\Godot_v3.2.3-stable_win64.exe" -s "engine/import.gd"
"D:\Godot Engine\Godot_v3.2.3-stable_win64.exe" --export-pack "PCK" %1
"D:\Godot Engine\Godot_v3.2.3-stable_win64.exe" --pck=%1 --map=%2