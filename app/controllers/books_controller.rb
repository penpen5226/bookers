class BooksController < ApplicationController
  def index
    @book = Book.new
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end

  def update
  end

  def create
    book = Book.new(book_paramas)
    book.save
    redirect_to book_path(book.id)
  end

  def destroy
  end

  private

  def book_paramas
    params.require(:book).permit(:title, :body)
  end

end
