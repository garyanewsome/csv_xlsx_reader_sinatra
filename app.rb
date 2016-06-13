#app.rb

require 'sinatra'
require "sinatra/reloader"
require 'csv'

arr_of_arrs = CSV.read("savvy.csv")
array_sliced = arr_of_arrs.each_slice(1).to_a

get '/' do

@title = 'Health Payer Processor'
@array = array_sliced
erb :index

end