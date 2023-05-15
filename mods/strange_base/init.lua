-- node registration

core.register_node("strange_base:orang", {
	description = "Orang",
	tiles = {"node19.png"}
})

core.register_node("strange_base:hyte", {
	description = "Hyte",
	tiles = {"node14.png"},
	groups = {oddly_breakable_by_hand = 3}
})

core.register_node("strange_base:hyte_1", {
	description = "Cracked Hyte",
	tiles = {"node15.png"},
	groups = {oddly_breakable_by_hand = 3}
})

core.register_node("strange_base:hyte_2", {
	description = "Cracked Hyte",
	tiles = {"node16.png"},
	groups = {oddly_breakable_by_hand = 3}
})

core.register_node("strange_base:hyte_3", {
	description = "Pulverized Hyte",
	tiles = {"node17.png"},
	groups = {oddly_breakable_by_hand = 3}
})

core.register_node("strange_base:hyte_4", {
	description = "Pulverized Hyte",
	tiles = {"node18.png"},
	groups = {oddly_breakable_by_hand = 3}
})



core.register_alias("mapgen_stone", "strange_base:hyte")
minetest.set_mapgen_setting("mg_name", "flat", true)