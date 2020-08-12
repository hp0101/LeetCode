
//Remove Duplicates from Sorted Array

func removeDuplicates(nums: inout [Int]) -> Int {
    var count = 0
    for (index, _) in nums.enumerated()
    {
        var nextIndex = 0
        if index != nums.count - 1 {
            nextIndex = index + 1
//            print(nums[nextIndex], nums[index])
            if nums[nextIndex] == nums[index] {
                count+=1
            }
            else {
                nums[nextIndex - count] = nums[nextIndex]
//                print(nums, count, nextIndex, index)
            }
        }
    }
    
    return nums.count - count;
}

var myArray = [1,1,1,2,3]
print(removeDuplicates(nums: &myArray))
print(myArray)
