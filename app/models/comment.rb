class Comment < ActiveRecord::Base

  belongs_to :user
  belongs_to :post

  def to_s
    content
  end

end
