class EmployeesController < ApplicationController
def index
    @employees = Employee.all
end
def new
    @employee = Employee.new
end
def create
    strong_params = params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    @employee = Employee.create(strong_params)
    redirect_to employee_path(@employee)
    
end

def show
    @employee = Employee.find_by(id: params[:id])
end

def edit
    @employee = Employee.find_by(id: params[:id])
end

def update
    @employee = Employee.find_by(id: params[:id])
    strong_params = params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    @author = Employee.create(strong_params)
    redirect_to employees_path
end


end
