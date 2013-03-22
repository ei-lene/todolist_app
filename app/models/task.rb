class Task < ActiveRecord::Base
  attr_accessible :description, :list_id, :list, :user_ids

  belongs_to :list
  has_many :task_assignments
  has_many :users, through: :task_assignments

end

