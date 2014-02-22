class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.text :description
      t.boolean :public, default: false
      t.boolean :grades, default: false
      t.references :phase, index: true, null: false
      t.references :group, index: true, null: false
      t.references :statement, index: true, null: false
    end
  end
end
