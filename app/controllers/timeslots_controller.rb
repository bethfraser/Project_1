class TimeslotsController < ApplicationController
    
    def index
      @timeslots = Timeslot.all
    end

    def new
      @timeslot = Timeslot.new
    end

    def create 
      @timeslot = Timeslot.new(timeslot_params)
      
      
      respond_to do |format|
        if @timeslot.save
          format.html { redirect_to act_path(@timeslot.act), notice: 'Performance slot was successfully created.' }
          # format.json { render :show, status: :created, location: @recipe }
        else
          format.html { render :new }
          # format.json { render json: @recipe.errors, status: :unprocessable_entity }
        end
      end
    end

    def edit 
      @timeslot = Timeslot.find(params[:id])
    end

    def update
      timeslot = Timeslot.find(params[:id])
      timeslot.destroy
      Timeslot.create(timeslot_params)
      redirect_to act_path(timeslot.act.id)
    end

    def destroy
      timeslot = Timeslot.find(params[:id])
      timeslot.destroy
      redirect_to(acts_path)
    end



    private

    def timeslot_params
      params.require(:timeslot).permit(:venue_id, :act_id, :start_time, :end_time, :capacity)  
    end


  end

