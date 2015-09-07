# Set up the API keys
Rails.configuration.stripe = {
  :publishable_key => ENV['stripe_test_publishable_key'],
  :secret_key      => ENV['stripe_test_secret_key']
}

# Required for this app to talk to the Stripe server. 
Stripe.api_key = Rails.configuration.stripe[:secret_key]