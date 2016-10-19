class NrelService
  def self.find_nearest(params)
    conn = Faraday.new(:url => 'https://api.data.gov/nrel/alt-fuel-stations/v1/nearest.json?') do |faraday|
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    end
    response = conn.get '/nrel/alt-fuel-stations/v1/nearest.json?', { :api_key => ENV["nrel_api_key"], :location => params[:q], :limit => 10, :radius => 6, :fuel_type => 'ELEC, LPG' }
    JSON.parse(response.body)
  end
end
