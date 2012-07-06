class Order < ActiveRecord::Base
  belongs_to :Users
  attr_accessible :Bread_name, :By, :Cheese_name, :Topping_1, :Topping_2, :Topping_3, :Type_name
end
