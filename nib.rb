# def nib(l, n)
#   if n <= l
#     return 1
#   end
#   sum = 0
#   n.times do |index|
#     sum += nib(l, n-(index+2))
#   end
#   return sum
# end

def nib(l, n)
  results = []
  l.times do
    results.push(1)
  end

  (n-l).times do
    results.push(results[results.length-l..results.length-1].inject(:+))
  end

  results[n-1]

end

lines = ARGF.read.split("\n")
lines.each do |line|
  puts nib(line.split(",")[0].to_i, line.split(",")[1].to_i)
end
