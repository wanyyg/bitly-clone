class Url < ActiveRecord::Base
	before_save :shorten_url

 	#url.shorten_url

 	#url.short_url = "xdfskdfj"

	def shorten_url
	#change the link into > shortlink 
 	# p "localhost:9393/"+SecureRandom.Hex(2)
 	#<a href="long_url">"localhost:9393/" + SecureRandom.Hex(2) </a>
 		self.short_url = SecureRandom.hex(3) 
	end

end

#class Url < ApplicationRecord
 # validates :long_url, format: { with: /.+@.+\..+/,
 #   message: "only allows letters" }
#end

#class Url < ApplicationRecord
#  validates :url, :format => URI::regexp(%w(http https)),
#    message: "only allows http:// links" }
#end