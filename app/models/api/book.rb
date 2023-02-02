# typed: strict
module Api
  class Book < ApplicationRecord
    belongs_to :genre
  end
end
