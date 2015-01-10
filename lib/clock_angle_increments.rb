class String
  define_method(:clock_angle) do
    time = self.split(":")
    hour = (time.at(0)).to_f()
    minutes = time.at(1).to_f()


    minutes_deg = (minutes./(60)).*(360)
    hours_increment = (minutes./60).*30
    #increment accounts for the small movement of the hours hand
    hour_deg = (hour./(12)).*(360).+(hours_increment)
    angle = (hour_deg.-(minutes_deg)).abs()
    angle.>(180) ? 360.-(angle) : angle

    # if angle.>(180)
    #   angle = 360.-(angle)
    # end
    # angle
  end
end
