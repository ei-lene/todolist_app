class TaskAssignment < ActiveRecord::Base
  attr_accessible :person_id, :task_id
  belongs_to :person
  belongs_to :task
end
