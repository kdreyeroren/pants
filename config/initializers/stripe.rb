Rails.configuration.stripe = {
  :publishable_key => "pk_test_bhuyMKBSHp2S7t5cVkbkfJxL",
  :secret_key      => "sk_test_a0qhOJrUtdPkpM6Tx1dqShFu"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]