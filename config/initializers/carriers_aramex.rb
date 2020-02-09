require 'carriers/aramex'

# HACKING BEFORE ARAMEX PRVOIDE PROPER STAGING/TESGING ACCOUNT
aramex_envionrment = case Rails.env
                     # use production endpoint for staging until Aramex stop being shit
                     when 'production', 'staging'
                       :production
                     else
                       :testing
                     end
Carriers::Aramex.configure do |config|
  config.environment = aramex_envionrment
  config.debug = true
end
