# https://codility.com/programmers/lessons/4-counting_elements/frog_river_one/

def solution(x, a)
  path = Array.new(x, false)
  count = 0
  a.each_with_index do |v, i|
    next if path[v - 1] == true

    path[v - 1] = true
    count += 1
    return i if count == x
  end
  -1
end
