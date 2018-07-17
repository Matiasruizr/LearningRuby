def cien_entre(a)
    100 / a
rescue
     "No se puede dividir por #{a}"
end

puts cien_entre(0)