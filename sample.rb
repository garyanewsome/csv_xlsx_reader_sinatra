require 'sinatra'
require "sinatra/reloader"
require 'csv'

get '/' do

arr_of_arrs = CSV.read("savvy.csv")

puts arr_of_arrs

"""
<html>
<head>
<title>Health Payer Processor</title>
<body>
<p>Jarvis: Your data Sir...</p>
<!--how to put array output here!?-->
arr_of_arrs
<!--Check your terminl the array is there-->
</body>
</html>
"""

end