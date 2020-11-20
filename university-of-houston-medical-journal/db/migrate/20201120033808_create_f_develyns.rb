class CreateFDevelyns < ActiveRecord::Migration[5.0]
  def change
    create_table :f_develyns do |t|

      t.timestamps
    end
  end
end
