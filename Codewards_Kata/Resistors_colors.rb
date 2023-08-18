def decode_resistor_colors(bands)
  colors = {black: 0, brown: 1, red: 2, orange: 3, yellow: 4, green: 5, blue: 6, violet: 7, gray: 8, white: 9, standard: 20, gold: "5%", silver:"10%"}
  num = ""
  total = 0
  bands_array = bands.split(" ")
  bands_array.each.with_index do |color, i|
    if i < 2
    num << ((colors.fetch(color.to_sym))).to_s
    elsif i == 2
    total = num.to_i * (10**colors.fetch(color.to_sym))
    end
  end

  bands_array.length == 3 ? tolerance = "20%" : tolerance = colors.fetch(bands_array[3].to_sym)

  if total < 1000
    return "#{total} ohms, #{tolerance}"
  elsif total < 1000000
    return "#{total/1000.to_f.round(1)}k ohms, #{tolerance}"
  elsif total >= 1000000
    return "#{(total/1000000).round(1)}M ohms, #{tolerance}"
  else
    return "error"
  end

end


a = decode_resistor_colors("yellow violet black")
p a
b = decode_resistor_colors("yellow violet red gold")
p b
c = decode_resistor_colors("brown black green silver")
p c

# ("yellow violet red gold"), "4.7k ohms, 5%")
# Each resistor will have at least three bands, with the first and second bands indicating the first two digits of the ohms value, and the third indicating the power of ten to multiply them by, for example a resistor with the three bands "yellow violet black" would be 47 * 10^0 ohms, or 47 ohms.

# Most resistors will also have a fourth band that is either gold or silver,
# with gold indicating plus or minus 5% tolerance, and silver indicating 10% tolerance.
# Resistors that do not have a fourth band are rated at 20% tolerance.
# (There are also more specialized resistors which can have more bands and additional meanings for some of the colors,
#   but this kata will not cover them.)
