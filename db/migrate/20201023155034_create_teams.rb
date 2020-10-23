class CreateTeams < ActiveRecord::Migration
  def change
      create_table :teams do |team|
          team.string :name
          team.string :city
      end
  end
end