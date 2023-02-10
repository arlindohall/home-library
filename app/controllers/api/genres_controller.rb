# typed: false
module Api
  class GenresController < ApplicationController
    def index
      @genres = Genre.all
      render json: { genres: @genres }
    rescue => e
      render json: { error: e.message }, status: 500
    end
  end
end
