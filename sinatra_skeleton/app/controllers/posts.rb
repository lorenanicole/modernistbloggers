get '/create' do
  erb :create_post
end

post '/create' do

  @tags = params[:post].values
  @tags = @tags[0].split(",")

  ##["ponies", "monsters", "water"]

  # puts "LOG #{@tags}"
  post = Post.create(title: params[:title],
              author: params[:author],
              body: params[:body])
  new_tags = Tag.create_tags(@tags)

  post.tags = new_tags
  post.save

  # Post.create(title: params[:title],
  #             author: params[:author],
  #             body: params[:body]).
  # tags.create([ { name: @tags[1] }])

# b.each do |i|
# 2.0.0-p247 :081 >     output << Hash["name", i]
# 2.0.0-p247 :082?>   end


  # Post.create(title: "howdy", body: "howdy howdy howdy weee", author: "country man").
  # tags.create([{name: "country"}, {name: "linedancing"}])

  redirect('/')
end

get "/post/:post_id" do
  @view_post = Post.find_by_id(params[:post_id])
  erb :post_view
end
