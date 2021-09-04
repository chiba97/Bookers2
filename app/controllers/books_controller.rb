class BooksController < ApplicationController
  before_action :authenticate_user!
  
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to book_path(@book.id)
  end
  
  def index
    @user = current_user
    @book = Book.new
    @books = Book.all
  end
  
  def show
    @book_ = Book.new
    @book = Book.find(params[:id])
    @user = current_user
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
