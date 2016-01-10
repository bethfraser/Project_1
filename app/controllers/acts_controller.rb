class ActsController < ApplicationController
  
  def index
    @acts = Act.all.order(:name)
  end

  def show 
    @act = Act.find(params[:id])
    @booking = Booking.new
  end

  def new
    @act = Act.new
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
  end

  def update
    act = Act.find(params[:id])
    act.update(act_params)
    redirect_to act_path(act)
  end

  def destroy
    act = Act.find(params[:id])
    act.destroy
    redirect_to(acts_path)
  end



  private

  def act_params
    params.require(:act).permit(:name, :description, :act_image, :event_id)  
  end


end
