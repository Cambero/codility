# encoding: UTF-8
# https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

def solution(a)
  total = a.reduce(:+)
  a[0..-2].map do |i|
    res = res - (i * 2)
    res.abs
  end.min
end

solution [-1000.0, 1000.0]
solution [3,1,2,4,3]