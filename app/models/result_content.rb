class ResultContent < ApplicationRecord
  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        result_content = find_by_id(row["id"]) || new
        result_content.attributes = row.to_hash.slice(*row.to_hash.keys)
        result_content.save!
    end
  end

  def self.open_spreadsheet(file)
      case File.extname(file.original_filename)
          when ".csv" then Roo::CSV.new(file.path)
          when ".xls" then Roo::Excel.new(file.path)
          when ".xlsx" then Roo::Excelx.new(file.path)
          else raise "Unknown file type: #{file.original_filename}"
      end
  end
end
