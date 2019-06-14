def hello(x)
  puts x.reverse
end

lines = ARGF.read.split("\n")
lines.each do |line|
  hello(line)
end
