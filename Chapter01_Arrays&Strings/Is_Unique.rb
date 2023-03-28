def unique(string)
  array_string = string.chars
  p array_string
    if array_string.uniq! == nil
      p true
    else
      p false
    end
end

unique("hola que")
