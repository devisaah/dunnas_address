module DunnasAddress
    module Viacep 
        class Search

            def initalize 
                @zip_code = params[:zip_code] || nil
            end

            def call
                result = HTTParty.get("https://viacep.com.br/ws/#{@zip_code}/json/")
              rescue HTTParty::Error => e
                OpenStruct.new({success?: false, error: e})
              else
                @state = DunnasAddress::State.find_by_acronym(result['uf'])
                @city = DunnasAddress::City.find_by(name: result['name'], state_id: @state.try(:id))
                payload = result 
                payload.merge!({'state': @state, 'city': @city})

                OpenStruct.new({success?: true, payload: payload})
            end
        end
    end
end