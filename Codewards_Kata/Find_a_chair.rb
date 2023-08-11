def meeting(rooms, number)
  free_chairs = []
  rooms.each do |room|
    if room[1] >= room[0].length
      free_chairs << (room[1] - room[0].length)
    end
    if free_chairs.sum == number
      p free_chairs
    end
    if free_chairs.sum > number
      free_chairs.last(free_chais.last - number)
      p free_chairs
    end

  end

end

meeting([["XXX", 1], ["XXXXXX", 6], ["X", 2], ["XXXXXX", 8], ["X", 3], ["XXX", 1]], 5)
