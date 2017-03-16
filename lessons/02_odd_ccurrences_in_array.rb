# https://codility.com/programmers/lessons/2-arrays/odd_occurrences_in_array/

def solution(a)
  a.reduce(:^)
end

# def solution(a)
#   a.group_by { |x| x }.each { |x, y| return x if y.size.odd? }
# end
