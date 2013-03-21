class ChangePeopleTable < ActiveRecord::Migration
  def up
    add_column :people, :slug, :string
    remove_column :people, :role, :string
    add_column :people, :role, :integer
  end

  def down
    remove_column :people, :slug, :string
    remove_column :people, :role, :integer
    add_column :people, :role, :string
  end
end
