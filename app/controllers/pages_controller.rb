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

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
      else
        format.html { render :new }
       
      end
    end
  end

  def update
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }

      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url, notice: 'Page was successfully destroyed.' }
    end
  end

  private

    def set_page
      @page = Page.find(params[:id])
    end


    def page_params
      params.require(:page).permit(:picture, :page, :active)
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
