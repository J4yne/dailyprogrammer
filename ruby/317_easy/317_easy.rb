# 317 easy challenge

input = "aaa"

until input == "a" do
  x = input.slice!(0..2)
  if input.start_with?("a")
    input = input + "bc"
  elsif input.start with?("b")
    input = input + "a"
  else
    input = input + "aaa"
  end

  puts "#{input}"
end

