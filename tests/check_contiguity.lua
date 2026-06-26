-- So the check_contiguity can pretend to care about the value of the array
local function dummy_validation()end
---@param should_pass boolean
---@param test_name string
---@param array any[]
local function check_pass(should_pass, test_name, array)
	local did_pass = pcall(check_contiguity, array, dummy_validation)
	local did_and_should_pass = did_pass ~= should_pass

	if did_and_should_pass then
		error("Test: '"..test_name.."' should "..(should_pass and "not " or "").."have errored")
	else
		log("Test: '"..test_name.."' passed")
	end

	return did_and_should_pass
end

--MARK: Valid

check_pass(true, "Empty array", {})
check_pass(true, "Single Item", {true})
check_pass(true, "Inserted out of order", {
	[2] = true,
	[1] = true,
})
---@type true[]
local tmp = {}
for i = 1, 1030 do
	tmp[i] = true
end
check_pass(true, "Larger than array", tmp)

--MARK: invalid

check_pass(false, "0 indexed array", {
	[0] = true,
	[1] = true,
	[2] = true,
}--[[@as any[] ]])
-- for i = 1, 50 do
-- 	tmp[math.random(1030)] = nil
tmp[324] = nil
check_pass(false, "Randomly-poked array", tmp)
-- end

tmp = {}
for i = 1030, 1, -1 do
	tmp[i] = true
end
check_pass(false, "Reverse inserted large array (known issue)", tmp)