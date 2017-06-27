class MinorInviteMailer < ActionMailer::Base

	def invite_minor(activation_token,name)

		@activation_token = activation_token
		@name = name
	end
end