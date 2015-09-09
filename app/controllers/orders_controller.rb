class OrdersController < ApplicationController

	def new
		@hug = Hug.find(params[:hug_id])
		@order = Order.new
	end

	def create
		@order = Order.new orders_param.merge(email: stripe_params["stripeEmail"],card_token: stripe_params["stripeToken"])
		@order.process_payment

		@order.save
	end

	private

	private
    def stripe_params
      params.permit :stripeEmail, :stripeToken
    end

	def orders_param
		params.require(:order).permit(:hug_id, :name, :email)
	end
end
