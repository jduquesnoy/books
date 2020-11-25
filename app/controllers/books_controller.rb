class BooksController < ApplicationController
  before_action :set_book, only: %i[show edit update destroy]
  def index
    @books = policy_scope(Book)
    # @books_wish = Book.all.where(wish: true)
    # @books_deposit = Book.all.where(deposit: true)
  end

  def show
  end

  def new
    @book = Book.new
    authorize @book
  end

  def create
    @book = Book.new(book_params)
    @book.user = current_user
    authorize @book
    if @book.save
      redirect_to book_path(@book), notice: 'cool'
    else
      render :new
    end
  end

  def edit
  end

  def update
    @book.update(book_params)
    redirect_to book_path(@book)
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:title, :genre, :description, :author,:collection, :editor, :isbn,:state, :deposit, :wish,)
  end

  def set_book
    @book = Book.find(params[:id])
    authorize @book
  end
end
