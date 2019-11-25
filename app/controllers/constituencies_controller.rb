class ConstituenciesController < ApplicationController
  def index
  end

  def search
    @constituency = ConstituencySearch.new(postcode: params[:postcode]).find
  end
end
