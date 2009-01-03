module EmailSpec

    module Matchers
          
    class DeliverTo

      def initialize(expected_email_addresses_or_objects_that_respond_to_email)
        emails = expected_email_addresses_or_objects_that_respond_to_email.map do |email_or_object|
          email_or_object.kind_of?(String) ? email_or_object : email_or_object.email
        end

        @expected_email_addresses = emails.sort
      end

      def matches?(email)
        @email = email
        @actual_recipients = (email.to || []).sort
        @actual_recipients == @expected_email_addresses
      end

      def failure_message
        "expected #{@email.inspect} to deliver to #{@expected_email_addresses.inspect}, but it delievered to #{@actual_recipients.inspect}"
      end

      def negative_failure_message
        "expected #{@email.inspect} not to deliver to #{@expected_email_addresses.inspect}, but it did"
      end
    end

    def deliver_to(*expected_email_addresses_or_objects_that_respond_to_email)
      DeliverTo.new(expected_email_addresses_or_objects_that_respond_to_email)
    end

  end
end
