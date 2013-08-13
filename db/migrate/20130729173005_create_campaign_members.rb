class CreateCampaignMembers < ActiveRecord::Migration
  def change
    create_table :campaign_members do |t|
      t.string :name
      t.string :address
      t.decimal :latitude
      t.decimal :longitude
      t.integer :year
      t.string :make
      t.string :model
      t.string :vin
      t.integer :odometer
      t.decimal :radius

      t.timestamps
    end
  end
end
