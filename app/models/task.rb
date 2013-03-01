class Task < ActiveRecord::Base
  attr_accessible :description, :list_id

  def to_param
    self.list_id
  end

  belongs_to :list
end
