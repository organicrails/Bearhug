class HugsController < ApplicationController

	def index
		@hugs = Hug.all
	end

	def create
	end

	def show
		@hug = Hug.find(params[:id])
	end
end
