class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :get_tidings

  private

  def get_tidings
    @tidings = Tiding.last(15).reverse
  end
end
