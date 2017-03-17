# https://codility.com/programmers/lessons/7-stacks_and_queues/stone_wall/

def solution(h)
  stack = []
  blocks = 0

  h.each do |i|
    stack.pop while !stack.empty? && stack.last > i

    if stack.empty? || stack.last < i
      stack << i
      blocks += 1
    end
  end
  blocks
end

solution([8, 8, 5, 7, 9, 8, 7, 4, 8]) == 7
