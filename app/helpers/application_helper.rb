module ApplicationHelper
  def icon_like tour
    if current_user.present? && current_user.liked?(tour)
      "<i class='fas fa-thumbs-up'></i>".html_safe
    else
      "<i class='far fa-thumbs-up'></i>".html_safe
    end
  end

  def booking_status
    if @booking.status == 2
      "<button class='badge bg-warning text-dark'>Cancle</button>".html_safe
    else @booking.status == 0 || @booking.status == 1
      @booking.status
    end
  end
end
