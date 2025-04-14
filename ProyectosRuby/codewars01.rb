def next_bigger(n)
    digits = n.to_s.chars
    (digits.size - 2).downto(0) do |i|
        if digits[i] < digits[i + 1]
            larger = digits[i + 1..-1].select { |d| d > digits[i] }.min
            larger_index = digits.rindex(larger)
            digits[i], digits[larger_index] = digits[larger_index], digits[i]
            return (digits[0..i] + digits[i + 1..-1].sort).join.to_i
        end
    end
    -1
end