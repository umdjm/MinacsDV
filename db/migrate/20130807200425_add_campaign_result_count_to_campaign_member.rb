class AddCampaignResultCountToCampaignMember < ActiveRecord::Migration
  def change
    add_column :campaign_members, :campaign_results_count, :integer
  end
end
