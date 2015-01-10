require('sinatra')
require('sinatra/reloader')
require('./lib/clock_angle_increments')

get('/form') do
  erb(:form)
end

get('/angle') do
  @angle = params.fetch('time').clock_angle_increments()
  erb(:angle)
end
