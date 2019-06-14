def fizzbuzz(num, a, b, word1, word2)
  if num % a == 0 && num % b == 0
    puts word1 + " " + word2
  elsif num % a == 0
    puts word1
  elsif num % b == 0
    puts word2
  else
    puts num
  end
end

lines = ARGF.read.split("\n")
i = 0
a = ""
b = ""
word1 = ""
word2 = ""
lines.each do |line|
  if i == 0
    a = line.split(" ")[0].to_i
    b = line.split(" ")[1].to_i
  elsif i == 1
    word1 = line.split(" ")[0].to_s
    word2 = line.split(" ")[1].to_s
  else
    fizzbuzz(line.to_i, a, b, word1, word2)
  end
  i += 1
end
