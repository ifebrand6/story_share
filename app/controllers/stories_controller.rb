class StoriesController < ApplicationController
  layout false
  def index 
    @stories = Story.sorted
     end

  def show
    @one = Story.find(params[:id])
    
  end

  def new
    @one = Story.new

  end

  def edit
  end

  def delete
  end

  def create
  
    @one = Story.new(:name => params[:one][:name],:position => params[:one][:position ])
    @one.save
    redirect_to stories_show_path(@one)
  end
end
