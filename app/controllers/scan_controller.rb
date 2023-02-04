class ScanController < ApplicationController
  def show
    return redirect_to "/books/scan/#{scanned_id}" if scanned_book

    # todo: this should render a scan/details page where you select info
    # todo: the scan details should redirect to scan
    # todo: for some reason this page is blank, same as the problem described in the commit message
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