class AddCampaignMemberRefToCampignResults < ActiveRecord::Migration
  change_table :campign_results do |t|
    t.references :campaign_members
  end
end
