class CreateLeaveApplications < ActiveRecord::Migration
  def change
    create_table :leave_applications do |t|
      t.string :name
      t.string :staff_id
      t.string :position_title
      t.string :phone_num
      t.string :contact_and_addr
      t.datetime :prev_start_date
      t.datetime :prev_end_date
      t.string :leave_type
      t.datetime :start_date
      t.datetime :end_date
      t.integer :working_day_num
      t.string :obligation
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
  end
end
