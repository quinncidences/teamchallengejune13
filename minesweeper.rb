array = [
  ['.','.','.','.','.','.','.','.'],
  ['.','*','.','.','.','.','.','.'],
  ['.','.','.','.','.','.','.','.'],
  ['.','.','.','.','.','.','.','.'],
  ['*','*','*','.','.','.','*','.'],
  ['*','.','*','.','.','*','.','.'],
  ['*','*','*','.','.','.','.','.'],
  ['.','.','.','.','.','.','.','.']
]

spots = [
  [-1,-1],
  [-1,0],
  [-1,1],
  [0,-1],
  [0,1],
  [1,-1],
  [1,0],
  [-1,-1]
]

def minesweeper(array, spots)
  answer = []
  array.each{|x|
    zeroline = []
    x.each{|y|
      zeroline.push(0)
    }
    answer.push(zeroline)
  }

  array.each_with_index{|line, x|
    line.each_with_index{|cell, y|
      if cell == "*"
        spots.each{|spot|
          if x + spot[0] > 0 && y + spot[1] > 0
            answer[x+spot[0]][y+spot[0]] += 1
          end
        }
        answer[x][y] = '*'
      end
    }
  }
  puts answer
  answer
end

minesweeper(array, spots)
