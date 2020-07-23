class AddSlugToWhiskeys < ActiveRecord::Migration
  def change
    add_column :whiskeys, :slug, :string
  end
end
