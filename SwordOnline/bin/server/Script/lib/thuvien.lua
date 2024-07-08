
function TaoBang(tTable, sTableName, sTab)
    sTab = sTab or "";
    sTmp = ""
    sTmp = sTmp..sTab..sTableName.."={"
    local tStart = 0
    for key, value in tTable do
        if tStart == 1 then
            sTmp = sTmp..",\r\n"
        else
			sTmp = sTmp.."\r\n"
            tStart = 1
        end
        local sKey = (type(key) == "string") and format("[%q]",key) or format("[%d]",key);
        if(type(value) == "table") then
            sTmp = sTmp..TaoBang(value, sKey, sTab.."\t");
        else
            local sValue = (type(value) == "string") and format("%q",value) or tostring(value);
            sTmp = sTmp..sTab.."\t"..sKey.." = "..sValue
        end
    end
    sTmp = sTmp.."\r\n"..sTab.."}"
    return sTmp
end

function LuuBang(file, string)
local f,e = openfile( file, "w+" )
if f then
    write(f,string)
    closefile(f)
    return 1
else
    local _,_,path = strfind(file, "(.+[/_\\]).+$") 
    if path ~= nil then execute("mkdir ".."\""..gsub(path, "/", "\\").."\"") end
    f,e = openfile( file, "w+" )
    if f then
        write(f,string) 
        closefile(f)
        return 2
    else
        return 0
        end
    end
end