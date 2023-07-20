class CreatePersonalityPatterns < ActiveRecord::Migration[7.0]
  def change
    create_table :personality_patterns do |t|
      t.integer :cp_severity
      t.integer :np_kindness
      t.integer :a_logic
      t.integer :fc_free_spirited
      t.integer :ac_adaptive
      t.integer :score_level
      t.string :pattern_number_1024
      t.string :pattern_name_1024
      t.string :pattern_number_31
      t.string :result_content_name

      t.timestamps
    end
  end
end
