

class Option3
    def options
        puts "Please choose from the following selections:"
        puts "************** GENERAL SEARCH *******************"
        puts "1. See a list of all the gifts you have received."
        puts "2. See a list of all the gifts you have given."
        puts "3. See a list of all your friends."
        puts "************** SPECIFIC SEARCH *******************"
        puts "4. Search for gifts from friend."
        puts "5. Search for gifts given to friend."
        puts "6. Search for gifts by occasion."
        puts "7. Search for gifts by category."

        selection = gets.chomp.to_i

        case selection
        when 1
            puts "Here is a list of all the gifts you have received:"
            user.see_all_gifts_received
        when 2
            puts "Here is a list of all the gifts you have given:"
            user.all_gifts_given
        when 3
            puts "Here is a list of all your friends: (Anyone you have had an exchange with)"
            user.see_all_friends
        when 4
            puts "Please enter the name of your friend who you want to see gifts from:"
            friend = gets.chomp
            user.see_all_gifts_from(friend)
        when 5
            puts "Please enter the name of your friend who you gave a gift to:"
            friend = gets.chomp
            user.gifts_given_to(friend)
        when 6
            puts "Enter the occasion you are looking for gifts by:"
            occasion = gets.chomp
            user.find_gift_by_occasion(occasion)
        when 7
            puts "Enter the category you are looking for gifts by:"
            category = gets.chomp
            user.find_gift_by_category(category)
        end
    end  

end
