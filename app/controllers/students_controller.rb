class StudentsController < ApplicationController

  def index
    students = Student.all.where(self.first_name==params[:id] || self.last_name==params[:id])
    render json: students
  end

  def info 
    info = Student.find(params[:id])
    render json: info
  end
end
