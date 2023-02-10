# typed: false
module Api
  class GenresController < ApplicationController
    def index
      render json: Genre.all
    rescue => e
      render json: { error: e.message }, status: 500
    end
  end
end
