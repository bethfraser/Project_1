class ActsController < EventsController


  before_action :authenticate_user!, except: :index
  
  def index
    @event = Event.find(params[:event_id])
    @acts = @event.acts.all.order(:name)
    @keywords = Keyword.all
  end

  def show 
    @act = Act.find(params[:id])
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def new
    @act = Act.new(event_id: @event.id)
    @keywords = Keyword.all
  end

  def create 
    @act = Act.new(act_params)
    @event = @act.event
    respond_to do |format|
      if @act.save
        format.html { redirect_to act_path(@act, event: @event), notice: 'Act was successfully created.' }
        # format.json { render :show, status: :created, location: @recipe }
      else
        format.html { render :new }
        # format.json { render json: @recipe.errors, status: :unprocessable_entity }
      end
    end
    
  end

  def edit 
    @act = Act.find(params[:id])
    @keywords = Keyword.all
    @event = @act.event
  end

  def update
    act = Act.find(params[:id])
    act.update(act_params)
    params[:act][:keyword_ids] ||= []
    keyword = Keyword.find(params[:act][:keyword_ids]) 
    act.keywords = keyword
    @event = act.event
    redirect_to act_path(act, event: @event)
  end

  def destroy
    act = Act.find(params[:id])
    @event = act.event
    act.destroy
    redirect_to(acts_path(event: @event))
  end



  private

  def act_params
    params.require(:act).permit(:name, :description, :act_image, :headline_image, :event_id, { :keywords => []})  
  end


end
