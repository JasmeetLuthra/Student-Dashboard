class StudentPdf < Prawn::Document
  def initialize(students)
    super()
    @students = Student.order(created_at: :desc).all
    student_id
  end
 
 def student_id
    table user_id_all
 end

def user_id_all
 [["id","Name", "Dob", "Phone", "Course" ]] +
   @students.map do |stu|
   	if stu.course_id == nil
   		[stu.id, stu.name, stu.dob, stu.phone]
   	else
   		name = Course.find(stu.course_id)
 	[stu.id, stu.name, stu.dob, stu.phone, name.body]
     end
  end
 end
end