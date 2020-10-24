class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.float :article_rating
      t.text :abstract
      t.text :introduction
      t.text :case_presentation
      t.text :discussion
      t.text :conclusion
      t.text :appendice
      t.text :references
      t.text :disclosures_agreements
      t.text :forum_comments
      t.string :categories
      t.string :keywords
      t.string :article_title
      t.string :article_author
      t.string :string
      t.string :article_info
      t.float :figures
      t.integer :metrics
      t.string :pdf_download
      t.string :linked_in
      t.string :twitter
      t.string :facebook
      t.string :whats_app
      t.string :email

      t.timestamps
    end
  end
end
