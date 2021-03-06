class HumanizeSeconds
  def self.humanize(secs)
    if secs == 0
      return "0s"
    end
    [[60, :seconds], [60, :minutes], [24, :hours], [1000, :days]].map{ |count, name|
      if secs > 0
        secs, n = secs.divmod(count)
        "#{n.to_i}#{name.to_s[0]}"
      end
    }.compact.reverse.join(' ')

  end
end
