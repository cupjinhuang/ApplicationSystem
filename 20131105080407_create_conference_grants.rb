class CreateConferenceGrants < ActiveRecord::Migration
  def change
    create_table :conference_grants do |t|
      t.string :name
      t.string :staff_id
      t.string :passport_id
      t.string :post
      t.integer :years_at_iiis
      t.string :phone_num
      t.string :conf_name
      t.datetime :conf_date
      t.string :conf_place
      t.boolean :present_paper
      t.boolean :present_poster

      # to be decided whether 'has_many :titles' is required
      t.string :title1
      t.string :title2
      t.string :title3
      t.string :title4
      t.boolean :coauthored
      t.string :coauthor_type
      t.boolean :coauthor_present
      t.float :airfare
      t.float :reg_fee
      t.float :hotel_fare
      t.float :other_fare
      t.string :other_fare_descr
      t.string :last_approval_date
      t.boolean :host_fund_airfare
      t.boolean :host_fund_hotel
      t.boolean :host_fund_honorarium
      t.boolean :host_fund_others
      t.string :host_fund_others_descr
      t.boolean :other_fund_airfare
      t.boolean :other_fund_hotel
      t.boolean :other_fund_honorarium
      t.boolean :other_fund_others
      t.string :other_fund_others_descr

      # belongs_to :leave_application
      t.integer :leave_application_id

      t.timestamps
    end
  end
end
