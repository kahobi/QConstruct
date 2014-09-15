
--	local NetherQ = 1
--	local SmokesQ = 10
--	local FuelSup = 16
--
--
local NumSect = 0				--The number of sections to be built, colum by colum
local SectDim = 6				--7th segment in a section is shared, the start of the next.
local NetherQ = 1
local SmokedQ = 10
--local FuelSup = 16



--Starting location, start at an edge centre block facing the empty space you wish to build in.  All space ahead must be clear

for i = 1, NumSect do
	for i = 1 , SectDim do
		turtle.forward()
	end

	turtle.turnLeft()
	turtle.forward()
	turtle.forward()
	turtle.forward()

	for i = 1 , SectDim do
		turtle.placeDown()
		turtle.up()
	end
	
	for i = 1 , SectDim do
		turtle.back()
	end
	
	for i = 1 , SectDim do
		turtle.down()
	end
	
	for i = 1 , SectDim do
		turtle.placeDown()
		turtle.up()
	end

	turtle.forward()
	turtle.forward()
	turtle.forward()
	turtle.turnRight()

	for i = 1 , SectDim do
		turtle.down()
	end
end

for i = 1, NumSect do
	for i = 1 , SectDim do
		turtle.back()
	end
end
