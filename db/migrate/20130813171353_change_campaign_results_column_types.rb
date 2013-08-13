class ChangeCampaignResultsColumnTypes < ActiveRecord::Migration
  def up
    execute <<-SQL
	    ALTER TABLE campaign_results ALTER COLUMN ro_amount TYPE money;
	    ALTER TABLE campaign_results ALTER COLUMN i_amount TYPE money;
	    ALTER TABLE campaign_results ALTER COLUMN w_amount TYPE money;
	    ALTER TABLE campaign_results ALTER COLUMN c_amount TYPE money;
	    ALTER TABLE campaign_results ALTER COLUMN labor_amount TYPE money;
	    ALTER TABLE campaign_results ALTER COLUMN misc_amount TYPE money;
    SQL
  end
 
  def down 
  end
end