#!/usr/bin/ruby

require(File.file?("languages/" + ARGV[0] + ".rb") ? "./languages/" + ARGV[0] : exit())

def number_to_length(num)
  number_to_word(num).gsub(" ", "").gsub(",", "").length
end

def build_list(num)
  length = number_to_length(num)
  if num == length
    [[num, length]]
  else
    [[num, length]] + build_list(length)
  end
end

def build_lists(limit)
  [*1..(limit - 1)].map{ |n| build_list(n) }
end

def search_lists(limit, level)
  build_lists(limit).map{ |list| list.size == level ? list : nil }.compact
end

search_lists(1_000_000, ARGV[1].to_i).each do |list|
  puts list.inspect
end

