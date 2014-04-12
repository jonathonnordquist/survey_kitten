helpers do
  def logged_in?
    !current_user.nil?
  end

  def current_user
    if session[:user_id]
      # @current_user || = User.find_by_id(session[:user_id])
    end
  end

  def average(sum, length)
    return (sum.to_f / length.to_f)
  end

  def round_to_two(number)
    "%.2f" % number
  end
end
