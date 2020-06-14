local Math = {}

function Math.round(number, places)
	local mult = 10^(places or 0)
	return math.floor(number * mult + 0.5) / mult
end

function Math.format(number)
	local formatted = number
	while true do  
		formatted, k = string.gsub(formatted, "^(-?%d+)(%d%d%d)", '%1,%2')
		if (k==0) then
			break
		end
	end
	return formatted
end

function Math.negative(number)
	return number < 0 and number or -number
end

function Math.positive(number)
	return math.abs(number)
end

return Math
