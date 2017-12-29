class StudentsController < ApplicationController
 # skip_before_action	 :verify_authenticity_token, :only => [:searchh]
 protect_from_forgery with: :null_session
 respond_to :html, :js

 def index
	@students = Student.all
	render json: @students, status: :ok and return
 end

def show
 @student = Student.find(params[:id])

end



def create
	Student.create(stud_params)
	respond_to do |format|
		format.html { redirect_to root_path }
		format.js
     end
end

 

 def searchh
@stud =  Student.search(params[:search_string])
render json: @stud, status: :ok and return
@courses = Course.all
render json: @courses, status: :ok and return
 	
 end

 def searchp
 	@stud =  Student.searchp(params[:sear])
@courses = Course.all
end

def searchc
 	@stud =  Student.searchc(params[:searc])
@courses = Course.all
end


 private
def stud_params
	params.require(:student).permit(:name, :dob, :phone, :course_id, :image, :youtube_id)
end
end
