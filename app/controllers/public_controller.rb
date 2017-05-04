class PublicController < ApplicationController
	layout "public"
	before_action :call_navigation

  def index
  	@stories = Story.visible.all
  end

  def show
  	@page = Page.where(:permalink => params[:permalink], :visible => true).first
    if @page.nil?
    	redirect_to(:action => 'index')
    else

    	
    end
  end
  private
  def call_navigation
#story = Story.visible.all
  end
end
