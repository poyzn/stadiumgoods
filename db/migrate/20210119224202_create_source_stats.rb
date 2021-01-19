# frozen_string_literal: true

class CreateSourceStats < ActiveRecord::Migration[6.1]
  def change
    create_table :source_stats do |t|
      t.json :twitter, null: false, default: []
      t.json :facebook, null: false, default: []
      t.json :instagram, null: false, default: []
      t.timestamps
    end
  end
end
