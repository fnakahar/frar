class RoomMessage < ApplicationRecord
  belongs_to :room, inverse_of: :room_messages
  belongs_to :customer

  def as_json(options)
    super(options).merge(customer_avatar_url: customer.gravatar_url)
  end
end
