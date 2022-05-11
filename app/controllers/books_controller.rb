class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    book = Book.new(book_paramas)
    book.save
    redirect_to '/books'
  end

  def destroy
  end

  private

  def book_paramas
    params.require(:book).permit(:title, :body)
  end

end
