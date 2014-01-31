get '/tag/:name' do
  # Look in app/views/index.erb
  @c_date = Time.now.utc

  @lookup_tag = Tag.where(name: params[:name]).first


  if @lookup_tag == nil
    redirect ('/')
  else
    @cat_posts = @lookup_tag.posts
    erb :category_view
  end
end