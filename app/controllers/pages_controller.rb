class PagesController < ApplicationController
  layout false
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new

  end
  def create
    if @page = Page.create
      
      flash[:notice] ="your page has been created"
      redirect_to pages_index_path
    else
      render :new
    end
    
  end

  def edit
    @page = Page.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = ">>>>>..... Your page have been updated OK!"
      redirect_to pages_show_path(@page)
    else
      render :edit
      
    end
  end

  def delete
    @page = Page.find(params[:id])
  end
  def destroy
    page = Page.find(params[:id]).destroy
    flash[:notice] = "Opps! you just erase a page history!"
    redirect_to pages_index_path
  end
  private
  def page_params
    params.require(:page).permit(:name,:visible,:position)
  end
end
