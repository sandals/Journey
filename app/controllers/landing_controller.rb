class LandingController < ApplicationController
  def index
    if signed_in?
      redirect_to timeline_path
    end
  end
end
