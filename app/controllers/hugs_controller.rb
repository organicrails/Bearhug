class HugsController < ApplicationController

	def index
		@hugs = Hug.all
	end

	def show
		@hug = Hug.find(params[:id])
	end
end
