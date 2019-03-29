# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
    bin_x = x.to_s(2)
    bin_y = y.to_s(2)
    bin_x = bin_x.rjust(bin_y.length, '0')
    bin_y = bin_y.rjust(bin_x.length, '0')


    bin_y.length - bin_x.chars.zip(bin_y.chars).select { |a,b| a == b }.count

end

hamming_distance(28,4)
