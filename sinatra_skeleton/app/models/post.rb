class Post < ActiveRecord::Base

  has_many :categories, :dependent => :destroy
  has_many :tags, through: :categories

  validates :body, :presence => true
  validates :title, :presence => true
  validates :author, :presence => true
  # Remember to create a migration!
end
