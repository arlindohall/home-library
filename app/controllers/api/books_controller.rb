# typed: false
module Api
  class BooksController < ApplicationController
    # TODO: create books
    # TODO: helper to search for books in the library of congress

    def index
      # TODO: authenticate
      # TODO: paginate
      render json: Book.all
    rescue => e
      render json: { error: e.message }
    end
  end
end
