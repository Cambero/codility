# https://codility.com/programmers/lessons/4-counting_elements/max_counters/

def solution(n, a)
  counters = Hash.new(0)
  a.each do |k|
    if k <= n
      counters[k] += 1
    else
      counters = Hash.new(counters.values.max || counters[1])
    end
  end

  1.upto(n).map { |i| counters[i] }
end

solution(5, [3, 4, 4, 6, 1, 4, 4]) == [3, 2, 2, 4, 2]
