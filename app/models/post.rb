class Post < ActiveRecord::Base

	# => ASSOCIATIONS

	has_many :comments

	# => VALIDATIONS

	validates :body, presence: true
	validates :title, presence: true

end
