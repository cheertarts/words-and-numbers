
$lang = ["one", "two", "three", "four", "five", "six", "seven", "eight",
         "nine", "ten", "eleven", "twelve", "thirteen", "fourteen",
         "fifteen", "sixteen", "seventeen", "eighteen", "nineteen",
         "twenty", "thirty", "fourty", "fifty", "sixty", "seventy",
         "eighty", "ninety", "hundred", "thousand"]

def number_to_word(num)
  if num < 1
    ""
  elsif num <= 20
    $lang[num - 1]
  elsif num < 100
    $lang[num / 10 + 17] +
      (num % 10 == 0 ? "" : " " + number_to_word(num % 10))
  elsif num < 1000
    $lang[num / 100 - 1] + " " + $lang[27] +
      (num % 100 == 0 ? "" : " " + number_to_word(num % 100))
  elsif num < 1_000_000
    number_to_word(num / 1000) + " " + $lang[28] +
      (num % 1000 == 0 ? "" : " " + number_to_word(num % 1000))
  end
end

