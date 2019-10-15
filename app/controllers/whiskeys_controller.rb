class WhiskeysController < ApplicationController  

  def index
    @whiskeys = Whiskey.all
    @whiskeys = Whiskey
      .order(created_at: :desc)
      .offset((page - 1) * per_page)
      .limit(per_page)

    @total_pages = (Whiskey.count / per_page.to_f).ceil

  end

  def new
    @whiskeys = Whiskey.new
  end

  def create

    attrs = params.require(:whiskey).permit(:name, :description, :style, :image, category_ids: [])
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
    @comments = @whiskeys.comments
    @comment = @whiskeys.comments.build
    
  end

  def update

    @whiskeys = Whiskey.find(params[:id])
    attrs = params.require(:whiskey).permit(:name, :description, :style, :image, category_ids: [])
    
    if @whiskeys.update(attrs)
      redirect_to whiskey_path(@whiskeys)
    else
      render :edit
    end
    
  end
  private

    def per_page
      3
    end

    def page
      return 1 if !params[:page]

      params[:page].to_i
    end    



end