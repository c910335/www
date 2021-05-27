require "http/client"

class WWW
  VERSION = "0.1.0"

  setter url = "https://www"

  delegate inspect, to: to_s

  macro method_missing(name)
    self.url = self.@url + ".{{name}}"
    self
  end

  def to_s(io)
    HTTP::Client.get(@url) do |res|
      io << res.body_io.gets_to_end
    end
  end
end

def www
  WWW.new
end
