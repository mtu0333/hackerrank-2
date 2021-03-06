def maxXor(l, r)
    max = 0
    lr = (l..r).to_a
    combinations = lr.combination(2).to_a

    combinations.each do |x|
        curr_xor = x[0] ^ x[1]
        max = curr_xor if curr_xor > max
    end

    return max
end

l = gets.to_i
r = gets.to_i
print maxXor(l, r)
