class Admin::ToursController < Admin::AdminController
  before_action :set_tours, except: [:index, :new, :create]

  def index
    @tours = Tour.all
  end

  def show; end

  def new
    @tour = Tour.new
  end

  def create
    @tour = Tour.new params_tour
    if @tour.save
      redirect_to admin_tour_path(@tour)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @tour.update params_tour
      redirect_to admin_tour_path(@tour)
    else
      render :edit
    end
  end

  def destroy
    @tour.destroy!
    redirect_to admin_tours_path
  end

  private

  def set_tours
    @tour = Tour.find_by id: params[:id]
  end

  def params_tour
    params.require(:tour).permit :title, :image, :price, :description, :tour_type, :start_date, :end_date, :time_in_day, :limit_member
  end
end
