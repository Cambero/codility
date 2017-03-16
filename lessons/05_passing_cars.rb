# https://codility.com/programmers/lessons/5-prefix_sums/passing_cars/

def solution(a)
  zeros = 0
  a.reduce(0) do |total, num|
    num.zero? ? zeros += 1 : total += zeros
    return -1 if total > 1_000_000_000
    total
  end
end
