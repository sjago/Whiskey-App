class WhiskeysController < ActionController::Base

  def index
    @whiskeys = Whiskey.all
  end

  def new
    @whiskeys = Whiskey.new
  end

  def create

    attrs = params.require(:whiskey).permit(:name, :description)
    @whiskey = Whiskey.new(attrs)
    @whiskey.save
    redirect_to whiskey_path(@whiskey)
    
  end

  def show
    
    @whiskey = Whiskey.find(params[:id])
    
  end

end