class BooksController < ApplicationController
 respond_to :json

  def index
    respond_with Book.all
  end

  def create
    book = Book.new(book_params)
    if book.save
      respond_with book
    else
      respond_with book, :status => 422
    end
  end

private

  def book_params
    params.require(:book).permit(:title, :author_name)
  end  
end
