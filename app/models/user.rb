class User < ActiveRecord::Base
  has_secure_password

  has_many :posts, foreign_key: :author_id
  has_many :comments, foreign_key: :author_id

  has_attached_file :image, :styles => {:small => "200x200", :large => "500x500"}

  validates_attachment :image, :content_type => {:content_type => /^image\/(jpeg|png|gif|tiff)$/ }

  validates :username, presence: true, uniqueness: true
  validates :first_name, :last_name, :admin, presence: true


end
