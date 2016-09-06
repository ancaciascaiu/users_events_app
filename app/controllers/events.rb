get '/events/:id' do 
	@event = Event.find(params[:id])
	erb :'events/show'
end

post '/events/:id/attendances' do
	
	Attendance.create(user_id: session[:user_id], event_id: params[:id])
	erb :"users/show"
end

delete '/events/:id' do 
	event = Event.find(params[:id])
	event.destroy
	redirect '/'
end

get '/events/:id/edit' do
	@event = Event.find(params[:id])
	erb :"events/edit"
end

put '/events/:id' do
	event = Event.find(params[:id])
	event.update(params[:event])
	redirect '/'
end