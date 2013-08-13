class CampaignResult < ActiveRecord::Base
  attr_accessible :i_amount, :ro_date, :w_amount, :address, :c_amount, :campaign, :labor_amount, :make, :misc_amount, :model, :name, :part_amount, :ro_amount, :vin, :year

  belongs_to :campaign_member, :foreign_key => "campaign_members_id", counter_cache: :campaign_results_count
end
