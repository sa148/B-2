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

  def index
    @books = Book.all
    @book = Book.new(book_params)
  end

  private

  def book_params
    params.permit(:title,:body)
  end
end
