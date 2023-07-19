def cat_mouse(x,j)
  array_x = (x.split(""))
  if array_x.include?('C'&&'m'&&'D')
    array_x.each_with_index do |letter,index|
      if letter == "C"
        p index
        p jump = array_x[index..(index+j+1)]
        p jump_cat = jump.find_index("D")
        if jump.include?("D")
          if jump_cat == j
            p 'Escaped!'
          else
            p 'Protected!'
          end
        elsif jump.last == 'm'
          p 'Caught!'
        else
          p 'Escaped!'
        end
      end
    end
  else
    p "boring without all three"
  end
end

cat_mouse('.CD......m.', 2)
