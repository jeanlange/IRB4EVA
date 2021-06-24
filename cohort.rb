array = (1..480).to_a

# curr_pos = 0

while array.length > 2
    if array.length.even?
        (0..array.length).step(2).each do |x|
            array[x] = nil
        end
        array[3] = nil
        array = array.compact
    else
        (2..array.length).step(2).each do |y|
            array[y] = nil
        end
        array[1] = nil
        array = array.compact
    end
    puts array
    puts
end
