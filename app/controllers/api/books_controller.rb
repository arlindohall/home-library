# typed: false
module Api
  class BooksController < ApplicationController
    def index
      # TODO: authenticate
      # TODO: paginate
      @books = Book.all
      render json: @books
    rescue => e
      render json: { error: e.message, status: 500 }
    end

    def create
      @book = Book.new(book_params)
      @book.save!
      render json: { book: @book }
    rescue => e
      render json: { error: e.message, status: 500 }
    end

    def show
      # TOOD: two loads?
      if id
        @book = Book.find(id)
      elsif scanned_id
        @book = Book.find_by(scanned_identifier: scanned_id)
      end

      render json: { book: @book }
    rescue => e
      render json: { error: e.message, status: 500 }
    end

    private

    def id
      params[:id]
    end

    def scanned_id
      params[:scanned_id]
    end

    def book_params
      params.require(:book).permit(
        :title,
        :author,
        :description,
        :genre_id,
        :shelf_id,
        :isbn,
        :scanned_identifier,
        :google_books_link,
        :google_books_api_link
      )
    end
  end
end
