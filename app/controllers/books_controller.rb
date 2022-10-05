class BooksController < ApplicationController

  def new
  end

  def create
  end

  def index
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
