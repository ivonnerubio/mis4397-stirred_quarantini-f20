class CreateAbouts < ActiveRecord::Migration[5.0]
  def change
    create_table :abouts do |t|
      t.string :title
      t.string :mission_statement
      t.string :journal_description
      t.string :editorial_board
      t.string :string
      t.string :editorial_name
      t.string :editorial_position
      t.string :editorial_about_me

      t.timestamps
    end
  end
end
