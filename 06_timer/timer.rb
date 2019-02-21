class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    total_seconds = @seconds
    hours = total_seconds / 3600
      if hours == 0
        hours = '00'
      elsif (hours != 0 && hours.digits.length == 1)
        hours = '0' + hours.to_s
      end
    minutes = (total_seconds - (hours.to_i * 3600)) / 60
      if minutes == 0
        minutes = '00'
      elsif (minutes != 0 && minutes.digits.length == 1)
        minutes = '0' + minutes.to_s
      end
    seconds = total_seconds - (hours.to_i * 3600) - (minutes.to_i * 60)
      if seconds == 0
        seconds = '00'
      elsif (seconds != 0 && seconds.digits.length == 1)
        seconds = '0' + seconds.to_s
      end

    @seconds = "#{hours}:#{minutes}:#{seconds}"
  end

end
