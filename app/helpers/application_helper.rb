module ApplicationHelper
  def icon_like tour
    if current_user.present? && current_user.liked?(tour)
      "<i class='fas fa-thumbs-up'></i>".html_safe
    else
      "<i class='far fa-thumbs-up'></i>".html_safe
    end
  end
end
