module ApplicationHelper
  def gravatar_url(customer)
    gravatar_id = Digest::MD5::hexdigest(customer.email).downcase
    url = "https://gravatar.com/avatar/#{gravatar_id}.png"
  end
end
