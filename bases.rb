# given a number
# spit it out in all bases 3-10
# count the number of 2s in that

# 1 => 16
# 22 => 7
# hash.values.max.key

numbers_hash = {}

# for one number, do this
num = 22
(0..10000).each do |num|
    output = ""
    (3..10).each do |base|
        output << num.to_s(base)
        output << " "
    end
    # puts output
    # puts output.count("2")
    numbers_hash[num] = output.count("2")
end

puts numbers_hash
puts numbers_hash.max_by{|k,v| v}[0] 