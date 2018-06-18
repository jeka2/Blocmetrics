module ApplicationHelper
  def error_handler(err)
    messages = []
    p "-------------------"
    err.errors.full_messages.each do |mssg|
      unless messages[-1]
        messages << mssg << ", and "
      else
        messages << mssg
      end
    end
    flash[:notice] = messages.join("")
  end

end
