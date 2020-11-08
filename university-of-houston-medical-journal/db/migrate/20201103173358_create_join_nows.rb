class CreateJoinNows < ActiveRecord::Migration[5.0]
  def change
    create_table :join_nows do |t|
      t.string :title
      t.string :string
      t.string :data_text
      t.string :text

      t.timestamps
    end
  end
end
