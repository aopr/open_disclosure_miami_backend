namespace :import_candidate do

  desc "Import Candidate Monies"
  task candidates: :environment do
    csv = SmarterCSV.process('./carlos_gimenez_mayor.csv')

    csv.each do |line|
      date = line[:item_date]
      type = line["cont/exp"]
      name = line[:name]
      address = line[:address_1]
      address2 = line[:address_2]
      city = line[:city]
      state = line[:state]
      contributor_type = line["cont._type"]
      occupation = line[:occupation]
      item_type = line[:item_type]
      amount = line[:amount]
      candidate = line[:rpt_code]

      monies = Mony.create!(
      date: date,
      type: type,
      name: name,
      address: address,
      address2: address2,
      city: city,
      state: state,
      contributor_type: contributor_type,
      occupation: occupation,
      item_type: item_type,
      amount: amount,
      candidate: candidate
      )
    end
  end
end
