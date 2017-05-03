class PagesController < ApplicationController
  # before_action :confirm_logged_in
  before_action :find_story
  layout "admin"
  def index
    @pages = Page.where(:story_id => @story.id).all
    # @pages = @story.pages.all
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
      @page = Page.new({:story_id => @story.id})
      @stories = Story.order('position ASC')
      @page_count = Page.count + 1

  end
  def create
    if @page = Page.new(page_params)
       @page.save
      flash[:notice] ="your page has been created"
      redirect_to(:action => 'index', :story_id => @story.id)
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
      redirect_to(:action => 'show', :id => @page.id)
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
    redirect_to(:action => 'index')
  end
  private
  def page_params
    params.require(:page).permit(:story_id,:name,:permalink,:position, :visible)
  end
  def find_story
    if params[:story_id]
      @story = Story.find(params[:story_id])
    end
  end
end
