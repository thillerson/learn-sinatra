module Sinatra
  module CacheControl
    
    ##
    # cache_control :public => true, :max_age => 5
    # will give us a header:
    # Cache-Control=public, max-age=5
    def cache_control options
      parts = options.map do |key, value|
        if value == true
          key.to_s
        else
          "#{key.to_s.tr("_", "-")}=#{value}"
        end
      end
      headers["Cache-Control"] = parts.join ","
    end
  end
  
  helpers CacheControl
  
end