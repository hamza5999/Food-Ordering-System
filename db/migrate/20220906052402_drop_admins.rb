# frozen_string_literal: true

class DropAdmins < ActiveRecord::Migration[6.1]
  def change
    drop_table :admins
  end
end
