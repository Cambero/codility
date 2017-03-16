# https://codility.com/programmers/lessons/5-prefix_sums/count_div/

def solution(a, b, k)
  (b / k) - ((a - 1) / k)
end

# def solution(a, b, k)
#   (b / k) - (a / k) + ( (a % k) == 0 ? 1 : 0)
# end

solution(1, 2_000_000_000, 1.0 / 0).zero?
solution(1, 2_000_000_000, 1) == 2_000_000_000
solution(6, 11, 2) == 3
solution(0, 0, 11) == 1
solution(1, 1, 11).zero?
solution(11, 345, 17) == 20
solution(10, 10, 5) == 1
solution(10, 10, 7).zero?
solution(10, 10, 20).zero?
