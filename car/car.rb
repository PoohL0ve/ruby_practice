class Car
    attr_accessor :model, :year, :color

    def initialize(m, y, c)
        @model = m
        @year = y
        @color = c
        @current_speed = 0
    end 

    def current_speed
        puts "You are currently driving your #{model} at #{@current_speed}mph"
    end

    def speed_up(velocity)
        @current_speed += velocity
        puts "You accelerating at a speed of #{@current_speed}mph"
    end

    def slow_down(tap)
        @current_speed -= tap
        puts "The car is slowing down at #{@current_speed}"
    end

    def stop 
        @current_speed = 0
        puts "Finally, you have reached your destination"
    end
    
    def spray_paint(color)
        self.color = color
        puts "You car is being painted #{color}"
    end

    def to_s
        "You drive a #{@color} #{model} made in #{@year}."
    end
end 


# checking on the functionality of the Car class
puts "Please enter the model, year and color of your car"
user_model = gets.chomp
user_year = gets.chomp
user_color = gets.chomp
puts user_model, user_year, user_color
my_car = Car.new(user_model, user_year, user_color)

# using the instance methods
#puts my_car.current_speed
#puts "Accelerate your car"
#user_increase_speed = gets.chomp
#my_car.speed_up(user_increase_speed.to_i)
#puts "We are almost there, enter a slowing rate"
#user_slowing = gets.chomp
#my_car.slow_down(user_slowing.to_i)
#my_car.stop

#puts my_car.color
#my_car.spray_paint("Midnight")
#puts my_car.color

puts my_car 