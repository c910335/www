require "http/client"

class WWW
  VERSION = "0.1.0"

  @url = "https://www"

  delegate inspect, to: to_s

  macro method_missing(name)
    @url += ".{{name}}"
    self
  end

  def to_s(io)
    HTTP::Client.get(@url) do |res|
      io << res.body_io.gets_to_end
    end
  end
end

macro www(subdomain)
  {% subdomain = subdomain.id %}
  class WWW::{{subdomain.capitalize}} < WWW
    @url = "https://{{subdomain}}"
  end

  def {{subdomain}}
    WWW::{{subdomain.capitalize}}.new
  end
end

def www
  WWW.new
end
