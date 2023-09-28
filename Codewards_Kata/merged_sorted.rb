def merge(nums1, m, nums2, n)
  nums1 = nums1 + nums2
  nums1.reject! {|num| num == 0 }.sort
  p nums1

end


merge(nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3)
