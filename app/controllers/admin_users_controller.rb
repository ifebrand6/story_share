  class AdminUsersController < ApplicationController
    layout "admin"
    def index
    	@users = AdminUser.sorted
    end

    def new
    	@user = AdminUser.new
    end
    def create
       @user = AdminUser.new(user_params)  	 
       if @user.save
       	flash[:notice] = "YOUR ACCOUNT HAVE BEEN CREATED SUCCESSFULLY"
             	redirect_to admin_users_index_path
       else
       	render :new
       end
    end

    def edit
    	@user = AdminUser.find(params[:id])
    end
    def update
    	@user = AdminUser.find(params[:id])
    	@user.update_attributes(user_params)
    	if @user.save
    		flash[:notice] = "YOUR ACCOUNT HAVE BEEN UPDATED SUCCESSFULLY"
    		else
    			render :edit
    	end
    end

    def delete
    	@user = AdminUser.find(params[:id])
    end
    def remove
    	user = AdminUser.find(params[:id]).destroy
      flash[:notice] = "THE DEED HAVE BEEN DONE"
      redirect_to admin_users_index_path
    	  end
    private
    def user_params
    	params.require(:user).permit(:username, :first_name, :last_name, :password_digest, :email, :postion, :visible)
    	
    end
  end
