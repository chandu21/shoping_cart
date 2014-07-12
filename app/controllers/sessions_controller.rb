class SessionsController < Devise::SessionsController
	before_filter :authenticate_user!

	def new
		if current_user
			redirect_to_states_path
		else
		end
		super
	end

end
