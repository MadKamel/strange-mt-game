-- node registration

core.register_node("strange_base:orang", {
	description = "Orang",
	tiles = {"node19.png"},
	groups = {breakable = 0},
	drop = {}
})

core.register_node("strange_base:orang_seed_pod", {
	description = "Orang Seed Pod",
	tiles = {"node32.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:orang_seed_pod_dead"})
	end,
	drop = {}
})

core.register_node("strange_base:orang_seed_pod_dead", {
	description = "Orang Seed Pod",
	tiles = {"node31.png"},
	groups = {breakable = 0},
	drop = {}
})

core.register_node("strange_base:hyte", {
	description = "Hyte",
	tiles = {"node14.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_1"})
	end,
	drop = {}
})

core.register_node("strange_base:hyte_1", {
	description = "Cracked Hyte",
	tiles = {"node15.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_2"})
	end,
	drop = {}
})

core.register_node("strange_base:hyte_2", {
	description = "Cracked Hyte",
	tiles = {"node16.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_3"})
	end,
	drop = {}
})

core.register_node("strange_base:hyte_3", {
	description = "Pulverized Hyte",
	tiles = {"node17.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_4"})
	end,
	drop = {}
})

core.register_node("strange_base:hyte_4", {
	description = "Pulverized Hyte",
	tiles = {"node18.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:orang"})
	end,
	drop = {}
})



-- register hand
core.register_item(":", {
	type = "none",
	wield_image = "node41.png",
	range = 9,
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			breakable = {times = {[1] = 1}}
		}
	}
})



core.register_alias("coe", "chest_of_everything:chest")
core.register_alias("mapgen_stone", "strange_base:orang")
core.register_alias("mapgen_water_source", "strange_base:hyte")
minetest.set_mapgen_setting("mg_name", "flat", true)



-- register decorations (don't work?)

minetest.register_decoration({
	decoration = "strange_base:hyte_pillar",
	deco_type = "schematic",
	schematic = minetest.get_modpath("strange_base").."/schems/hyte_pillar.mts",
	place_on = "strange_base:orang",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	fill_ratio = 0.05,
	sidelen = 9,
	max_y = 4,
	min_y = -4
})

minetest.register_decoration({
	decoration = "strange_base:seed_pod",
	deco_type = "simple",
	place_on = "strange_base:orang",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	max_y = 4,
	min_y = -4
})