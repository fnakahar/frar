Warden::Manager.after_set_user do |customer,auth,opts|
  scope = opts[:scope]
  auth.cookies.signed["#{scope}.id"] = customer.id
end

Warden::Manager.before_logout do |customer, auth, opts|
  scope = opts[:scope]
  auth.cookies.signed["#{scope}.id"] = nil
end