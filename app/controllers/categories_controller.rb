class CategoriesController < ApplicationController
  def new
      @page_title= 'Add New Category'
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
          flash[:notice]="Category created"
          redirect_to categories_path
    else      
        render 'new'
    end 
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
  end

  private
   def category_params
   params.require(:category).permit(:name) 

  end
end
