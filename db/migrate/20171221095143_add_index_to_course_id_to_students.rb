class AddIndexToCourseIdToStudents < ActiveRecord::Migration[5.1]
  def change
  	add_index :students, :course_id
  end
end
