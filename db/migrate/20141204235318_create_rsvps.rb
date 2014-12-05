class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.references :user, nil: false
      t.references :event, nil: false
      t.integer :guest_count, nil: false, default: 0

      t.timestamps
    end
    add_foreign_key :rsvps, :users
    add_foreign_key :rsvps, :events
  end
end
