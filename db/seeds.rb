Fridge.destroy_all

maytag = Fridge.create(location: 'Kitchen', brand: 'MayTag', size: 200, has_food_in_it: true, has_drink_in_it: true)
ge = Fridge.create(location: 'Garage', brand: 'G.E.', size: 150, has_food_in_it: true, has_drink_in_it: true)

Food.create(fridge_id: maytag.id,name: 'Pasta',weight: 10,is_vegan: true,time_put_in_fridge: Date.today)
Food.create(fridge_id: maytag.id,name: 'Fruit',weight: 15,is_vegan: true,time_put_in_fridge: Date.today)
Food.create(fridge_id: ge.id,name: 'Pizza',weight: 30,is_vegan: false,time_put_in_fridge: Date.today)
Food.create(fridge_id: ge.id,name: 'Egg Salad',weight: 800,is_vegan: false,time_put_in_fridge: Date.today)

Drink.create(fridge_id: maytag.id, name: "Beer", size: 128, alcoholic: true)
Drink.create(fridge_id: maytag.id, name: "Soda", size: 28, alcoholic: false)
Drink.create(fridge_id: ge.id, name: "Vodka", size: 128, alcoholic: true)
Drink.create(fridge_id: ge.id, name: "water", size: 28, alcoholic: false)
