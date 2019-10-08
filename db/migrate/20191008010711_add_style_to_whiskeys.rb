class AddStyleToWhiskeys < ActiveRecord::Migration
  def change
    add_column :whiskeys, :style, :text
  end
end
