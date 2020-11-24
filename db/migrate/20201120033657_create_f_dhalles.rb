class CreateFDhalles < ActiveRecord::Migration[5.0]
  def change
    create_table :f_dhalles do |t|

      t.timestamps
    end
  end
end
