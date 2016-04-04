class Post < ActiveRecord::Base

  belongs_to :author, class_name: :user
  has_many :comments
  has_many :taggings
  has_many :tags, through: :taggings

  validates :title, :content, :author_id, presence: true

end
