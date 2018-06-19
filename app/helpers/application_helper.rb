module ApplicationHelper
  def error_handler(err)
    messages = []
    err.errors.full_messages.each_with_index do |mssg, index|
      messages << mssg
      unless index == err.errors.full_messages.count - 1
        messages << ", and "
      end
    end
    flash[:notice] = messages.join("")
  end

end
