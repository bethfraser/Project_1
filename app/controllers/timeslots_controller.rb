class TimeslotsController < EventsController
  

    before_action :authenticate_user!
    
    def index
      @timeslots = Timeslot.all
    end

    def new
      @event = Event.find(params[:event_id])
      @timeslot = Timeslot.new
      if params[:id]
      @act = Act.find(params[:id])
      else
      @act = Act.all.sort_by(&:name).first
      end
      if params[:venue_id]
      @venue = Venue.find(params[:venue_id])
      else
      @venue = Venue.all.first
      end
    end

    def create 
      @timeslot = Timeslot.new(timeslot_params)
      @event = @timeslot.act.event
      
      respond_to do |format|
        if @timeslot.save
          format.html { redirect_to event_act_path(@event, @timeslot.act), notice: 'Performance slot was successfully created.' }
          # format.json { render :show, status: :created, location: @recipe }
        else
          format.html { render :new }
          # format.json { render json: @recipe.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit 
      @timeslot = Timeslot.find(params[:id])
      @event = @timeslot.act.event
    end

    def update
      timeslot = Timeslot.find(params[:id])
      @event = timeslot.act.event
      timeslot.start_time = nil
      timeslot.end_time = nil
      timeslot.save

      respond_to do |format|
        if timeslot.update(timeslot_params)
          format.html { redirect_to event_act_path(@event, timeslot.act), notice: 'Performance slot was successfully updated.' }
          # format.json { render :show, status: :created, location: @recipe }
        else
          format.html { render :new }
          # format.json { render json: @recipe.errors, status: :unprocessable_entity }
        end
      end


    end

    def destroy
      timeslot = Timeslot.find(params[:id])
      @event = timeslot.act.event
      timeslot.destroy
      redirect_to(event_acts_path(@event))
    end



    private

    def timeslot_params
      params.require(:timeslot).permit(:venue_id, :act_id, :start_time, :end_time, :capacity)  
    end


  end

