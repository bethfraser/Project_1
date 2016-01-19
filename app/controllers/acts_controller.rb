class ActsController < ContentController
  

  before_action :authenticate_user!, except: :index
  
  def index
    @acts = Act.all.order(:name)
    @keywords = Keyword.all
  end

  def show 
    @act = Act.find(params[:id])
    @booking = Booking.new

    # render template: template_to_render
  end

  def new
    @act = Act.new
    @keywords = Keyword.all
  end

  def create 
    @act = Act.new(act_params)
    
    respond_to do |format|
      if @act.save
        format.html { redirect_to act_path(@act), notice: 'Act was successfully created.' }
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
  end

  def update
    act = Act.find(params[:id])
    act.update(act_params)
    params[:act][:keyword_ids] ||= []
    keyword = Keyword.find(params[:act][:keyword_ids]) 
    act.keywords = keyword
    redirect_to act_path(act)
  end

  def destroy
    act = Act.find(params[:id])
    act.destroy
    redirect_to(acts_path)
  end



  private




    # def template_to_render
    #   if template_exists?("act-#{@act.id}")
    #     "act-#{@act.id}"
    #   else
    #     "act"
    #   end
    # end

  def act_params
    params.require(:act).permit(:name, :description, :act_image, :headline_image, :event_id, { :keywords => []})  
  end


end
