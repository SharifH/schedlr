class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(params[:program])
    if @program.save
      flash.now[:success] = "Program successfully created."
      render :show
    else
      flash.now[:error] = "Error, please try creating the Program again."
      render :new
    end
  end

  def show
    @program = Program.find(params[:id])
  end

  def edit
    @program = Program.find(params[:id])    
  end

  def update
    @program = Program.find(params[:id])
    @program.update_attributes(params[:program])
    render :show
  end    

  def destroy
    program = Program.find(params[:id])
    program.delete
    redirect_to programs_path
  end
end
