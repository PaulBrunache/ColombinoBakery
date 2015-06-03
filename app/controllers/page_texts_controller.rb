class PageTextsController < ApplicationController
  before_action :user_online, only: [:new,:edit, :update,:index]
  before_action :set_page_text, only: [:show, :edit, :update, :destroy]

  def index
    @page_text = PageText.all
  end


  def show
  end


  def new
    @page_text = PageText.new
  end

  def edit
  end
 

  def create
    @page_text = PageText.new(page_text_params)
    if @page_text.save
      flash[:success] ='Page content was successfully created.'
      redirect_to page_texts_path
    else
      render :new 
    end
  end

  def update
      if @page_text.update(page_text_params)
        flash[:success] ='Page content was successfully Updated.'
        redirect_to page_texts_path
      else
        render :edit 
      end
  end

  def destroy
    @page_text.destroy
    flash[:success] ='Page content was successfully deleted.'
    redirect_to page_texts_path
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_text
      @page_text= PageText.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_text_params
      params.require(:page_text).permit(:content, :page_id, :title)
    end
end
