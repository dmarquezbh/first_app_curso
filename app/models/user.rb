class User < ActiveRecord::Base
  attr_accessible :name, :email, :age, :gender

  MALE = 1
  FEMALE = 2
  OTHER = 3

  validates :name, :presence => true, :allow_blank => false
  validates :email, :presence => true, :allow_blank => false
end
