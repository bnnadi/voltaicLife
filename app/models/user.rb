class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 
 
  attr_accessible :email, :password, :password_confirmation, :remember_me, :avatar, :first_name, :last_name, :profile_name,  :full_name
  
  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

  validates :first_name, presence: true
  
  validates :last_name, presence: true
  
  validates :profile_name, presence: true,  uniqueness: true
 
  has_many :statuses
 
  def full_name
    first_name  + " " + last_name
  end
end
