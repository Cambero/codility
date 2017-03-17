# https://codility.com/programmers/lessons/7-stacks_and_queues/brackets/

def solution(s)
  pairs = { '(' => ')', '{' => '}', '[' => ']' }
  stack = []

  s.chars.each do |c|
    if pairs.include?(c)
      stack << c
    else
      return 0 unless pairs[stack.pop] == c
    end
  end

  stack.empty? ? 1 : 0
end

solution('{[()][()][()]}') == 1
solution('{[()][()][()]}' * 2) == 1
solution('{[()()]}') == 1
solution('([)()]').zero?
solution('') == 1
