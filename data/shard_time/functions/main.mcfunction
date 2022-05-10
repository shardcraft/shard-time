# Debug
execute if score global clocks matches 0 run tell @a[team=debug] shard_time

execute if score global clocks matches 0 run execute if score doDaylightCycle clocks matches 0 run function shard_time:daylight_cycle/on
execute if score global clocks matches 0 run scoreboard players add doDaylightCycle clocks 1
execute if score global clocks matches 0 run execute if score doDaylightCycle clocks matches 2.. run function shard_time:daylight_cycle/off
