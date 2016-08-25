
get '/' do
	if session[:user_id]
		@user = User.find(session[:user_id])
		# @all_items = Item.all
	end
	erb :'/index'
end
