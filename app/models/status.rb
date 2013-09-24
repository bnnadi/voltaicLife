class Status < ActiveRecord::Base
  attr_accessible :content, :user_id
  belongs_to :user
  has_attached_file :avatar
end
