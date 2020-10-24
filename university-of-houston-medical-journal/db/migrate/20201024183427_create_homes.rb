class CreateHomes < ActiveRecord::Migration[5.0]
  def change
    create_table :homes do |t|
      t.string :title
      t.string :categories
      t.string :category_name
      t.string :article_title
      t.text :article_description
      t.string :date_published

      t.timestamps
    end
  end
end
