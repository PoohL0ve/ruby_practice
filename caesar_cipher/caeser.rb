# Create a method that takes two arguments
# The first argument is a string
# The second is an integer
# Return a string based on the caeser cipher method using the integer

def caeser_cipher(phrase, number) 
    testing_array = phrase.split
    words_to_numbers = Array.new()
    back_from_numbers = Array.new() 
    
    testing_array.each do |word|
        word.each_char do |letter| 
            new_figure = letter.ord + number
            words_to_numbers.push(new_figure)
        end
        
    end
    
    for i in words_to_numbers
        back_to_letter = i.chr 
        back_from_numbers.push(back_to_letter)
    end
    puts back_from_numbers.join("")
end

# test for method
saying = "beauty"
figure = 2
pass_word = caeser_cipher(saying, figure)