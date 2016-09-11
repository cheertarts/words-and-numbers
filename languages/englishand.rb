
require('./languages/english')

$lang[27] = "hundred and"
$lang[28] = "thousand and"

def number_to_word(num)
  if num < 1
    ""
  elsif num <= 20
    $lang[num - 1]
  elsif num < 100
    $lang[num / 10 + 17] +
      (num % 10 == 0 ? "" : " " + number_to_word(num % 10))
  elsif num < 1000
    $lang[num / 100 - 1] + " " +
      (num % 100 == 0 ? $lang[27].partition(" ")[0] :
          $lang[27] + " " + number_to_word(num % 100))
  elsif num < 1_000_000
    number_to_word(num / 1000) + " " +
      (num % 1000 == 0 ? $lang[28].partition(" ")[0] :
          $lang[28] + " " + number_to_word(num % 1000))
  end
end

