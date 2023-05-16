-- item registration

core.register_item("strange_base:reinforcement", {
	type = "craft",
	description = "Reinforcement",
	wield_image = "node43.png",
	inventory_image = "node43.png",
	on_place = function(itemstack, placer, pointed_thing)
		if (placer == nil or pointed_thing == nil) then
			return itemstack; -- nothing consumed
		end
		if (pointed_thing.type ~= "node") then
			return nil;
		end
		local pos  = minetest.get_pointed_thing_position( pointed_thing, false );
		local node = minetest.get_node_or_nil(pos);
		minetest.swap_node(pos, {name = "strange_base:reinf_orang"})
	end
})



-- node registration

core.register_node("strange_base:orang", {
	description = "Orang",
	tiles = {"node19.png"},
	groups = {breakable = 0},
	drop = {}
})

core.register_node("strange_base:orang_grass_1", {
	description = "Orang Grass",
	tiles = {"node34.png"},
	groups = {breakable = 0},
	paramtype2 = "facedir",
	drop = {}
})

core.register_node("strange_base:orang_grass_2", {
	description = "Orang Grass",
	tiles = {"node33.png"},
	groups = {breakable = 0},
	paramtype2 = "facedir",
	drop = {}
})

core.register_node("strange_base:orang_grass_3", {
	description = "Orang Grass",
	tiles = {"node35.png"},
	groups = {breakable = 0},
	paramtype2 = "facedir",
	drop = {}
})

core.register_node("strange_base:orang_grass_4", {
	description = "Orang Grass",
	tiles = {"node36.png"},
	groups = {breakable = 0},
	paramtype2 = "facedir",
	drop = {}
})

core.register_node("strange_base:orang_seed_pod", {
	description = "Orang Seed Pod",
	tiles = {"node32.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:orang_seed_pod_dead"})
	end,
	node_dig_prediction = "strange_base:orang_seed_pod",
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
	node_dig_prediction = "strange_base:hyte_1",
	drop = {}
})

core.register_node("strange_base:hyte_1", {
	description = "Cracked Hyte",
	tiles = {"node15.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_2"})
	end,
	node_dig_prediction = "strange_base:hyte_2",
	drop = {}
})

core.register_node("strange_base:hyte_2", {
	description = "Cracked Hyte",
	tiles = {"node16.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_3"})
	end,
	node_dig_prediction = "strange_base:hyte_3",
	drop = {}
})

core.register_node("strange_base:hyte_3", {
	description = "Pulverized Hyte",
	tiles = {"node17.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:hyte_4"})
	end,
	node_dig_prediction = "strange_base:hyte_4",
	drop = {}
})

core.register_node("strange_base:hyte_4", {
	description = "Pulverized Hyte",
	tiles = {"node18.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:orang"})
	end,
	node_dig_prediction = "strange_base:orang",
	drop = {}
})

core.register_node("strange_base:reinf_orang", {
	description = "Reinforcement",
	tiles = {"node20.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:reinf_orang_1"})
	end,
	node_dig_prediction = "strange_base:reinf_orang_1",
	drop = {}
})

core.register_node("strange_base:reinf_orang_1", {
	description = "Cracked Reinforcement",
	tiles = {"node22.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:reinf_orang_2"})
	end,
	node_dig_prediction = "strange_base:reinf_orang_2",
	drop = {}
})

core.register_node("strange_base:reinf_orang_2", {
	description = "Cracked Reinforcement",
	tiles = {"node23.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:reinf_orang_3"})
	end,
	node_dig_prediction = "strange_base:reinf_orang_3",
	drop = {}
})

core.register_node("strange_base:reinf_orang_3", {
	description = "Pulverized Reinforcement",
	tiles = {"node24.png"},
	groups = {breakable = 1},
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		minetest.set_node(pos, {name = "strange_base:orang"})
	end,
	node_dig_prediction = "strange_base:orang",
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
	fill_ratio = 0.001,
	sidelen = 9,
	max_y = 4,
	min_y = -4
})

minetest.register_decoration({
	decoration = "strange_base:grassy_patch_1",
	deco_type = "schematic",
	schematic = minetest.get_modpath("strange_base").."/schems/grassy_patch_1.mts",
	place_on = "strange_base:orang",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	fill_ratio = 0.0001,
	sidelen = 11,
	max_y = 1,
	min_y = -1
})

minetest.register_decoration({
	decoration = "strange_base:grassy_patch_2",
	deco_type = "schematic",
	schematic = minetest.get_modpath("strange_base").."/schems/grassy_patch_2.mts",
	place_on = "strange_base:orang",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	fill_ratio = 0.0001,
	sidelen = 11,
	max_y = 1,
	min_y = -1
})



-- register ores
minetest.register_ore({
	ore_type = "blob",
	ore = "strange_base:orang_seed_pod",
	wherein = "strange_base:orang",
	max_y = 8,
	min_y = -8,
	clust_scarcity = 5*5*5,
	clust_size = 2,
})



minetest.register_on_joinplayer(function(player)
	player:set_sun({
		visible = true
	})

	player:set_moon({
		visible = false
	})

	player:set_stars({
		visible = false
	})

	player:override_day_night_ratio(1)
end)
