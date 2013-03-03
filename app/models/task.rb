class Task < ActiveRecord::Base
  attr_accessible :description, :list_id, :list
  belongs_to :list
end
