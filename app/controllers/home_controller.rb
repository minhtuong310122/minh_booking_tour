class HomeController < ApplicationController
  def index
    @normal_tour = Tour.normal_tour.limit(8)
    @fixed_tour = Tour.fixed_tour.limit(8)
  end
end
