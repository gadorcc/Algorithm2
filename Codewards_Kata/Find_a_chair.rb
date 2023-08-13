def meeting(rooms, number)
  return "Game On" if number == 0
  free_chairs = []
  rooms.each do |room|
    if room[1] >= room[0].length
      free_chairs << (room[1] - room[0].length)
    else
      free_chairs << 0
    end
    if free_chairs.sum == number
      return free_chairs
    end
    if free_chairs.sum > number
      a = number - (free_chairs.sum - free_chairs.last)
      free_chairs[-1] = a
      return free_chairs
    end
    p free_chairs
  end
  return "Not enough!" if free_chairs.sum < number

end

a = meeting([["XXXXXXXXXX", 5], ["XXXXX", 10]], 1)
p a
