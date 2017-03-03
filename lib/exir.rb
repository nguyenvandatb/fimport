require "exir/engine"

module Exir
  mattr_accessor :word_class
  mattr_accessor :mapping_column
  mattr_accessor :sheet_name
  mattr_accessor :file

  def self.word_class
    @@word_class.constantize
  end
end
