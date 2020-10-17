# Seed file
# Hospital.delete_all
# Diet.delete_all
# User.delete_all
# Order.delete_all
# Food.delete_all


# Order

# Order.create(user_id: User.all.sample.id, submitted: true, delivered: false)
# Order.create(user_id: User.all.sample.id, submitted: true, delivered: true)
# Order.create(user_id: User.all.sample.id, submitted: true, delivered: false)
# Order.create(user_id: User.all.sample.id)


# Hospital.create(name:"LIJ Northwell", health_system: "Northwell", city: "Queens")
# Hospital.create(name:"NewYork-Presbyterian / Columbia University Medical Center", health_system: "NewYork-Presbyterian", city: "New York")
# Hospital.create(name:"Peconic Bay Medical Center", health_system: "Northwell", city: "Riverhead")
# Hospital.create(name:"NewYork-Presbyterian Lawrence Hospital", health_system: "NewYork-Presbyterian", city: "Bronxville")


# Allergy.create(name: "Dairy")
# Allergy.create(name: "Egg")
# Allergy.create(name: "Gluten")
# Allergy.create(name: "Grain")
# Allergy.create(name: "Peanut")
# Allergy.create(name: "Seafood")
# Allergy.create(name: "Sesame")
# Allergy.create(name: "Shellfish")
# Allergy.create(name: "Soy")
# Allergy.create(name: "Wheat")


# User.create(password: "10001" ,name: "Sam", dob: "111111", department: "18N", room: "30S", hospital_id: Hospital.all.sample.id, diet: "Regular")
# User.create(password: "10002" ,name: "Kate", dob: "111111", department: "17N", room: "20D", hospital_id: Hospital.all.sample.id, diet: "Regular")
# User.create(password: "10003" ,name: "Martin", dob: "111111", department: "16S", room: "21W", hospital_id: Hospital.all.sample.id, diet: "Regular")
# User.create(password: "10004" ,name: "Ben", dob: "111111", department: "15N", room: "18D", hospital_id: Hospital.all.sample.id, diet: "Cardiac")
# User.create(password: "10005" ,name: "Tim", dob: "111111", department: "5W", room: "27W", hospital_id: Hospital.all.sample.id, diet: "Cardiac")
# User.create(password: "10006" ,name: "Tom", dob: "111111", department: "4W", room: "28D", hospital_id: Hospital.all.sample.id, diet: "Cardiac")
# User.create(password: "10007" ,name: "James", dob: "111111", department: "3N", room: "40S", hospital_id: Hospital.all.sample.id, diet: "Puree")
# User.create(password: "10008" ,name: "Mary", dob: "111111", department: "3S", room: "33S", hospital_id: Hospital.all.sample.id, diet: "Low Sodium")
# User.create(password: "10009" ,name: "Susan", dob: "111111", department: "15N", room: "27S", hospital_id: Hospital.all.sample.id, diet: "Low Sodium")
# User.create(password: "10010" ,name: "Shirley", dob: "111111", department: "14W", room: "15W", hospital_id: Hospital.all.sample.id, diet: "Diabetic")

# 30.times do
#     UserAllergy.create(allergy_id: Allergy.all.sample.id, user_id: User.all.sample.id)
# end


# Food.food_info("245589") #pancake
# Food.food_info("481679")
# Food.food_info("677465")
# Food.food_info("211364") #omelet
# Food.food_info("223843")
# Food.food_info("224648")
# Food.food_info("224648") #egg
# Food.food_info("465004")
# Food.food_info("689961") #bakery
# Food.food_info("548574")
# Food.food_info("482104")
# Food.food_info("246700")
# Food.food_info("245662")
# Food.food_info("65432")
# Food.food_info("273654") 
# Food.food_info("136507") #hot entree
# Food.food_info("911369") 
# Food.food_info("86418") 
# Food.food_info("997798") 
# Food.food_info("824941") 
# Food.food_info("667231") 
# Food.food_info("952139") 
# Food.food_info("720165") #meatloaf
# Food.food_info("224227") 
# Food.food_info("719921") #pasta
# Food.food_info("711410") 
# Food.food_info("211286") 
# Food.food_info("611746") 
# Food.food_info("246916") #burger
# Food.food_info("245166") 
# Food.food_info("246009") 
# Food.food_info("219957") 
# Food.food_info("74172") #chicken
# Food.food_info("74202") 
# Food.food_info("94640") 
# Food.food_info("723984") #salad
# Food.food_info("809898") 
# Food.food_info("494212") 
# Food.food_info("695798") 
# Food.food_info("480459") #dessert
# Food.food_info("480266") 
# Food.food_info("575765") 
# Food.food_info("489721") 


# Nutrition
# Nutrition.nutrition_info("481679")
# FoodNutrition.create(food_id: 245589, nutrition_id: 245589)

# UserFood.create(user_id: 2, food_id: 245589)
# UserFood.create(user_id: 2, food_id: 997798)
# UserFood.create(user_id: 2, food_id: 723984)
# UserFood.create(user_id: 2, food_id: 224648)

20.times do
    UserIngredient.create(user_food_id: UserFood.first.id, ingredient_id: Ingredient.all.sample.id)
end
