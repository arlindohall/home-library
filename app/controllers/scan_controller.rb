class ScanController < ApplicationController
  # TODO: instructions from other library readme
  # TODO: setup and instructions for docker (not docker/rails)
  # TODO: fix sorbet types
  def show
    return redirect_to "/books/scan/#{scanned_id}" if scanned_book

    # TODO: this should render a scan/details page where you select info
    # TODO: the scan details should redirect to scan
    # TODO: for some reason this page is blank, same as the problem described in the commit message
    render "static_pages/root"
  end

  private

  def scanned_id
    params[:scanned_id]
  end

  def scanned_book
    Api::Book.find_by(scanned_identifier: scanned_id)
  end
end
