# https://codility.com/programmers/lessons/4-counting_elements/missing_integer/

def solution(a)
  positives = a.uniq.sort.select { |x| x > 0 }
  return 1 if positives.empty?
  1.upto(positives.max + 1) { |x| return x unless positives[x - 1] == x }
end
