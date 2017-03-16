# https://codility.com/programmers/lessons/6-sorting/distinct/

def solution(a)
  a.uniq.count
end

# def solution(a)
#   r = {}
#   a.each{ |x| r[x] = true }
#   r.keys.count
# end
