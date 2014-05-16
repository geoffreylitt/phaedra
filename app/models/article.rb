class Article < ActiveRecord::Base
  belongs_to :section
  belongs_to :user
  has_many :comments

  validates :title, presence: true
  validates :link, presence: true
  validates :critique, presence: true

  validates :critique, length: { minimum: 140 }

  validates :link, url: true
end
