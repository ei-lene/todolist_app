class AddPermalinkToLists < ActiveRecord::Migration
  def change
    add_column :lists, :permalink, :string
  end
end
