class VenuesController < ContentController
  before_action :authenticate_user!, except: :index

  def index
    @venues = Venue.all
  end

  def show 
    @venue = Venue.find(params[:id])
    @timeslots = @venue.timeslots.all.order(:start_time)
  end

  def new
    @venue = Venue.new
  end

  def create 
    @venue = Venue.new(venue_params)

    respond_to do |format|
      if @venue.save
        format.html { redirect_to venue_path(@venue), notice: 'Stage was successfully created.' }
        # format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        # format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit 
    @venue = Venue.find(params[:id])
  end

  def update
    venue = Venue.find(params[:id])
    venue.update(venue_params)
    redirect_to venue_path(venue)
  end

  def destroy
    venue = Venue.find(params[:id])
    venue.destroy
    redirect_to(venues_path)
  end



  private

  def venue_params
    params.require(:venue).permit(:name, :description, :location, :venue_image, :event_id)  
  end

end
