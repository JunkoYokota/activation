class AddStorNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :store_name, :string
    add_column :users, :loc, :text
    add_column :users, :zip_cord, :string
    add_column :users, :phone, :string
    add_column :users, :hp_url, :string
    add_column :users, :delivery, :string
    add_column :users, :remarks, :text
    add_column :users, :mon_hol, :string
    add_column :users, :tue_hol, :string
    add_column :users, :wed_hol, :string
    add_column :users, :thu_hol, :string
    add_column :users, :fri_hol, :string
    add_column :users, :sat_hol, :string
    add_column :users, :sun_hol, :string
    add_column :users, :hol_hol, :string
    add_column :users, :start_time, :time, default: 0
    add_column :users, :end_time, :time, default: 0
    add_column :users, :take_out, :string
    add_column :users, :pre_time, :string, default: "-"
  end
end
