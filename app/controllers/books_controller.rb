class BooksController < ApplicationController

  def new
    @book = Book.new(book_params)
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to books_path
    else
        render :new
    end
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def destory
    @book = Book.find(params[:id])
    book.destory
    redirect_to books_path
  end

  def index
    @books = Book.all
    @book = Book.new(book_params)
  end

  private

  def book_params
    params.permit(:title,:body)
  end
end
