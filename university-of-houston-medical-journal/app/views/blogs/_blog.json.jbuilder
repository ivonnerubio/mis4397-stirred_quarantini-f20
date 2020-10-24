json.extract! blog, :id, :title, :string, :recent_posts, :text, :article_title, :string, :archives, :text, :year, :post_title, :string, :body, :text, :author_name, :string, :authorID, :string, :post_type, :string, :comment_section, :text, :ad_space, :string, :created_at, :updated_at
json.url blog_url(blog, format: :json)
