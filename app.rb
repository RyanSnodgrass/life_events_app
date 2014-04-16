require 'sinatra'
require "sinatra/activerecord"

#RACK_ENV=production rackup config.ru
set :database, "sqlite3:///life_event_app.db"

get "/life_events" do
	@events = LifeTable.all
	erb :"life_event/index"
end

get "/error" do
	"whoopsies try again"
end

get "/addition" do
	erb :"life_event/new"
end

get "/edit/:id" do
	@event_to_update = LifeTable.find(params[:id])
	@event_to_remove = LifeTable.find(params[:id])
	erb :"life_event/edit"
end

get "/remove" do
	@events = LifeTable.all
	erb :"life_event/remove_index"
end

put "/life_events/:id" do
	@event_to_update = LifeTable.find(params[:id])
	@event_to_update.title = params[:event_name]
	@event_to_update.description = params[:event_desc]
	@event_to_update.save
	redirect "./life_events"
end

	
delete "/edit/:id" do
	@event_to_remove = LifeTable.find(params[:id])
	@event_to_remove.delete
	redirect "./life_events"
end

post "/search" do
	@query = params[:new_search]
	@results = LifeTable.where(title: @query)
	erb :"life_event/results"
end

post "/add_post" do
	event = LifeTable.new
	event.title = params[:event_name]
	event.description = params[:event_desc]
	event.save
	redirect "./life_events"
end

class LifeTable <ActiveRecord::Base
end