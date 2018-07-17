a = [1,2,3,4,5,6]

puts a

a.reduce do |first, second|
    if first > second
        return first
    else
        return second
    end
end
