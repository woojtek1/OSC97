---- this header is (only) required to save the script
-- ardour { ["type"] = "Snippet", name = "" }
-- function factory () return function () -- -- end end
ardour {
	["type"]    = "EditorAction",
	name        = "Bypass Plugins",
	license     = "MIT",
	author      = "Ardour Team",
	description = [[Bypass Plugins on selected tracks]]
}

function factory () return function ()
	local sel = Editor:get_selection ()
	for r in sel.tracks:routelist ():iter () do
		local i = 0;
		while 1 do -- iterate over all plugins/processors
			local proc = r:nth_plugin (i)
			if proc:isnil () then
				break
			end
			proc:to_insert():deactivate()
			i = i + 1
		end
	end
end end
