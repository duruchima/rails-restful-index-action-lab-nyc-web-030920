class StudentsController < ApplicationController
    def index
        @students = Student.all
    end
    def show
        @student = Student.find(params[:id])
    end

    private
    def student_params
    params.require(:sea).permit(:first_name, :last_name)
  end
end