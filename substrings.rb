# frozen_string_literal: true

def substrings(str, substr_arr)
  temp_substr_arr = substr_arr.map(&:downcase)
  temp_arr = []
  temp_substr_arr.each do |substr|
    temp_arr.concat(str.downcase.scan(substr))
  end
  temp_arr.tally
end
