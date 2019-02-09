class BooksController < ApplicationController
  def index
    @all_books = Book.all()
  end

  def add 
    Book.create 'title': params[:title]
    redirect_to '/books'
  end

  def show
    @book = Book.find(params[:id])
    # redirect_to '/book'
  end

  def update
    Book.find(params[:id]).update title: params[:title]
    redirect_to "/books/#{params[:id]}"
  end

  def delete
    Book.find(params[:id]).destroy
    redirect_to "/books"
  end
end