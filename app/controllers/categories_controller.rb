class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end


  def edit
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] ='Category was successfully created.'
      redirect_to categories_path     
    else
       render :new 
    end
  end

  def update
      if @category.update(category_params)
         flash[:success] ='Category was successfully Update.'
        redirect_to categories_path
      else
         render :edit 
      end
  end

  def destroy
    @category.destroy
    flash[:success] ='Category was successfully deleted.'
    redirect_to categories_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :page_id)
    end
end
