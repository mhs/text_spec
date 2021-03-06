require 'forwardable'

module TextSpec
  module Helpers
    extend Forwardable
    
    def_delegators :"TextSpec::Data", 
      :messages,
      :add_message,
      :set_current_number,
      :current_number,
      :clear_messages,
      :current_text_message,
      :messages_for,
      :open_last_text_message_for

    def twiml_message(from, body, opts={})
      base_options = {
        "AccountSid"=>"1234567812345678",
        "Body"=> body,
        "ToZip"=>"94949",
        "FromState"=>"MI",
        "ToCity"=>"NOVATO",
        "SmsSid"=>"1234567812345678",
        "ToState"=>"CA",
        "To"=>"8155552671",
        "ToCountry"=>"US",
        "FromCountry"=>"US",
        "SmsMessageSid"=>"123456712345671234567",
        "ApiVersion"=>"2008-08-01",
        "FromCity"=>"GRAND RAPIDS",
        "SmsStatus"=>"received",
        "From"=> from,
        "FromZip"=>"49507"
      }

      base_options.merge! opts
    end
  end
end
