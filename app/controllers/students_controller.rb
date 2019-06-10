class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @schools = School.all
  end

  def create
    @student = Student.create(student_params)
    redirect_to student_path(@student.id)
  end

  def delete
    @student = Student.find(params[:id])
    @school = @student.school
    @student.delete
    redirect_to school_path(@school)
  end

  def edit
    @student = Student.find(params[:id])
    @schools = School.all
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path @student
  end

  private

  def student_params
    params.require(:students).permit(:name, :age, :school_id)
  end

end
