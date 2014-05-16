class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { minimum: 140 }
end
