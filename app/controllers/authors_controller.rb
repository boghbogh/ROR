class AuthorsController < ApplicationController
  def new
    @page_title= 'Add New Author'
    @author = Author.new
    
  end

  def create
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
   def author_params
   params.require(:author).permit(:first_name,:last_name) 

  end
end
