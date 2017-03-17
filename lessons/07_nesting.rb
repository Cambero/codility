# https://codility.com/programmers/lessons/7-stacks_and_queues/nesting/

def solution(s)
  stack = []

  s.chars.each do |c|
    if c == '('
      stack << c
    else
      return 0 unless stack.pop == '('
    end
  end

  stack.empty? ? 1 : 0
end

solution('(()(())())') == 1
solution('())').zero?
solution('') == 1
