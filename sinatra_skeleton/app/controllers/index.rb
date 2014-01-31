get '/' do
  # Look in app/views/index.erb
  @all_posts = Post.all
  @date = Time.now.utc
  @all_tags = Tag.all
  erb :index
end
