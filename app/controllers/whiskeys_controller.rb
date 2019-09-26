class WhiskeysController < ApplicationController  
  def index
    @whiskeys = Whiskey.all
  end

  def new
    @whiskeys = Whiskey.new
  end

  def create

    attrs = params.require(:whiskey).permit(:name, :description)
    @whiskeys = Whiskey.new(attrs)
    
    if @whiskeys.save
      redirect_to whiskey_path(@whiskeys)
    else
      render :new
    end
    
  end

  def edit

    @whiskeys = Whiskey.find(params[:id])
    
  end

  def show
    
    @whiskeys = Whiskey.find(params[:id])
    @comments = @whiskey.comments
    @comment = @whiskey.comments.build
    
  end

  def update

    @whiskeys = Whiskey.find(params[:id])
    attrs = params.require(:whiskey).permit(:name, :description)
    
    if @whiskeys.update(attrs)
      redirect_to whiskey_path(@whiskeys)
    else
      render :edit
    end
    
  end

end