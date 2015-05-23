class PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy]

  def index
    @pages = Page.all
  end


  def show
  end


  def new
    @page = Page.new
  end

  def edit
  end
 

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:success] ='Category was successfully created.'
        # redirect_to page_path(@page)
    else
      render :new 
    end
  end

  def update
      if @page.update(page_params)
        flash[:success] ='Category was successfully Updated.'
        redirect_to page_path(@page)
      else
        render :edit 
      end
  end

  def destroy
    @page.destroy
    flash[:success] ='Category was successfully deleted.'
    redirect_to page_path(@page)
  end

  private

    def set_page
      @page = Page.find(params[:id])
    end


    def page_params
      params.require(:page).permit(:page_name, :picture, :active)
    end
  #static pages
  def home
  end
  
  def catering
  end

  def deli
  end

  def pizza
  end

  def pastries
  end

  def subs
  end
end
