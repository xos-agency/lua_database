local func = assert(loadfile("database.txt")) -- load the chunk as a function
local data = func()  -- call the function to get the data

function emit_data(data,sep) 
	-- print data
	for k,v in pairs(data) do
		if type(v) ~= "table" then
			print(sep or k, v)
		else
			io.write(k)
			emit_data(v,"\t")
		end
	end
end

emit_data(data)
