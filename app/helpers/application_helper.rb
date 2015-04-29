module ApplicationHelper
  def render_flash(flash=flash)
    flash_view = "<div class ='flash' id ='flash'>"
    flash.collect do |type, message|
        flash_view += "<div class ='message #{ type }'>"
        flash_view += "<p> #{message} </p>"
        flash_view += "</div>"
    end
    flash_view +='</div>'
    flash_view.html_safe
  end
end
