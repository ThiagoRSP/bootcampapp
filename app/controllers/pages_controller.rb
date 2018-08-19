class PagesController < ApplicationController

	def home
		if user_signed_in?
			@tweet = current_user.tweets.build
		end
			@user = current_user

	end

	def followers
		@user = User.find(params[:id])
	end

end
