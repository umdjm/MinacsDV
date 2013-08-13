class AddCampaignToCampaignMember < ActiveRecord::Migration
  def change
    add_column :campaign_members, :campaign, :integer
  end
end
