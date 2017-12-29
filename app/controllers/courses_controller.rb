class CoursesController < ApplicationController

def index
	@courses = Course.all
	render json: @courses, status: :ok and return
end
def create
Course.create(params[:id])
end

private
def cr_params
	params.require(:course).permit(:body, :course_id)
end

end