class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_tidings

  def close_bourse
    Bourse.close
    redirect_to root_path
  end

  def open_bourse
    Bourse.open
    redirect_to root_path
  end

  private

  def get_tidings
    @tidings = Tiding.last(15).reverse
  end
end
