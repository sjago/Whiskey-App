class WhiskeyCategory < ActiveRecord::Base

  belongs_to :whiskey
  belongs_to :category

end