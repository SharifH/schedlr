class SessionsController < ApplicationController
 def index
    @sessions = Session.all
  end

  def new
    @session = Session.new
  end

  def create
    @session = Session.new(params[:session])
    if @session.save
      flash.now[:success] = "Session successfully created."
      render :show
    else
      flash.now[:error] = "Error, please try creating the session again."
      render :new
    end
  end

  def show
    @session = Session.find(params[:id])
  end

  def edit
    @session = Session.find(params[:id])    
  end

  def update
    @session = Session.find(params[:id])
    @session.update_attributes(params[:session])
    render :show
  end    

  def destroy
    session = Session.find(params[:id])
    session.delete
    redirect_to sessions_path
  end
end
