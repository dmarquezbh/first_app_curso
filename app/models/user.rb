class User < ActiveRecord::Base
  attr_accessible :name, :email, :age, :gender

  MALE = 1
  FEMALE = 2
  OTHER = 3

  validates :name, :presence => true, :allow_blank => false
  validates :email, :presence => true, :allow_blank => false
  validates_uniqueness_of :email
  validates :gender, :presence => true, :if => :adulthood
  

  def adulthood
    self.age.present? and age >= 18
  end
end
