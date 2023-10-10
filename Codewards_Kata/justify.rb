require 'enumerator'
def justify(text, width)
  arr = text.split("")

  array = arr.enum_for(:each_slice, 3).to_a
  p array
end


justify('123 45 6', 7)
