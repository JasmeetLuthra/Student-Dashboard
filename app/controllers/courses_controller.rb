class CoursesController < ApplicationController

def create
Course.create(params[:id])
end

private
def cr_params
	params.require(:course).permit(:body, :course_id)
end
