def min_distance(n)
  factors =  (1..n).collect {|num, num_min| num if (n/num)*num == n}.compact
  array = []
  p factors
  factors.each.with_index(1) do |num, i|
    array << [factors[i]- num ] if (i < factors.length)
  end
  return array.min.join.to_i

end

min_distance(218683)

n.divisors.each_cons(2).map{|a,b| (a-b).abs}.min
(1..10).each_cons(3) { |a| p a }
# outputs below
[1, 2, 3]
[2, 3, 4]
[3, 4, 5]
[4, 5, 6]
[5, 6, 7]
[6, 7, 8]
[7, 8, 9]
[8, 9, 10]
