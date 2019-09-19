class AddWhiskeys < ActiveRecord::Migration
  def change
      create_table :whiskeys do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
