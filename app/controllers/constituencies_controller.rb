class ConstituenciesController < ApplicationController
  def index
  end

  def search
    @constituency = ConstituencySearch.new(postcode: params[:postcode]).find
    unless @constituency.present?
      redirect_to "/", alert: "Postcode doesn't exist"
    end
  end
end
