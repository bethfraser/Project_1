class ActsController < EventsController


  before_action :authenticate_user!, except: :index
  
  def index
    @event = Event.find(params[:event_id])
    @acts = @event.acts.all.order(:name)
    @keywords = Keyword.all.select {|k| k.acts.any?{|a| a.event == @event }}

  end

  def show 
    @act = Act.find(params[:id])
    @booking = Booking.new
    @event = Event.find(params[:event_id])
  end

  def new
    @event = Event.find(params[:event_id])
    @act = Act.new(event_id: @event.id)
    @keywords = Keyword.all
  end

  def create 
    @act = Act.new(act_params)
    params[:act][:keyword_ids] ||= []
    keyword = Keyword.find(params[:act][:keyword_ids]) 
    @act.keywords = keyword
    @event = @act.event
    respond_to do |format|
      if @act.save
        format.html { redirect_to event_act_path(@event, @act), notice: 'Act was successfully created.' }
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
    redirect_to event_act_path(@event, act)
  end

  def destroy
    act = Act.find(params[:id])
    @event = act.event
    act.destroy
    redirect_to(event_acts_path(@event))
  end



  private

  def act_params
    params.require(:act).permit(:name, :description, :act_image, :headline_image, :event_id, { :keywords => []})  
  end


end
