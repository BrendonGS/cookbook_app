class Recipe < ApplicationRecord
  def ingredients_list
    ingredients.split(", ")
  end

  def directions_list
    directions.split(", ")
  end

  def friendly_created_at
    created_at.strftime("%b %d, %Y")
  end

  def friendly_prep_time
    #input: is integer stored ni tghe perp_time attribute, with reader method ex:125
    #output: string - "2 hours, 5 minutes"

    # find the hours within prep time, divide by 60
    # find the minutes with prep time, by finding the remainder 
    # build a message, using the hours and minutes
      # only build hours part of the message if there are more than 0 hours
      # only build minutes part of the message if there are more than 0 minutes


    hours = prep_time / 60
    minutes = prep_time % 60
    time_message = ""
    
      time_message += "#{hours} #{'Hour'.pluralize(hours)}" if hours > 0
      time_message += ", " if hours > 0 && minutes > 0
      time_message += "#{minutes} #{'Minute'.pluralize(minutes)}" if minutes > 0
      
      time_message
  end

end
