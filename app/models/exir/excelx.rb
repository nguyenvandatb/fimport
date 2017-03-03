module Exir
  class Excelx < ApplicationRecord
    def self.import file_name, args
      file = file_name ? file_name : Exir.file
      spreadsheet = open_spreadsheet file
      sheet = spreadsheet.sheet Exir.sheet_name
      words = []
      mapping_column = Exir.mapping_column || get_mapping_column(sheet)
      sheet.each(mapping_column) do |word|
        words << word
      end
      words.shift
      Exir.word_class.create(words) do |u|
        args.each do |key, value|
          u.send "#{key}=", value
        end
      end
    end

    def self.open_spreadsheet file
      case File.extname file
      when ".csv" then Roo::CSV.new file, file_warning: :ignore
      when ".xls" then Roo::Excel.new file, file_warning: :ignore
      when ".xlsx" then Roo::Excelx.new file, file_warning: :ignore
      else raise "Unknown file"
      end
    end

    def self.get_mapping_column sheet
      mapping_column = Hash.new
      sheet.row(1).each_with_index do |header,i|
        mapping_column[header.downcase] = header if header
      end
      return mapping_column
    end
  end
end
