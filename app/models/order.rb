class Order < ActiveRecord::Base
  belongs_to :hug

  def process_payment
	customer = Stripe::Customer.create(
		email: email,
		card: card_token
		
	)

	charge = Stripe::Charge.create(
		:customer    => customer.id,
		:amount      => hug.price * 100,
		:description => hug.name,
		:currency    => 'usd'
	)

	rescue Stripe::CardError => e
		flash[:error] = e.message
		redirect_to charges_path
  end
end
