class RenameCampignResultsToCampaignResults < ActiveRecord::Migration

  def self.up
    rename_table :campign_results, :campaign_results
  end

 def self.down
    rename_table :campaign_results, :campign_results
 end
end
