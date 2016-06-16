require 'roo'

class XLSXReader
	attr_reader :arrays

	def initialize(file)
		@file = file
		@arrays = []
	end

	def read
		xlsx = Roo::Spreadsheet.open(@file)
		xlsx.each_row_streaming do |row|
				@arrays << row
		end
	end

	def self.test_read
		was_read = XLSXReader.new('savvy.xlsx')
		was_read.read
		puts was_read.arrays.inspect
		read_all = was_read.arrays.count == 6
		raise 'EXCEL FAILED test_read' unless read_all
	end

end