class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
   t.string :name, null: false
      t.string :dob, null: false
      t.string :phone, null: false
      t.string :select, null: false
     
      t.timestamps null: false
    end
  end
end
