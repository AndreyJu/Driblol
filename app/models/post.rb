class Post < ActiveRecord::Base
	belongs_to :user
  has_many :comments
  has_attached_file :image, styles: { medium: "500x300#", small: "250x150>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
