Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create]
end

# To see the body of a request
# (byebug) request.body.read
# => "{\r\n    \"name\": \"Monk Parakeet\",\r\n    \"species\": \"Myiopsitta monachus\"\r\n}"
# 