# https://codility.com/programmers/lessons/3-time_complexity/tape_equilibrium/

def solution(a)
  res = a.reduce(:+)

  a[0..-2].map do |i|
    res -= i * 2
    res.abs
  end.min
end

solution [-1000.0, 1000.0]
solution [3, 1, 2, 4, 3]
