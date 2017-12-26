class StudentsController < ApplicationController
 skip_before_action	 :verify_authenticity_token, :only => [:searchh]
def show
@student = Student.find(params[:id])

end

def create
	Student.create(stud_params)
     redirect_to root_path
end

 def searchh
@stud =  Student.search(params[:search])
@courses = Course.all
 	
 end

 private
def stud_params
	params.require(:student).permit(:name, :dob, :phone, :course_id, :image, :youtube_id)
end
end
