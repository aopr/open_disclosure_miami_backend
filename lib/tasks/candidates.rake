require 'csv'

namespace :candidates do
  desc "import candidates from lib/seeds/Candidates.csv"
  task import: :environment do
    Candidate.destroy_all # to delete candidates without dropping the database
    file = Rails.root.join("lib","seeds","Candidates.csv")
    CSV.foreach(file, headers: true, return_headers: false, header_converters: :symbol, encoding: 'cp1256') do |row|


      p Candidate.create!(
      name: row[:name],
      city: row[:city],
      party: row[:party],
      office: row[:office],
      status: row[:status],
      )
    end
  end

end
