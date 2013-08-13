class CreateCampignResults < ActiveRecord::Migration
  def change
    create_table :campign_results do |t|
      t.integer :campaign
      t.string :name
      t.string :address
      t.integer :year
      t.string :model
      t.string :make
      t.string :vin
      t.datetime :ro_date
      t.decimal :w_amount
      t.decimal :i_amount
      t.decimal :c_amount
      t.decimal :ro_amount
      t.decimal :part_amount
      t.decimal :labor_amount
      t.decimal :misc_amount

      t.timestamps
    end
  end
end

=begin 
require 'csv'    
CSV.foreach('ROI.csv', :headers => true, :col_sep => "\t") do |row|
  hash = row.to_hash
  result = CampaignResult.where(:name => hash["FULLNAME"], :vin => hash["VIN"], :ro_date => hash["RO DATE"]).first
  if(result != nil)
    result.i_amount = hash["IAMOUNT"].gsub!(/[,$ ]/, '')
    result.w_amount= hash["WAMOUNT"].gsub!(/[,$ ]/, '')
    result.c_amount= hash["CAMOUNT"].gsub!(/[,$ ]/, '')
    result.ro_amount= hash["ROAMOUNT"].gsub!(/[,$ ]/, '')
    result.part_amount= hash["PARTAMOUNT"].gsub!(/[,$ ]/, '')
    result.labor_amount= hash["LABORAMOUNT"].gsub!(/[,$ ]/, '')
    result.misc_amount= hash["MISCAMOUNT"].gsub!(/[,$ ]/, '')
    result.save
  end
end
=end