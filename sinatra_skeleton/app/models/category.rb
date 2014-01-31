class Category < ActiveRecord::Base

  belongs_to :post
  belongs_to :tag

  # def self.create_category(post_params, tag_params)
  #   Post.create(title: params[:title],
  #               author: params[:author],
  #               body: params[:body])
  #   Tag.create(name:)
  # Remember to create a migration!
end
