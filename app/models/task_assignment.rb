class TaskAssignment < ActiveRecord::Base
  attr_accessible :user_id, :task_id
  belongs_to :user
  belongs_to :task
end
