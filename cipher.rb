lines = ARGF.read.split("\n")
i = 0
ciphto = [];
ciphfrom = [];
lines.each do |line|
  if i == 0
    ciphto = line.split('')
  elsif i == 1
    ciphfrom = line.split('')
  else
    arrline = line.split('').map do |c|
      c == " " ? c : ciphto[ciphfrom.find_index(c)]
    end
    puts arrline.join('')
  end
  i += 1
end
