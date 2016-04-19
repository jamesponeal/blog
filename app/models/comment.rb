class Comment < ActiveRecord::Base

  belongs_to :post
  belongs_to :author, class_name: :user

  validates :content, presence: true

end
