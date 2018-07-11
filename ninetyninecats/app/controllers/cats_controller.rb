class CatsController < ApplicationController 
  COLORS = ["red", "black", "calico", "grey", "white", "blue"]
  def index 
    @cats = Cat.all 
    render :index
  end 
  
  def show 
    @cat = Cat.find(params[:id])
    if @cat
      render :show
    else 
      redirect_to cats_url
    end 
  end
  
  def new
    render :new # colors: COLORS
    
  end 
  
  def cat_params
    params.require(:cat).permit(:name, :sex, :birth_date, :description, :color)
  end
  
  def create 
    cat = Cat.new(cat_params)
    if cat.save
      @cat = cat
      render :show
    else  
      render json: cat.errors.full_messages
    end  
  end
  
  def edit 
    @cat = Cat.find(params[:id])
    render :edit 
    
  end 
  
  def update 
    @cat = Cat.find(params[:id])
    if @cat.update(cat_params)
      render :show 
    else 
      render json: cat.errors.full_messages
    end 
  end
    
end 