class User < ActiveRecord::Base
  attr_accessible :display_name, :name, :email, :password , :password_confirmation ,:role, :email_confirmation
  attr_accessor :email_confirmation
  has_many :task_assignments
  has_many :tasks, through: :task_assignments

  has_secure_password
  # No need to validate presence of password or password_confirmation as that will be validated via has_secure_password
  
  validates :display_name, :name, :email, :presence => { :on => :create }
  validates_uniqueness_of :email, :display_name  
  validates_format_of :email, :with => /^[-a-z-A-Z-0-9~!$%^&*_=+}{\'?]+(\.[-a-z0-9~!$%^&*_=+}{\'?]+)*@([a-z0-9_][-a-z0-9_]*(\.[-a-z0-9_]+)*\.(aero|arpa|biz|com|coop|edu|gov|info|int|mil|museum|name|net|org|pro|travel|mobi|[a-z][a-z])|([0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}))(:[0-9]{1,5})?$/

  validates :name, :length => { :minimum => 3 }
  validates_format_of :name, :with => /[a-zA-Z]/

  validates :password, :length => {:minimum => 6 }, :on => :create

end
