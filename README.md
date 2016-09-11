# Find Data on the Amount of Characters in Number Phrases

Requires Ruby. Created by Caleb Butler.

Inspired by the video https://www.youtube.com/watch?v=LYKn0yUTIU4, this program will find numbers and the amount of characters needed to say that number in english, and then will see if the characters needed is equal to the number. For example, four is equal to four. If the two numbers are not equal then it will search the phrase length to find its _own_ phrase length and repeat. Here is how you can use it, as well as some examples:

    ./words-and-numbers english 2
      => [[5, 4], [4, 4]] # five
      => [[9, 4], [4, 4]] # nine
      
    ./words-and-numbers englishand 4
      ..
      => [[104, 17], [17, 9], [9, 4], [4, 4]] # one hundred and four
      ..
      => [[999999, 59], [59, 9], [9, 4], [4, 4]] # nine hundred and ninety nine thousand
                                                 # and nine hundred and ninety nine
      
    ./words-and-numbers englishplus 5
      ..
      => [[103, 19], [19, 8], [8, 5], [5, 4], [4, 4]] # one hundred plus three
      ..
      => [[999999, 70], [70, 7], [7, 5], [5, 4], [4, 4]] # nine hundred plus ninety nine, times
                                                         # one thousand plus nine hundred plus
                                                         # ninety nine

PLEASE, unless you know what you're doing, DO NOT run words-and-numbers without english, englishand or englishplus as the first argument. This program was made very quickly and is probably very error prone. I cannot tell you what will happen if you run this program in an unexpected way.
