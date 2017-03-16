# https://codility.com/programmers/lessons/5-prefix_sums/genomic_range_query/

# 'CAGCCTA', [2,5,0], [4,5,6]
def solution(s, p, q)
  factors = { 'A' => 1, 'C' => 2, 'G' => 3, 'T' => 4 }

  prefix_sum = generate_prefix_sum(s)
  # check for increments in order
  result = []

  p.size.times do |i|
    p_index = p[i]
    q_index = q[i] + 1

    prefix_sum.keys.each do |letter|
      if prefix_sum[letter][p_index] < prefix_sum[letter][q_index]
        result << factors[letter]
        break
      end
    end
    # if prefix_sum['A'][p_index] < prefix_sum['A'][q_index]
    #   result << factors['A']
    # elsif prefix_sum['C'][p_index] < prefix_sum['C'][q_index]
    #   result << factors['C']
    # elsif prefix_sum['G'][p_index] < prefix_sum['G'][q_index]
    #   result << factors['G']
    # elsif prefix_sum['T'][p_index] < prefix_sum['T'][q_index]
    #   result << factors['T']
    # end
  end
  result
end

def generate_prefix_sum(s)
  prefix_sum = { 'A' => [0], 'C' => [0], 'G' => [0], 'T' => [0] }

  # increments
  s.size.times do |i|
    # prefix_sum['A'] << prefix_sum['A'].last + (s[i] == 'A' ? 1 : 0)
    # prefix_sum['C'] << prefix_sum['C'].last + (s[i] == 'C' ? 1 : 0)
    # prefix_sum['G'] << prefix_sum['G'].last + (s[i] == 'G' ? 1 : 0)
    # prefix_sum['T'] << prefix_sum['T'].last + (s[i] == 'T' ? 1 : 0)
    prefix_sum.keys.each do |letter|
      prefix_sum[letter] << prefix_sum[letter].last + (s[i] == letter ? 1 : 0)
    end
  end
  # {"A"=>[0, 0, 1, 1, 1, 1, 1, 2], "C"=>[0, 1, 1, 1, 2, 3, 3, 3],
  #  "G"=>[0, 0, 0, 1, 1, 1, 1, 1], "T"=>[0, 0, 0, 0, 0, 0, 1, 1]}
  prefix_sum
end

solution('CAGCCTA', [2, 5, 0], [4, 5, 6]) == [2, 4, 1]
