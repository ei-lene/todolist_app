class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :display_name
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :role
      t.timestamps
    end
  end
end
