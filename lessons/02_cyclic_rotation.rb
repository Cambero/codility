# https://codility.com/programmers/lessons/2-arrays/cyclic_rotation/

def solution(a, k)
  a.rotate(-k)
end

# def solution(a, k)
#   return a if a.empty?
#   k.times do
#     a = [a.pop] + a
#   end
#   a
# end
