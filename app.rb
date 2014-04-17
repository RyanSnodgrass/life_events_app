require 'sinatra'
require "sinatra/activerecord"

#RACK_ENV=production rackup config.ru
set :database, "sqlite3:///life_event_app.db"
set :database, "sqlite3:///school_table_app.db"

get "/index" do
	@events = LifeTable.all
	@schools = SchoolTable.all
	erb :"index/index"
end

get "/error" do
	"whoopsies try again"
end

get "/event/new" do
	erb :"index/new_event"
end

get "/event/:id/edit/" do
	@event_to_update = LifeTable.find(params[:id])
	@event_to_remove = LifeTable.find(params[:id])
	erb :"index/edit"
end

# get "/remove" do
# 	@events = LifeTable.all
# 	erb :"life_event/remove_index"
# end

put "/life_events/:id" do
	@event_to_update = LifeTable.find(params[:id])
	@event_to_update.title = params[:event_name]
	@event_to_update.description = params[:event_desc]
	@event_to_update.save
	redirect "./index"
end

	
delete "/edit/:id" do
	@event_to_remove = LifeTable.find(params[:id])
	@event_to_remove.delete
	redirect "./index"
end

post "/search" do
	@query = params[:new_search]
	@results = LifeTable.where(title: @query)
	erb :"index/results"
end

post "/add_post" do
	event = LifeTable.new
	event.title = params[:event_name]
	event.description = params[:event_desc]
	event.save
	redirect "./index"
end

class LifeTable <ActiveRecord::Base
end

class SchoolTable <ActiveRecord::Base
end