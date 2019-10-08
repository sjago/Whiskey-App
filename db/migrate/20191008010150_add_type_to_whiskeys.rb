class AddTypeToWhiskeys < ActiveRecord::Migration
  def change
    add_column :whiskeys, :type, :text
  end
end
