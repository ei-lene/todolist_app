class CreateTaskAssignments < ActiveRecord::Migration
  def change
    create_table :task_assignments do |t|
      t.integer :person_id
      t.integer :task_id

      t.timestamps
    end
  end
end
