class RemoveTypeFromWhiskeys < ActiveRecord::Migration
  def change
    remove_column :whiskeys, :type, :string
  end
end
