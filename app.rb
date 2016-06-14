#app.rb

require 'sinatra'
require "sinatra/reloader"
require './csv_reader'
require './xlsx_reader'

arrays = []
file = 'savvy.csv'
fileToo = 'savvy.xlsx'

CSVReader.test_read
XLSXReader.test_read

get '/' do
	reader = CSVReader.new(file)
	reader.read

	xlsx = XLSXReader.new(fileToo)
	xlsx.read
	
	@title = 'Health Payer Processor'
	@arrays = reader.arrays

	erb :index

end