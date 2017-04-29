class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  do_not_validate_attachment_file_type :image
	validates :title, presence: true, length: {maximum: 100}
	validates :body,  presence: true
end
