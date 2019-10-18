class AddImageToWhiskeys < ActiveRecord::Migration
  def change
    add_column :whiskeys, :image, :string
  end
end



