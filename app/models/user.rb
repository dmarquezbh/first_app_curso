class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :name, :email, :age, :gender

  MALE = 1
  FEMALE = 2
  OTHER = 3

  validates :name, :presence => true, :allow_blank => false
  validates :email, :presence => true, :allow_blank => false
  validates_uniqueness_of :email
  validates :gender, :presence => true, :if => :adulthood
  
  has_many :bills, :dependent => :destroy

  def adulthood
    self.age.present? and age >= 18
  end
end
