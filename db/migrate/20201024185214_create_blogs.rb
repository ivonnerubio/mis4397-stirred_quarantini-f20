class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :body
      t.string :image_url
      t.string :author_name
      t.string :post_type

      t.timestamps
    end
  end
end
