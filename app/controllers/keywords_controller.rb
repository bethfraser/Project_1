class KeywordsController < EventsController

  
  before_action :authenticate_user!, except: :index
  load_and_authorize_resource
  
  def index
    @event = Event.find(params[:event_id])
    @keywords = Keyword.all
  end

  def edit
    @event = Event.find(params[:event_id])
    @keyword = Keyword.find(params[:id])
  end

  def show
    @event = Event.find(params[:event_id])
    @keyword = Keyword.find(params[:id])
    @acts = @event.acts.select {|act| act.keywords.any? {|k| k == @keyword} }

  end

  def filter
    @event = Event.find(params[:event_id])
    @keyword = Keyword.find(params[:keyword_select])
    redirect_to event_keyword_path(@event, @keyword)
  end

  def update
    @event = Event.find(params[:event_id])
    keyword = Keyword.find(params[:id])
    keyword.update(keyword_params)
    redirect_to event_keywords_path(@event)
  end

  def new
    @event = Event.find(params[:event_id])
    @keyword = Keyword.new
  end

  def create
    @event = Event.find(params[:event_id])
    Keyword.create(keyword_params)
    redirect_to event_keywords_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    keyword = Keyword.find(params[:id])
    keyword.destroy
    redirect_to event_keywords_path(@event)
  end

  private

  def keyword_params
    params.require(:keyword).permit(:name)
  end

end
