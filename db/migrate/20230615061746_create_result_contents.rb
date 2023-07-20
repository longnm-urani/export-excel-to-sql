class CreateResultContents < ActiveRecord::Migration[7.0]
  def change
    create_table :result_contents do |t|
      t.string :result_content_name
      t.string :result_content_slogan
      t.text :result_content_personality
      t.text :result_content_interpersonal_relations
      t.text :result_content_view_of_love
      t.text :result_content_job_awareness
      t.text :result_content_advice

      t.timestamps
    end
  end
end
