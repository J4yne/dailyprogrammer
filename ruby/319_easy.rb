# [2017-06-12] Challenge #319 [Easy] Condensing Sentences
# https://redd.it/6grwny

puts "Digital alarm clocks scare area children.".gsub(/(\w+)\s+\1/i) {$1}
puts "Deep episodes of Deep Space Nine came on the television only after the news.".gsub(/(\w+)\s+\1/i) {$1}

