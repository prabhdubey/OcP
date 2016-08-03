json.array!(@blogs) do |blog|
  json.extract! blog, :id, :title, :author, :image, :likes, :body, :user_id
  json.url blog_url(blog, format: :json)
end
