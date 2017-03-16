# https://codility.com/programmers/lessons/1-iterations/binary_gap/

# n = 328 = 101001000
# reverse.to_i: 100101
def solution(n)
  n.to_s(2).reverse.to_i.to_s.split('1').map(&:length).max || 0
end
