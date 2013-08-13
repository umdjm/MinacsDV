class CampaignMember < ActiveRecord::Base
  attr_accessible :address, :latitude, :longitude, :make, :model, :name, :odometer, :radius, :vin, :year
  has_many :campaign_results, :foreign_key => "campaign_members_id"
	def self.geocoded_data
	    geo_data = []

	    CampaignMember.joins('LEFT OUTER JOIN campaign_results ON campaign_results.campaign_members_id = campaign_members.id').select("campaign_members.id, campaign_members.latitude, campaign_members.longitude, campaign_members.name, campaign_members.address, SUM(campaign_results.ro_amount) as ro_amount, Count(campaign_results.id) as results").group('campaign_members.id, campaign_members.latitude, campaign_members.longitude, campaign_members.name, campaign_members.address').each do |member|
	      amount = 0.00
	      amount = member.ro_amount.to_f unless member.ro_amount == nil
	      if(amount > 0.00)
	      	geo_data << { lat:member.latitude.to_f, lng:member.longitude.to_f, success: member.results , name:member.name, address:member.address, amount: amount, id: member.id}
	      end

	    end

	    geo_data
	end

end


