class Person < ActiveRecord::Base
  attr_accessible :name, :role
  has_many :task_assignments
  has_many :tasks, through: :task_assignments

  # def to_param
  #   slug
  # end
end
