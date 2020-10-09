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

    @@key = ENV["SPOON_API_KEY"]

    def self.recipe_info(name)
        response = HTTParty.get("https://api.spoonacular.com/recipes/search?query=#{name}&apiKey=#{@@key}")
        result = JSON.parse(response.body)
        # binding.pry
    end

    def self.food_info(id)
        response = HTTParty.get("https://api.spoonacular.com/recipes/#{id}/information?includeNutrition=true&apiKey=#{@@key}")
        result = JSON.parse(response.body)
        # binding.pry

        food = Food.find_or_create_by(id: id)
        food.name = result["title"]
        food.image = result["image"]
        food.category = "dessert"
        food.description = result["summary"]
        # food.regular = true
        food.cardiac = true
        food.breakfast = true
        food.lunch = true
        food.dinner = true
        food.save


    end


    # Food.recipe_info(francaise)


end
