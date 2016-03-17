class BooksController < ApplicationController
  def show
    @book = resource
    sleep 1
  end

  def edit
    @book = resource
  end

  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def purchase
    @book = Book.find(params[:id])
    @book.quantity -= 1
    @book.save

    redirect_to @book
  end

  def update
    resource.update(book_params)
    redirect_to(resource)
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to books_path
  end

private

  def resource
    Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :author, :quantity)
  end

end
