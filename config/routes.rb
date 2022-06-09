DunnasAddress::Engine.routes.draw do
    get '/addresses/get_by_zipcode', controller: :addresses, action: :get_by_zipcode
end