class CreateRetailers < ActiveRecord::Migration[6.0]
  def change
    create_table :retailers do |t|
      t.string :name, null: false, limit: 64
      t.string :uri_string, null: false
      t.string :status, default: 'actv', null: false, limit:32   

      t.timestamps
    end

    add_index :retailers, [:status, :uri_string], unique: true, name: "ix_status_uri_string_unq"
    add_index :retailers, [:status], name: "ix_status"
    
  end
end
