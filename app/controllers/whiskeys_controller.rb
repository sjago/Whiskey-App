class WhiskeysController < ActionController::Base

  def index
    @whiskeys = Whiskey.all
  end

  def new
    @whiskeys = Whiskey.new
  end

  def create

    attrs = params.require(:whiskey).permit(:name, :description)
    @whiskeys = Whiskey.new(attrs)
    @whiskeys.save
    redirect_to whiskey_path(@whiskeys)
    
  end

  def edit

    @whiskeys = Whiskey.find(params[:id])
    
  end

  def show
    
    @whiskeys = Whiskey.find(params[:id])
    
  end

  def update

    @whiskeys = Whiskey.find(params[:id])
    attrs = params.require(:whiskey).permit(:name, :description)
    @whiskeys.update(attrs)
    redirect_to whiskey_path(@whiskeys)
    
  end

end