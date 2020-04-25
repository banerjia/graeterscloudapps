class AddMetadataToRetailers < ActiveRecord::Migration[6.0]
  def change
    add_column :retailers, :metadata, :json
  end
end
