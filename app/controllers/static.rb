get '/' do
  erb :"static/index"
end

post '/longlink' do
	p "This is params" 
	url = Url.new(long_url: params["longlink"])
		if url.save 
			p params
			redirect '/'
		else 
			 erb :"static/longlink"
			end 
end

get '/:short_url' do #/sdlkfekrm
	url = Url.find_by(short_url: params[:short_url]) #Url.find(1) , Url.find_by()
	url.click_count += 1 
	if url.save
		redirect "#{url.long_url}"
	else

	end
	#have to find the url with short_url
	#increment the click count of the url with 1
	#save it the update
	#redirect to long link
end
