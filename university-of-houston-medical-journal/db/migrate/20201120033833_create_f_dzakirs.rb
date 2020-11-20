class CreateFDzakirs < ActiveRecord::Migration[5.0]
  def change
    create_table :f_dzakirs do |t|

      t.timestamps
    end
  end
end
