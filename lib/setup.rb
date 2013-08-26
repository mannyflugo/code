require_relative 'csv_reader'
require_relative 'area'

class Setup

  attr_accessor :areas

  def initialize
    csv = CSVReader.new("../population/free-zipcode-database.csv")

    csv.read do []
      @areas << Area.new(item)
    end
    self
  end
    

end