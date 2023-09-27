def best_match(goals1, goals2)
  min = goals1.max
  i = 0

  goals1.each.with_index do |num, index|
    if (num - goals2[index]) < min
      min = num - goals2[index]
      i = index
    elsif (num - goals2[index]) == min
      i = index if num > goals1[i]
    end
  end

  p i
end



best_match([6, 4],[1, 2])
best_match([1],[0])
best_match([1, 2, 3, 4, 5],[0, 1, 2, 3, 4])
best_match([3, 4, 3],[1, 1, 2])
best_match([4, 3, 4],[1, 1, 1])
