require 'pry'
require_relative './review.rb'
require_relative './restaurant.rb'
require_relative './customer.rb'

puts "Please tell us your name"
    answer = gets.chomp
    custy = Customer.new(answer)

puts "Which spot would you like to review?"
answer = gets.chomp

    if !Restaurant.all.include? (answer)
        resto_name = Restaurant.new(answer)
    else
        resto_name = answer
    end

puts "What'd you think?"
    answer = gets.chomp
    custy.add_review(resto_name, answer)



binding.pry

"howdy"
