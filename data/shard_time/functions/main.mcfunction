# Debug
execute if score global clocks matches 0 run tell @a[team=debug] shard_time

# Run Time Logic
execute if score global clocks matches 0 run execute if score doDaylightCycle clocks matches 0 run function shard_time:daylight_cycle/off
execute if score global clocks matches 0 run scoreboard players add doDaylightCycle clocks 1
execute if score global clocks matches 0 run execute if score doDaylightCycle clocks matches 4.. run function shard_time:daylight_cycle/on

# Sleeping Override
execute if entity @a[nbt={SleepTimer: 100s}] run gamerule doDaylightCycle true
