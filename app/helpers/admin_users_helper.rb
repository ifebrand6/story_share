module AdminUsersHelper
	def error_messages_for(object)
		render(:partial => 'valid/error_messages',:locals => {:object => object})		
	end
end
