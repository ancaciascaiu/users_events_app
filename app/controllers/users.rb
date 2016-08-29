
### bring out form for new user
get '/users/new' do
	erb :'/users/new'
end
### get login form
get '/login' do
	erb :'/users/login'
end
### show stuff that belongs to user
get '/users/:id' do
	# @items = Item.all
	@user = User.find(params[:id])
	erb :'/users/show'
end

#######################################
### log in user
post '/login' do
	@user = User.authenticate(params[:username], params[:password])
	if @user
		session[:user_id] = @user.id
		redirect '/'
	else
		@errors = ["Login Failed. Please Try Again"]
		erb :'/users/login'
	end
end

### log out, reset session
post '/logout' do
	@user = nil
	session.delete(:user_id)
	redirect '/'
end

### make new user
post '/users/new' do
	#check username validity
	if params[:username].length == 0
		@errors = ["Username must be not empty!"]
		erb :'/users/new'
	#check password validity
	elsif params[:password].length >=6
		@user = User.create(username: params[:username], password: params[:password])
		if @user.save
			session[:user_id] = @user.id
	    redirect "/"
    else
    	@errors = @user.errors.full_messages
			erb :'/users/new'
    end
	else #password failed, less than 6
		@errors = ["Password must be at least 6 characters long!"]
		erb :'/users/new'
	end
end

