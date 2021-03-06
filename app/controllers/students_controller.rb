class StudentsController < ApplicationController
  expose(:student, attributes: :student_params)
  expose(:student_subject_items) { student.subject_items }
  expose(:students) { Student.all }

  def create
    if student.save
      redirect_to student_path(student), notice: I18n.t('shared.created', resource: 'Student')
    else
      render :new
    end
  end

  def index
  end

  def show
    student = Student.find(params[:id])
  end

  def update
    if student.save
      redirect_to student_path(student), notice: I18n.t('shared.updated', resource: 'Student')
    else
      render :edit
    end
  end

  def destroy
    student.destroy
    redirect_to students_path, notice: I18n.t('shared.deleted', resource: 'Student')
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name)
  end

end
