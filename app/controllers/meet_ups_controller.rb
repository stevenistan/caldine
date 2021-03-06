class MeetUpsController < ApplicationController
    def index
        @curr_user = current_user
        @meetups = MeetUp.order(:time).all 
        @locations = Location.all
        @all_locations = []
        @locations.each do |loc|
            place = loc.name
            val = loc.value
            @all_locations.push([place, val])
        end
    end
    
    def create 
        # @meet_up_time = DateTime.new(*params[:meet_up_time].values.map(&:to_i)).in_time_zone(zone='Pacific Time (US & Canada)')
        @meet_up_time = DateTime.new(*params[:meet_up_time].values.map(&:to_i))
        @meet_up_time = (@meet_up_time.to_time + 8.hours).to_datetime
        # byebug
        
        if @meet_up_time < Time.now
            flash[:notice] = "Cannot create meet up in the past."
            redirect_to meet_ups_path
            return
        end
        # meetup = MeetUp.create(:time => params[:time], :location => params[:location], :host => current_user.id)
        meetup = MeetUp.create(:time => @meet_up_time, :location => params[:location], :host => current_user.id, :comment => params[:comment])

        meetup.users << current_user
        meetup.save
        redirect_to meet_ups_path
    end
    
    def join
        meetup = MeetUp.find(params[:join_meetup])
        if ! meetup.users.include? current_user
            meetup.users << current_user
            meetup.save
        end
        
        redirect_to meet_ups_path
    end
    
    def remove 
        meetup = MeetUp.find(params[:remove_meetup])
        meetup.users.delete(current_user)
        
        if meetup.users.empty? 
            meetup.destroy
        else
            meetup.save
        end
        
        redirect_to meet_ups_path
    end
end
