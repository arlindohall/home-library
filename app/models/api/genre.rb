module Api
  class Genre < ApplicationRecord
    has_many :books
  end
end
