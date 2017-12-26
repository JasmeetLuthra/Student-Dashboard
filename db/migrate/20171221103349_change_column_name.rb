class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :students, :select, :course_id
  end
end
