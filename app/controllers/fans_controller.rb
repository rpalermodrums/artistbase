class FansController < ApplicationController
  
  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.create(fan_params)

    redirect_to fan_path(@fan)
  end

  def show
    @fan = Fan.find(params[:id])
  end

  def edit
    @fan = Fan.find(params[:id])

  end

  def update
   @fan = Fan.find(params[:id])
   @fan.update(name: params[:fan][:name], bio: params[:fan][:bio])
   redirect_to fan_path(@fan)    
  end


private

def fan_params
  params.require(:fan).permit(:name, :bio)
end

end
