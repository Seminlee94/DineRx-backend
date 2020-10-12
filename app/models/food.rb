require 'pry'
require 'json'
require "dotenv"
require "rest-client"
require "httparty"
Dotenv.load


class Food < ApplicationRecord
    has_many :hospital_foods
    has_many :hospitals, through: :hospital_foods
    has_many :user_foods
    has_many :users, through: :user_foods
    has_many :food_ingredients
    has_many :ingredients, through: :food_ingredients
    has_many :food_nutritions
    has_many :nutritions, through: :food_nutritions

    # @@key = ENV["SPOON_API_KEY"]
    @@key = ENV["SPOON_API"]

    def self.recipe_info(name)
        response = HTTParty.get("https://api.spoonacular.com/recipes/search?query=#{name}&apiKey=#{@@key}")
        result = JSON.parse(response.body)
        # binding.pry
    end

    def self.food_info(id)
        # response = HTTParty.get("https://api.spoonacular.com/recipes/#{id}/information?includeNutrition=true&apiKey=#{@@key}")
        # result = JSON.parse(response.body)
        # # binding.pry

        # food = Food.find_or_create_by(id: id)
        # food.name = result["title"]
        # food.image = result["image"]
        # food.category = "dessert"
        # food.description = result["summary"]
        # food.regular = true
        # food.cardiac = true
        # food.breakfast = true
        # food.lunch = true
        # food.dinner = true
        # food.save

        # response_nutrition = HTTParty.get("https://api.spoonacular.com/recipes/#{id}/nutritionWidget.json?apiKey=#{@@key}")
        # result = JSON.parse(response_nutrition.body)
        # result_total = result["bad"] + result["good"]

        # result_total.map do |n|
        #     nutrition = Nutrition.create(title: n["title"], amount: n["amount"] )
        #     nutrition.save
        #     food_nutrition = FoodNutrition.create(food_id: food.id, nutrition_id: nutrition.id)
        #     food_nutrition.save
        # end

        response_ingredient = HTTParty.get("https://api.spoonacular.com/recipes/#{id}/ingredientWidget.json?apiKey=#{@@key}")
        result = JSON.parse(response_ingredient.body)
        # binding.pry

        result["ingredients"].map do |n|
            amount = (n["amount"]["metric"]["value"]).to_s + n["amount"]["metric"]["unit"]
            ingredient = Ingredient.create(name: n["name"], image: n["image"], amount: amount)
            ingredient.save
            food_ingredient = FoodIngredient.create(food_id: id, ingredient_id: ingredient.id)
            food_ingredient.save
        # amount = "#{ingredient_row['amount']['us']['value']} #{ingredient_row['amount']['us']['unit']}"
        # IngredientRecipe.create(recipe_id: recipe.id, ingredient_id: ingredient.id, amount: amount)
        end

    end




end
