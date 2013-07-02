class UsersController < ApplicationController
  #load_and_authorize_resource
  
  def index
    @user=User.all
  end

  def new
    @user=User.new
    @user.profile=Profile.new
    @user.profile.endereco=Endereco.new
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'user was successfully created.' }
        format.json { render action: 'index', status: :created, location: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user, status: :unprocessable_entity }
      end
    end
  end
  def show
    redirect_to :action => "index"
  end
  
  def edit
    @user = User.find(params[:id])
  end
  def update
     @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
end
