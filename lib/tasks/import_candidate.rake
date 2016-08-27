require 'csv'

namespace :import_candidate do

  desc "Import Candidate Monies"
  task candidates: :environment do

  candidates = ['miguel_eizmendiz_mayor.csv', 'AlfredSantamariaMayor.csv', 'carlos_gimenez_mayor.csv', 'raquel_regalado.csv', 'dennis_moss.csv', 'burino_barreiro.csv', "barbara_j_jordan.csv", "fred_bryant.csv", "joe_a_martinez.csv", "xavier_l_suarez.csv", "AudreyEdmunsonCommissioner.csv", "EarlBeaverCommissioner.csv", "EstebanBovoCommissioner.csv", "bj_chiszar_mayor.csv", "felix_lorenzo_comm.csv", "michael_castro_comm.csv"]

  candidates.each do |candidate|

    file = Rails.root.join("lib","seeds",candidate)

    CSV.foreach(file, headers: true, return_headers: false, header_converters: :symbol, encoding: 'cp1256') do |line|
      Mony.create!(
        date: line[:item_date],
        type: line["cont/exp"],
        name: line[:name],
        address: line[:address_1],
        address2: line[:address_2],
        city: line[:city],
        state: line[:state],
        contributor_type: line["cont._type"],
        occupation: line[:occupation],
        item_type: line[:item_type],
        amount: line[:amount],
        candidate: line[:rpt_code]
        )
      end
    end
  end
end
