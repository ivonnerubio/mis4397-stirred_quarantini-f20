class CreateMedicalStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :medical_students do |t|
      t.string :name
      t.string :education
      t.text :background
      t.text :award
      t.text :certification

      t.timestamps
    end
  end
end
