local lyrics = [[Machuquei, machuquei
A xota da paty
Ela geme bem e me pede replay
Machuquei, machuquei
Ela ficou dе quatro
Empurrei no talo, sem querеr, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Ela, ela quer transar
Me chamou pra foder
Quer se aventurar
Quer uma noite de prazer
Quer fumar meu ice
Quer curtir, quer beber
E a sua BCT
Machuquei, machuquei
A xota da paty
Ela geme bem e me pede replay
Machuquei, machuquei
Ela ficou dе quatro
Empurrei no talo, sem querеr, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei
Machuquei, machuquei
Ela ficou de quatro
Empurrei no talo, sem querer, gozei]]

local function mysplit(inputstr, sep)
	if sep == nil then
		sep = "%s"
	end
	local t = {}
	for str in string.gmatch(inputstr, "([^" .. sep .. "]+)") do
		table.insert(t, str)
	end
	return t
end

lyrics = string.gsub(lyrics, "\n", " ")
local words = mysplit(lyrics, " ")

local M = {}

function M.get(n)
	local full_str = ""
	for i = 1, n do
		local index = ((i - 1) % #words) + 1
		full_str = full_str .. " " .. words[index]
	end

  return full_str
end

return M
