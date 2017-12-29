class HomeController < ApplicationController


 def index
  	@students = Student.order(created_at: :desc).all
    @courses = Course.all
    
  end
 
  def aj
 	@courses = Course.all
 	end

 def act
 	@students = Student.order(created_at: :desc).all
 	respond_to do |format|
 		format.html
 		format.pdf do
 			pdf = StudentPdf.new(@students)

 			send_data pdf.render, filename: 'students.pdf', type: 'application/pdf', disposition: "inline"
 		end
 	end

 end
 

end
