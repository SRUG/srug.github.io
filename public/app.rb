require 'rubygems'
require 'sinatra'

# This before filter ensures that your pages are only ever served 
# once (per deploy) by Sinatra, and then by Varnish after that
before do
  response.headers['Cache-Control'] = 'public, max-age=31557600' # 1 year
end

get '/' do
  File.read('public/index.html')
end
