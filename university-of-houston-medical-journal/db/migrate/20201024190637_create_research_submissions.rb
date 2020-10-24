class CreateResearchSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :research_submissions do |t|
      t.string :page_title
      t.string :string
      t.string :submission_title
      t.string :string
      t.string :body_of_submission
      t.string :text
      t.string :comments
      t.string :text
      t.string :authorID
      t.string :string
      t.string :author_name
      t.string :string

      t.timestamps
    end
  end
end
