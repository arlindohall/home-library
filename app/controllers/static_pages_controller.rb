# typed: true
class StaticPagesController < ApplicationController
  def root
  end

  def scan
    return redirect_to "/books/scan/#{scanned_id}" if scanned_book

    render :root
  end

  private

  def scanned_id
    params[:scanned_id]
  end

  def scanned_book
    Api::Book.find_by(scanned_identifier: scanned_id)
  end
end
