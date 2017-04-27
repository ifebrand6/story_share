class PagesController < ApplicationController
  layout "admin"
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
      @page = Page.new
      @stories = Story.order('position ASC')
      @page_count = Page.count + 1

  end
  def create
    if @page = Page.new(page_params)
       @page.save
      flash[:notice] ="your page has been created"
      redirect_to pages_path
    else
      @stories = Story.order('position ASC')
      @page_count = Page.count + 1
      render :new
    end
    
  end

  def edit
    @page = Page.find(params[:id])
    @stories = Story.order('position ASC')
    @page_count = Page.count
  end
  def update
    @page = Page.find(params[:id])
    if @page.update_attributes(page_params)
      flash[:notice] = ">>>>>..... Your page have been updated OK!"
      redirect_to page_path(@page)
    else
      @page_count = Page.count
      @stories = Story.order('position ASC')
      render :edit
      
    end
  end

  def delete
    @page = Page.find(params[:id])
  end
  def destroy
    page = Page.find(params[:id]).destroy
    flash[:notice] = "Opps! you just erase a page hipage!"
    redirect_to pages_index_path
  end
  private
  def page_params
    params.require(:page).permit(:story_id,:page_id,:name,:permalink,:position, :visible)
  end
end
