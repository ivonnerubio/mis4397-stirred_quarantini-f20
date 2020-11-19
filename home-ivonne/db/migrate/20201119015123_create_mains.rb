class CreateMains < ActiveRecord::Migration[5.0]
  def change
    create_table :mains do |t|
      t.string :text

      t.timestamps
    end
  end
end
