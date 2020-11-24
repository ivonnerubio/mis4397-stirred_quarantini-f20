class CreateFDowais < ActiveRecord::Migration[5.0]
  def change
    create_table :f_dowais do |t|

      t.timestamps
    end
  end
end
