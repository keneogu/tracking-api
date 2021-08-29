class Authentication
	def initialize(params)
		@username = params[:username]
		@password = params[:password]
	end
	
	def user
		@user ||= User.find_by(username: @username)
	  return unless @user
	
		@user.authenticate(@password) ? @user : nil
	end
	
	def authenticated?
		user.present?
	end
end 