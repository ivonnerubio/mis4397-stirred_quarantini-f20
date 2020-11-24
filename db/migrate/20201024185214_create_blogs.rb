class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :string
      t.string :recent_posts
      t.string :text
      t.string :article_title
      t.string :string
      t.string :archives
      t.string :text
      t.integer :year
      t.string :post_title
      t.string :string
      t.string :body
      t.string :text
      t.string :author_name
      t.string :string
      t.string :authorID
      t.string :string
      t.string :post_type
      t.string :string
      t.string :comment_section
      t.string :text
      t.string :ad_space
      t.string :string

      t.timestamps
    end
  end
end
