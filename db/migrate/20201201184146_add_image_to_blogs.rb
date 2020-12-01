class AddImageToBlogs < ActiveRecord::Migration[5.0]
  # def change
  # end
  def self.up
    add_column :blogs, :image_file_name, :string
    add_column :blogs, :image_content_type, :string
    add_column :blogs, :image_file_size, :integer
    add_column :blogs, :image_updated_at, :datetime
  end
  def self.down
    remove_column :blogs, :image_file_name
    remove_column :blogs, :image_content_type
    remove_column :blogs, :image_file_size
    remove_column :blogs, :image_updated_at

  end
end