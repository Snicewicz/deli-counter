katz_deli = []

def line(katz_deli)
    if katz_deli.length < 1 
        puts "The line is currently empty."
    elsif katz_deli.length == 1
        katz_deli.each.with_index(1) { |name, place| puts "The line is currently #{place}. #{name}"}
    else katz_deli.length > 1 
        long_line = []
        katz_deli.each.with_index(1) { |name, place| long_line.push "#{place}. #{name}"}
        puts "The line is currently: " + long_line.join(" ")
    end
end


def take_a_number(katz_deli, customer)
    katz_deli.push("#{customer}")
    line_place = katz_deli.length
    puts "Welcome, #{customer}. You are number #{line_place} in line."
end


def now_serving(katz_deli)
    if katz_deli.length < 1 
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving " + katz_deli.shift + "."
    end
end
