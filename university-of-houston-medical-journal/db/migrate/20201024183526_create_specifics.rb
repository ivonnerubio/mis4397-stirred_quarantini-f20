class CreateSpecifics < ActiveRecord::Migration[5.0]
  def change
    create_table :specifics do |t|
      t.string :Specialty
      t.string :category_name
      t.string :string
      t.string :description
      t.string :text
      t.string :data_type
      t.string :string
      t.string :data_title
      t.string :string
      t.text :description
      t.string :authors
      t.string :string
      t.string :authorID
      t.string :string

      t.timestamps
    end
  end
end
