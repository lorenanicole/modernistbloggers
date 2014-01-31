require 'pry'

class Tag < ActiveRecord::Base

  has_many :categories, :dependent => :destroy
  has_many :posts, through: :categories


 def self.create_tags(params_tags)
    made_tags = []
    params_tags.each do |tag|
        if Tag.where(name: tag.strip) != []
          # binding.pry
          existing_tag = Tag.where(name: tag.strip).first
          # binding.pry
          made_tags << existing_tag
        else
          made_tags << Tag.create(name: tag.strip)
        end
    end
    made_tags
  end
  # Remember to create a migration!
end

