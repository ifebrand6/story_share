  class StoriesController < ApplicationController
    # before_action :confirm_logged_in
    layout "admin"
    # GET /instructments
    def index
      @stories = Story.sorted
    end

    # GET /instructments/1
    def show
      @one = Story.find(params[:id])
    end

    # GET /instructments/new
    def new
       @one = Story.new
        @one_count = Story.count + 1
    end

    # GET /instructments/1/edit
    def edit
      @one = Story.find(params[:id])
      @one_count = Story.count
    end
     def update
      @one = Story.find(params[:id])
      if @one.update_attributes(one_params) 
      flash[:notice] = "Your '#{@one.name}' have been updated successfully"           
       redirect_to stories_show_path(@one.id)                              
     else
       
       @one_count = Story.count
       render :edit

     end
    end

    # POST /instructments
    def create
       @one = Story.new(one_params)

      if @one.save
        flash[:notice] =  "Ahh! your story have been added to history!"
         redirect_to stories_index_path
      else
         @one_count = Story.count + 1
        render :new
      end
    end

    # PATCH/PUT /instructments/1
     def delete
       @one = Story.find(params[:id])
      #@instructment.destroy
     # redirect_to instructments_url, notice: 'Instructment was successfully destroyed.'
    end
   

    # DELETE /instructments/1
    def destroy
       one = Story.find(params[:id]).destroy
        flash[:notice] = "Your story have been erase from history" 
       redirect_to stories_index_path
      
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def one_params
        params.require(:one).permit(:name,:position,:visible)
      end

      # Only allow a trusted parameter "white list" through.
      #def instructment_params
        #params.fetch(:instructment, {})
      #end
  end
