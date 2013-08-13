class AddCampaignResultSumToCampaignMember < ActiveRecord::Migration
  def change
    add_column :campaign_members, :results_sum, :decimal
  end
end
