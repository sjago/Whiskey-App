class Whiskey < ActiveRecord::Base

	validates :name, presence: true
  validates :description, presence: true

  has_many :comments

  has_many :whiskey_categories
  has_many :categories, through: :whiskey_categories

  mount_uploader :image, ImageUploader

  

end