#app.rb

require 'sinatra'
require "sinatra/reloader"
require './csv_reader'
require './xlsx_reader'

csv_arrays = []
xlsx_arrays = []
csv_file = 'savvy.csv'
xlsx_file = 'savvy.xlsx'

CSVReader.test_read
XLSXReader.test_read

get '/' do
	csv_reader = CSVReader.new(csv_file)
	csv_reader.read

	xlsx_reader = XLSXReader.new(xlsx_file)
	xlsx_reader.read
	
	@title = 'Health Payer Processor'
	@csv_arrays = csv_reader.arrays
  @xlsx_arrays = xlsx_reader.arrays

	erb :index

end