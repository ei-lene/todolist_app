class Task < ActiveRecord::Base
  attr_accessible :description, :list_id, :list, :person_ids
  belongs_to :list
  has_many :task_assignments
  has_many :persons, through: :task_assignments
end
