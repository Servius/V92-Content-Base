
include("v92/base.lua")

vnt.tag = vnt.tag or {
	
	tags = {},

	add = function(name)
		if not table.HasValue(vnt.tag.tags, name) then
			table.insert(vnt.tag.tags, name)
		end
	end,

	remove = function(name)
		for _, n in pairs(vnt.tag.tags) do
			if n == name then
				table.remove(vnt.tag.tags, n)
			end
		end
		local svTags = string.Explode(',', GetConVarString("sv_tags") or "")
		for _, tag in pairs(svTags) do
			if tag == name then
				table.remove(svTags, name)
			end
		end
		table.sort(svTags)
		RunConsoleCommands("sv_tags", table.concat(svTags, ','))
	end,

}
