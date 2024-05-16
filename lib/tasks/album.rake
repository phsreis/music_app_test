require 'httparty'

namespace :album do
  desc 'Import artists from endpoint'

  task artist: :environment do
    endpoint = 'https://europe-west1-madesimplegroup-151616.cloudfunctions.net/artists-api-controller'

    headers = {
      'Content-Type' => 'application/json',
      'Accept' => 'application/json',
      'Authorization' => 'Basic ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ=='
    }

    artists = HTTParty.get(endpoint, headers:)['json'].flatten

    artists.each do |artist|
      artist_params = {
        name: artist['name'],
        twitter: artist['twitter']
      }

      Artist.find_or_create_by(artist_params)
    end

    puts 'Artists imported successfully'
  end
end
