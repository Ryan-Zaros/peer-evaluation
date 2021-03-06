# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :password
      t.references :role, null: false, foreign_key: true

      t.timestamps
    end
  end
end
