class CreateFDcarries < ActiveRecord::Migration[5.0]
  def change
    create_table :f_dcarries do |t|

      t.timestamps
    end
  end
end
