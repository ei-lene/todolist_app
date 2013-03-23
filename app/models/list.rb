class List < ActiveRecord::Base
  attr_accessible :name, :permalink
  has_many :tasks

  def to_param
    permalink
  end

end
