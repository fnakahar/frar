module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_customer

    def connect
      self.current_customer = find_verified_customer
      # logger.add_tags 'ActionCable', current_customer.name
    end

    private

      def find_verified_customer
        current_customer
        # debugger
        # if verified_customer = current_customer
        #   verified_customer
        # else
        #   reject_unauthorized_connection
        # end
      end
  end
end
