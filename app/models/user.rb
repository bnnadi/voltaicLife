class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :avatar, :first_name, :last_name, :profile_name,  :email, :password, :password_confirmation, :remember_me, :full_name
  
    validates :first_name, presence: true

  validates :last_name, presence: true

  validates :profile_name, presence: true,
                           uniqueness: true,
                           format: {
                             with: /[a-zA-Z0-9_-]/,
                             message: 'Must be formatted correctly.'
                           }
  
  has_attached_file :avatar, :styles => {:medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"

 
  has_many :statuses
 
  def full_name
    [first_name, last_name].join(" ")
  end
end
