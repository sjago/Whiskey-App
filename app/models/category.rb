class Category < ActiveRecord::Base


  has_many :whiskey_categories
  has_many :whiskeys, through: :whiskey_categories


end