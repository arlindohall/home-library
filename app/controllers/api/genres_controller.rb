# typed: false
module Api
  class GenresController < ApplicationController
    def index
      render json: Genre.all
    rescue => e
      render json: { error: e.message }
    end
  end
end
