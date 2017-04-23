class UsersController < ApplicationController
	self.table_name = :admin_users
  def index
  end

  def edit
  end

  def new
  end

  def create
  end
end
# <div class="stories edit">
#  	<h2>Update a Story</h2>
#  	<%= form_for(:one, :url => {:action => 'update',:id => @one.id}) do |f| %>
#  	<table summary="Story form fill">
#  	<tr>
#  		<th>Name</th>
#  		<td><%= f.text_field(:name) %></td>
#  	  </tr>
#  	  <tr>
#  		<th>Position</th>
#  		<td><%= f.text_field(:position) %></td>
#  	  </tr>
#  	  <tr>
#  		<th>Visible</th>
#  		<td><%= f.text_field(:visible) %></td>
#  	  </tr>

 	 
#  	</table>
#  	<div class="form-buttons">
#  		<%= submit_tag("update your story" )%>
#  	</div>
#  	<% end %>
#  	 </div>