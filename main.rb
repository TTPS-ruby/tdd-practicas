Dir["#{File.dirname(__FILE__)}/src/**/*.rb"].each do |file|
  require_relative file
end
