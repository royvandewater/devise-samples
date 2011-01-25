class EmployeesController < ApplicationController
  before_filter :authenticate_employee!
  before_filter :find_employee, :except => [:index]
  
  def index
    @employees = Employee.all
  end

  def show
  end
  
  def edit
  end

  def update
    if @employee.update_attributes(params[:user])
      redirect_to @employee, :notice => 'Employee was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @employee.destroy

    redirect_to(users_url) 
  end

  protected
  def find_employee
    @employee = Employee.find(params[:id])
  end
end
