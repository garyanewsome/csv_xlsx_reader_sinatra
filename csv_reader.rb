require 'csv'

class CSVReader
	attr_reader :arrays

	def initialize(file)
		@file = file
		@arrays = []
	end

	def read
		CSV.foreach @file do |row|
			@arrays << row
		end
	end

	def self.test_read #self = class name
		#smoke test - call chit look for smoke / bugs
		was_read = CSVReader.new('savvy.csv')
		was_read.read
		#arrays=was_read.instance_variable_get(:@arrays)
		puts was_read.arrays.inspect
		read_all = was_read.arrays.count == 6
		raise 'CSVReader FAILED test_read' unless read_all
	end

end	