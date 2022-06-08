class HotwireController < ApplicationController

  def increment
    @counter = (params[:counter]&.to_i || 0) + 1
    @pinged = Time.now.to_formatted_s(:db)
    @pinged_to_mil = Time.now.to_f
  end
end
