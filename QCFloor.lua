--Inventory arragement for turtle
--This line used to test uploading to GitHub

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
--11	SmokedQ					--11 SmokFac
--12	SmokedQ					--12 MECondu
--13	SmokedQ					--13 MECondu
--14	SmokedQ					--14 EnCondu
--15	SmokedQ					--15 EnCondu
--16	Fuel						--16 Fuel
--
--turtle.compareTo(Solt Number)
--turtle.select(solt number)
--turtle.getSelectedSlot()  						-current slot inventory
--turtle.getItemCount(slot number)			-invetnory of slot #
--turtle.getItemSpace(slot number)			-amoutn of space remaining
--turtle.transferTo()
--
--

-- 
--
--if (not MENCond and not EneCond) then
--	local NetherQ = 1
--	local SmokesQ = 10
--	local FuelSup = 16
--else
--	local NetherQ = 1
--	local SmokesQ = 5
--	local NFacade = 9
--	local SFacade = 11
--	local IOMECon = 12
--	local IOEnCon = 14
--	local FuelSup = 16
--end
--
--
--
--
--
local NumSect = 0				--The number of sections to be built, colum by colum
local SectLen = 6				--7th segment in a section is shared, the start of the next.
--local SectWid = 5  				--2 block spaces for the pillars are unaccounted for.
local NetherQ = 1
local SmokedQ = 10
--local FuelSup = 16

--print("Please specify the number of sections to be built. Recommended not to exceeed 10. "local NumSect = ..."")

--print("Please specify if ME Conduit is to to be added, true/false "local MENCond = ..."")
--	if MENCond ~= true or MENCond ~= false then
--		repeat
--			print("Please specify true or false "local MENCond = ..."")
--		until(MENConD == true or MENCond == false)
--	end

--print("Add Energy Conduit to Hall? true/false "local EneCond = ..."")
--	if EneCond ~= true or EneCond ~= false then
--		repeat
--			print("Please specify true or false "local EneCond = ..."")
--		until(EneCond == true or EneCond == false)
--	end



--Starting location, start at an edge centre block facing the empty space you wish to build in.  All space ahead must be clear
turtle.turnLeft()
turtle.forward()
turtle.forward()
turtle.turnRight()

turtle.select(SmokedQ)
for i = 1, NumSect do								--Colum 2 - Left smoked, Send
	for i = 1, SectLen do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()
turtle.select(NetherQ)
for i =1, NumSect do								--Colum 3, - Left Nether, Return
	for i = 1, SectLen do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()
for i = 1, NumSect do 								--Colum 4, - Centre Nether --Send
	for i = 1, SectLen do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnRight()
turtle.forward()
turtle.turnRight()
for i = 1, NumSect do								--Colum 5, - Right Nether --Return
	for i = 1, SectLen do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.forward()
turtle.turnLeft()
turtle.forward()
turtle.turnLeft()
turtle.select(SmokedQ)
for i = 1, NumSect do								--Colum 6, - Right Smoked --Send
	for i = 1, SectLen do
		turtle.forward()
		turtle.placeDown()
	end
end

turtle.turnLeft()														--Return to start
turtle.forward()
turtle.forward()
turtle.turnRight()
	for i = 1, SectLen do
	turtle.back()
end
