# https://codility.com/programmers/lessons/3-time_complexity/frog_jmp/

def solution(x, y, d)
  ((y - x) / d.to_f).ceil
end
