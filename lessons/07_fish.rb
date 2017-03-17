# https://codility.com/programmers/lessons/7-stacks_and_queues/fish/

UP = 0
DOWN = 1
Fish = Struct.new(:direction, :size)
def solution(a, b)
  stack = []
  a.size.times do |i|
    fish = Fish.new(b[i], a[i])
    last_fish = stack.last

    if last_fish && last_fish.direction == DOWN && fish.direction == UP
      if fish.size > last_fish.size
        stack.pop
        redo
      end
    else
      stack << fish
    end
  end

  stack.count
end

solution([4, 3, 2, 1, 5], [0, 1, 0, 0, 0])
