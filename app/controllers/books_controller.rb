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
  end

  def destroy
  end

end
