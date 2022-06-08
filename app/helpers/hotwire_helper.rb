module HotwireHelper
  
  def random_color
    "%06x" % (rand * 0xffffff)
  end

  def pinged
    Time.now.to_formatted_s(:db)
  end

  def pinged_to_mil
    Time.now.to_f
  end
end
