class HamsterConf
  class << self
    def day_start_minutes
      @day_start_minutes = `gconftool-2 -g /apps/hamster-applet/day_start_minutes`.to_i unless @day_start_minutes
      @day_start_minutes
    end
  end
end

