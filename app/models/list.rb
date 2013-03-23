class List < ActiveRecord::Base
  attr_accessible :name, :permalink, :user_id
  has_many :tasks
  belongs_to :user

  def to_param
    permalink
  end

end
