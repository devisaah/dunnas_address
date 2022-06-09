module DunnasAddress
    class AddressesController < ApplicationController

        def get_by_zipcode
            result = DunnasAddress::Viacep::Search.new({zip_code: params[:zip_code]})

            if result && result.success?
                render json: result.payload, status: :ok
            else
                render json: result.error, status: :bad_request 
            end
        end
    end
end