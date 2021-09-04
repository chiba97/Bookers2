class UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @users = User.all
    @book = Book.new
    @user = current_user
  end
  
  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end
  
  def edit
  end
  
  def update
  end
end
