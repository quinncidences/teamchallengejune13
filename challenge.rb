
def hello(x)
  if x === 1
    puts "hello 1"
  else
    puts "hello not 1"
  end
end

hello(gets.chomp.to_i)
