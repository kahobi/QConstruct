--Inventory arragement for turtle

--			No Conduit		With Conduit					
--01 NetherQ				--01 NetherQ
--02 NetherQ				--02 NetherQ
--03 NetherQ				--03 NetherQ
--04 NetherQ				--04 NetherQ
--05 NetherQ				--05 SmokedQ
--06 NetherQ				--06 SmokedQ
--07 NetherQ				--07 SmokedQ
--08 NetherQ				--08 SmokedQ
--09 NetherQ				--09 NethFac
--10 SmokedQ				--10 NethFac
--11 SmokedQ				--11 SmokFac
--12 SmokedQ				--12 MECondu
--13 SmokedQ				--13 MECondu
--14 SmokedQ				--14 EnCondu
--15 SmokedQ				--15 EnCondu
--16 Fuel					--16 Fuel
--	

local NumSect = 0				--The number of sections to be built, colum by colum
local SectLen = 6				--7th segment in a section is shared, the start of the next.
local SectWid = 5  				--2 block spaces for the pillars are unaccounted for.
local MENCond = false			--Adding Conduits to the floor, also accounts for facades
local EneCond = false

print("Please specify the number of sections to be built. Recommended not to exceeed 10. "(local NumSect = ...)"")

print("Please specify if ME Conduit is to to be added, true/false "local MENCond = ..."")
	if MENCond ~= true or MENCond ~= false then
		repeat
			print("Please specify true or false "local MENCond = ..."")
		until(MENConD == true or MENCond == false)
	end

print("Add Energy Conduit to Hall? true/false "local EneCond = ..."")
	if EneCond ~= true or EneCond ~= false then
		repeat
			print("Please specify true or false "local EneCond = ..."")
		until(EneCond == true or EneCond == false)
	end


if not MENCond and not EneCond then
	local NetherQ = 1
	local SmokesQ = 10
	local FuelSup = 16
else
	local NetherQ = 1
	local SmokesQ = 5
	local NFacade = 9
	local SFacade = 11
	local MECondu = 12
	local EnCondu = 14
	local FuelSup = 16
end

--Starting location, start at an edge centre block facing the empty space you wish to build in.  All space ahead must be clear
turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()
 
turtle.select(get.local(SmokeQ))
for i = 1, get.local(NumSect) do	--Colum 2 - Left smoke, Send
	6 do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()

turtle.select(get.local(NetherQ))
for i =1, NumSect do	--Colum 3, - Left Nether, Return
	6 do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()

for i = 1 NumSect do --Colum 4, - Centre Nether or Facade, Send
		if not MEConduit and not EnergyConduit then
			turtle.select(get.local(NetherQ))
			6 do
				turtle.forward()
				turtle.placeDown()
			end
		else
		6 do
			turtle.select(get.local(NethFac))
			turtle.forward()
			turtle.placeDown()
			if MEConduit then
				turtle.select(get.local(MECon))
				turtle.placeDown()
			and if EnergyConduit then
				turtle.select(get.local(EnCon))
				turtle.placeDown()
			end
		else
			turtle.forward()
			turtle.placeDown()
		end
	end
end

turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()

for i = 1, get.local(NumSect) do
	if not MEConduit and not EnergyConduit then	--Colum 5, - Left Nether, Return
		turtle.select(get.local(NetherQ))
		6 do
			turtle.forward()
			turtle.placeDown()
		end
	else
		turtle.select(get.local(NethFac))
			turtle.forward()
			turtle.placeDown()
			if MEConduit then
				turtle.select(get.local(MECon))
				turtle.placeDown()
			and if EnergyConduit then
				turtle.select(get.local(EnCon))
				turtle.placeDown()
			end
		turtle.select(get.local(NetherQ))
	5 do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()

for i = 1, get.local(SumSect) do
	if not MEConduit and not EnergyConduit then	--Colum 6, - Left Smoked, Send
		turtle.select(get.local(SmokedQ))
		6 do
			turtle.forward()
			turtle.placeDown()
		end
	else
		turtle.select(get.local(SmokedQ))
		5 do
			turtle.forward()
			turtle.placeDown()
		end
		turtle.select(get.local(smokFac))
		turtle.forward()
		turtle.placeDown()
		if MEConduit then
			turtle.select(get.local(MECon))
			turtle.placeDown()
		and if EnergyConduit then
			turtle.select(get.local(EnCon))
			turtle.placeDown()
		end
	end
end

turtle.turnLeft()		--Return to start
turtle.forward()
turtle.forward()
turtle.turnRight()
do 6
	turtle.back()
end
