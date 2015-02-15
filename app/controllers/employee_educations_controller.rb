class EmployeeEducationsController < ApplicationController
  before_action :set_employee_education, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @employee_educations = EmployeeEducation.all
    respond_with(@employee_educations)
  end

  def show
    respond_with(@employee_education)
  end

  def new
    @employee_education = EmployeeEducation.new
    respond_with(@employee_education)
  end

  def edit
  end

  def create
    @employee_education = EmployeeEducation.new(employee_education_params)
    @employee_education.save
    respond_with(@employee_education)
  end

  def update
    @employee_education.update(employee_education_params)
    respond_with(@employee_education)
  end

  def destroy
    @employee_education.destroy
    respond_with(@employee_education)
  end

  private
    def set_employee_education
      @employee_education = EmployeeEducation.find(params[:id])
    end

    def employee_education_params
      params.require(:employee_education).permit(:employee_id, :education_id)
    end
end