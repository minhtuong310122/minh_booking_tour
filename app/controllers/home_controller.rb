class HomeController < ApplicationController
  def index
    @normal_tour = Tour.normal_tour.limit(10)
    @fixed_tour = Tour.fixed_tour.limit(10)
  end
end
