require_relative '../config/environment'
require_relative '../app/models/fridge'
def run_tracker
  puts <<~HEREDOC
         Welcome to the fridge Tracker
         What Would you like to do?
         1. See all of your fridges
         2. Add a Fridge
         3. Delete a Fridge
         Select a number:
       HEREDOC
  user_descision = gets.chomp.to_i
  if user_descision == 1
    p Fridge.all

    end
  if user_descision == 2
    puts 'Brand name of Fridge: '
    brand_input = gets.chomp.to_s
    puts 'location of fridge: '
    location_input = gets.chomp.to_s
    puts 'size of fridge: '
    size_input = gets.chomp.to_i
    puts 'Do you have food in your fridge? (Answer true or false)?:'
    food_input  = gets.chomp
    puts 'Do you have drinks in your fridge? (Answer true or false)?:'
    drink_input  = gets.chomp

 Fridge.create(brand: brand_input, size: size_input, location: location_input, has_food_in_it: food_input, has_drink_in_it: drink_input)
  end
  if user_descision == 3
    puts 'Please enter the id of the fridge you would like to remove'
    fridge_id = gets.chomp.to_i
    # Fridge.find(fridge_id)
    Fridge.find(fridge_id).destroy

  end

end

def checkout_fridge(fridge_id)
  id = fridge_id
  puts 'What fridge do you want to look at? Please enter the id'
  fridge_id == gets.chomps.to_i
  Fridge.find(fridge_id)
  fridge_id(id)
end

#
#     end
#   # if user_descision == 1
#   #   puts 'Food in fridge: '
#
# #   if food_in_fridge = Food.all
# #     p food_in_fridge
# #    # p Food.find_by(name:'Pasta', name: 'Fruit', name:'Pizza')
# # end
#
#   # Find and Print a Fridge
#   puts <<~HEREDOC
#          What would you like to do with the fridge?
#          1. Checkout the Food
#          2. Checkout the Drinks
#          3. Return to fridge Menu
#          select a number:
#        HEREDOC
#   user_descision = gets.chomp.to_i
#   if user_descision == 1
#           puts "View the food in the fridge"
#          checkout_fridge = Food.ids
#          puts 'Select and id of the fridge'
#          pp checkout_fridge
#         elsif
#           user_descision == 2
#           puts "View the drinks in the fridge"
#           run_drink_menu(id)
#         elsif
#           user_descision == 3
#           puts Fridge.ids
#        puts "What fridge do you want to look at?"
#        fridge_id = gets.chomp.to_s
#        puts checkout_fridge(fridgeid)
#         end
#       end
# def run_food_menu(fridge)
#   fridge = fridge
#   puts <<~HEREDOC
#          1. View All Food Items in a specific Firdge
#          2. Add a food item to a fridge
#          3. Eat a food item from a fridge
#          4. Go Back to Fridge Menu
#          Select a number:
#        HEREDOC
#   user_descision = gets.chomp.to_i
# #   if user_descision == 1
# #           puts "Food in fridge"
# #           run_food_menu(food_id)
# #         elsif
# #           user_descision == 2
# #           puts "checkout the drinks"
# #           run_drink_menu(id)
# #         elsif
# #           user_descision == 3
# #           puts Fridge.all
# #        puts "Enter the fridge Id"
# #        fridge_id = gets.chomp.to_i
# #        puts checkout_fridge(fridgeid)
# #         end
# # end
# end
# def run_drink_menu(fridge)
#   fridge = fridge
#   puts <<~HEREDOC
#          1. View all drink items in a specific fridge
#          2. Add a drink item to a fridge
#          3. Consume PART of a drink from a fridge
#          4. Consume ALL of a drink from a fridge
#          5. Go Back to Fridge Menu
#          Select a number:
#        HEREDOC
#   user_descision = gets.chomp.to_i
#   # Your Code Here
# end

run_tracker
