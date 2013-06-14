class User < ActiveRecord::Base
  attr_accessible :name, :email, :age

  validates :name, :presence => true, :allow_blank => false
  validates :email, :presence => true, :allow_blank => false
end
