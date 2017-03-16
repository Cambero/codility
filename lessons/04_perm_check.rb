# https://codility.com/programmers/lessons/4-counting_elements/perm_check/

def solution(a)
  ((1..a.length).to_a - a).empty? ? 1 : 0
end
