class CreateSignIns < ActiveRecord::Migration[5.0]
  def change
    create_table :sign_ins do |t|
      t.string :title
      t.string :string
      t.string :web_data
      t.string :text

      t.timestamps
    end
  end
end
