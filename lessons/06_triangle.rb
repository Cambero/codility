# https://codility.com/programmers/lessons/6-sorting/triangle/

def solution(a)
  a.sort!
  0.upto(a.size - 3).each do |i|
    return 1 if a[i] + a[i + 1] > a[i + 2]
  end
  0
end

solution([10, 2, 5, 1, 8, 20]) == 1
solution([10, 50, 5, 1]).zero?
