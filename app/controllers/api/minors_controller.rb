module Api
	class MinorsController < ActionController::Base
	  before_action :authenticate_user_by_token!

	  def activation
	  	logger.debug("api- THE ACTIVATION TOKEN IS: #{params['activation_token']}")
	  	all_activation_token = Minor.all.collect{|m| m.activation_token}
	  	if all_activation_token.include?(params[:activation_token])
	  		minor = Minor.find_by_activation_token(params[:activation_token])
	  		minor_parent_id = minor.user_id
	  		auth_token = User.find(minor_parent_id).api_token 
	  		minor_device = MinorDevice.new
	  		minor_device.minor_id = minor.id
	  		minor_device.uuid = params[:uuid]
	  		minor_device.save

	  		render json: {m_device_id: minor_device.id, auth_token: auth_token }
	  	else
	  		render json: {errorCode: -1 }
	  	end
	  end

	  def registration_complete
	  	end_point_arn = params[:end_point_arn]
	  	device_id = params[:m_device_id]
	  	minor_device = MinorDevice.find(device_id)
	  	minor_device.end_point_arn = end_point_arn
	  	minor_device.save	
	  end


	private

		def authenticate_user_by_token!
			logger.debug("api- authenticate_user_by_token ")
			@aut_user = 
		  # @api_token = request.headers['HTTP_AUTHORIZATION']

		  # all_users = User.all.collect{|u| u.api_token}

		  # if all_users.include?("dfljhaslfkjahdflakj")
		  # 	return true
		  # else
		  # 	return false
		  # end 

		  return true
		end

	 

	end
end