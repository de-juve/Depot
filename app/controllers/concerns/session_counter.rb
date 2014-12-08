module SessionCounter
  extend ActiveSupport::Concern

  private

  def increment_counter
    if session[:counter].nil?
      session[:counter] = 0
    end
    session[:counter] += 1
  end
end