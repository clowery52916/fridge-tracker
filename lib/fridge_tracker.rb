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
    pp Fridge.all
    fridge_id = gets.chomp.to_i
    puts checkout_fridge(fridge_id)
  elsif user_descision == 2
    puts 'Brand name of Fridge: '
    brand_input = gets.chomp
    puts 'location of fridge: '
    location_input = gets.chomp
    puts 'size of fridge: '
    size_input = gets.chomp.to_i
    puts 'Do you have food in your fridge? (Answer true or false)?:'
    food_input  = gets.chomp
    puts 'Do you have drinks in your fridge? (Answer true or false)?:'
    drink_input  = gets.chomp
    fridge_input = Fridge.create(brand: brand_input, size: size_input, location: location_input, has_food_in_it: food_input, has_drink_in_it: drink_input)
  elsif user_descision == 3
    puts 'Please enter the id of the fridge you would like to remove'
    fridge_id = gets.chomp.to_i
    Fridge.find(fridge_id).destroy
    puts 'fridge has been deleted'
  else
    puts'the id you have chosen, no loner exists. Please select a correct Id number'

  end

end

def checkout_fridge(fridge_id)
  id = fridge_id

  # Find and Print a Fridge
  puts <<~HEREDOC
         What would you like to do with the fridge?
         1. Checkout the Food
         2. Checkout the Drinks
         3. Return to fridge Menu
         select a number:
       HEREDOC
  user_descision = gets.chomp.to_i
  if user_descision == 1
         puts "View the food in the fridge"
         pp run_food_menu(id)
        elsif
          user_descision == 2
          puts "View the drinks in the fridge"
          pp run_drink_menu(id)
        elsif
          user_descision == 3
          pp Fridge.all
       puts "What fridge do you want to look at? Please use Id number"
       fridge_id = gets.chomp.to_i
       puts checkout_fridge(fridge_id)
        end
      end
    def run_food_menu(fridge)
          fridge = fridge

  puts <<~HEREDOC
         1. View All Food Items in a specific Fridge
         2. Add a food item to a fridge
         3. Eat a food item from a fridge
         4. Go Back to Fridge Menu
         Select a number:
       HEREDOC
     end
  user_descision = gets.chomp.to_i
  if user_descision == 1
          puts "View Food in fridge"
        pp Fridge.find(fridge).foods.all
        elsif
          user_descision == 2
          puts "Add a food item to the fridge"
          puts 'What is the new items name?'
          name = gets.chomp
          puts 'How much does this item weigh?'
          weight = gets.chomp.to_i
          puts 'Is this item vegan friendly?'
          is_vegan = gets.chomp
          puts 'Please enter when this item was added to the fridge, we would not want anyone getting sick!'
          time_put_in_fridge = gets.chomp.to_i
          added_food = Fridge.find(fridge_id).foods.create(name: name, weight: weight, is_vegan: vegan, time_put_in_fridge: date)
          puts pp added_food
        else
          user_descision == 3
          # puts Fridge.find(fridge).foods.all
          puts "Remove an item from the fridge, grab it by the Id!"
           removed_food = gets.chomp.to_i
           Fridge.find(fridge_id).foods.find(removed_food).destroy

    end

def run_drink_menu(fridge)
  fridge = fridge
  puts <<~HEREDOC
         1. View all drink items in a specific fridge
         2. Add a drink item to a fridge
         3. Consume PART of a drink from a fridge
         4. Consume ALL of a drink from a fridge
         5. Go Back to Fridge Menu
         Select a number:
       HEREDOC
  user_descision = gets.chomp.to_i
  # Your Code Here
end

run_tracker
