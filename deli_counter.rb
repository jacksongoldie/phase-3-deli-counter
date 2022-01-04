require 'pry'

def line(deli)
    if deli.length <= 0
        puts "The line is currently empty."
    else
        customers = deli.map {|p|
            index = deli.index(p) + 1 
            each = "#{index}. #{p}"
            each
        }
        line = customers.join(' ')
        puts "The line is currently: #{line}"
    end
end

def take_a_number(deli_array, name_of_person)
    deli_array << name_of_person
    index = deli_array.index(name_of_person) + 1
    puts "Welcome, #{name_of_person}. You are number #{index} in line."
end

def now_serving(deli)
    if deli.length <= 0
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{deli[0]}."
        deli.shift
    end
end

katz_deli = ["Goldie", "Dust Bunny"]
line(katz_deli)