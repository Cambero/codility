# https://codility.com/programmers/lessons/6-sorting/max_product_of_three/

def solution(a)
  a.sort!
  [a[-3] * a[-2] * a[-1], a[0] * a[1] * a[-1]].max
end

solution([-3, 1, 2, -2, 5, 6]) == 60
solution([-5, 5, -5, 4]) == 125
solution([-5, -6, -4, -7, -10]) == -120
