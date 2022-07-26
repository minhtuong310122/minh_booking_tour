class ToursController < ApplicationController
  def like
    return redirect_to root_path if current_user.blank?
    like = Like.find_or_initialize_by(tour_id: params[:id], user_id: current_user.id)

    like.persisted? ? like.destroy : like.save

    @tour = Tour.find_by id: params[:id]

    respond_to do |format|
      format.js
    end
  end

end
