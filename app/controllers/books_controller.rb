class BooksController < ApplicationController
  def show
    @book = resource
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

  def update
    resource.update(title: params[:title], author: params[:author])
    redirect_to(resource)
  end

  def create
    book = Book.new(title: params[:title], author: params[:author])
    book.save
    redirect_to books_path
  end

  def resource
    Book.find(params[:id])
  end

end
