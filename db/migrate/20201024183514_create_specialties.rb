class CreateSpecialties < ActiveRecord::Migration[5.0]
  def change
    create_table :specialties do |t|
      t.string :title
      t.string :string
      t.string :category_title
      t.string :string
      t.string :category_description
      t.string :text

      t.timestamps
    end
  end
end
