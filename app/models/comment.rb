class Comment < ActiveRecord::Base
  belongs_to :article

  validates :content, presence: true
  validates :content, length: { minimum: 140 }
end
