module Firefly
  
  # Firefly::Client allows you to shorten URLs quickily through a Firefly server. 
  #
  # Usage is easy:
  #
  #     firefly = Firefly::Client.new(url, api_key)
  #     firefly.shorten("http://google.com")
  #
  class Client
		
		# Creates a new instance to shorten Firefly URLs
		# 
		# +url+ is the URL to your Firefly server. E.g. "http://aj.gs". 
		# Note: do not include a trailing slash
		# +api_key+ is your Firefly API Key.
		def initialize(url, api_key)
			@firefly_url = url
			@api_key     = api_key
		end	
		
		# Shortens the given URL or array of URLs. 
		#
		#    shorten("http://google.com") => "http://aj.gs/7dZ"
    #
    #    shorten(["http://google.com", "http://yahoo.com"])
    #				=> { "http://google.com/" => "http://aj.gs/7dZ", 
    #            "http://yahoo.com/"  => "http://aj.gs/8Yt" } 
    def shorten(input)
			if input.is_a?(String)
			  return create_url(input)	
			elsif input.is_a?(Array)
				result = {}
				input.each do |inp|
					result[inp] = create_url(inp)
				end
        return result 
			else
				raise ArgumentError.new('Shorten requires either a url or an array of urls')
			end
		end
		
		protected

		# Shortend +long_url+ and returns the short_url on success
		def	create_url(long_url)
		  begin
			  options = { :query => { :url => long_url, :api_key => @api_key } }
        result = HTTParty.post(@firefly_url + '/api/add', options)

				if result =~ /Permission denied/i
          raise "Permission denied. Is your API Key set correctly?" if result.status = 401
				else
				  return result
				end
			end
		end
  end
end
