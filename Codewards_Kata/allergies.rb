class Allergies
  ALLERGY_SCORES = {
    "eggs"=> 1,
    "peanuts"=> 2,
    "shellfish"=> 4,
    "strawberries"=> 8,
    "tomatoes"=> 16,
    "chocolate"=> 32,
    "pollen"=> 64,
    "cats"=> 128
  }

  def initialize(score)
    raise "wrong type: integer required" unless score.is_a?(Integer)
    @list_allergies = []
    return if score.nil? || score <= 0
    allergy_array = [128, 64, 32, 16, 8, 4, 2, 1]
    array = []
    if score >= 256
      score = score % 256
      while score > 256 do
        score = score % 256
      end
    end
    array_num = []
    allergy_array.each do |num|
      if score >= num
        array_num << num
      end
    end

    reminder = score % array_num[0]
    array = [array_num[0]]
    n=1

    while reminder > 0 do
      if reminder >= array_num[n]
        array << array_num[n]
        reminder = reminder % array_num[n]
      end
      n += 1

    end

    final_array = []
    array.each do |allergy|
      final_array << ALLERGY_SCORES.key(allergy)
    end
    @list_allergies = final_array.sort!
  end

  def is_allergic_to(allergen)
    puts @list_allergies.include?(allergen)

  end

  def allergies()
    @list_allergies
  end
end

test = Allergies.new(255)
test.is_allergic_to("peanuts")
test.allergies()
# Allergies(255).allergies()
