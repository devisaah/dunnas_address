class PopulateStatesCitiesPt < ActiveRecord::Migration[7.0]
  def change
    result_states = HTTParty.get("https://raw.githubusercontent.com/celsodantas/br_populate/master/states.json")
    states = JSON.parse(result_states)

    states.each do |state|
      state_obj = DunnasAddress::State.find_or_create_by({
        name: state['name'],
        acronym: state['acronym'],
        time_zone: state['time_zone'],
        region: state['region'],
        capital: state['capital'],
        code: state['code']
      })
      state['cities'].each do |city|
        city_obj = DunnasAddress::City.find_or_create_by({
          name: city['name'],
          code: city['code'],
          state: state_obj
        })
      end
    end
  end
end