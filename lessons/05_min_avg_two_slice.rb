# https://codility.com/programmers/lessons/5-prefix_sums/min_avg_two_slice/

def solution(a)
  min = 1 / 0.0
  ind = -1

  # from the problem description: the slices are a minimum length of 2
  # the min average slice also cannot be longer than 3, cause if you have an
  # array longer than 3, then there is a subarray with a smaller average.
  [2, 3].each do |length|
    0.upto(a.size - length).each do |i|
      avg = a[i, length].reduce(:+) / length.to_f
      if avg < min
        min = avg
        ind = i
      end
    end
  end
  ind
end
