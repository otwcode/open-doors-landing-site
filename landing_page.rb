require 'sinatra'
require 'erb'
require 'yaml'

class LandingPage < Sinatra::Base
  get '/' do
    sites = Dir["/var/www/sites/*"]
    @site_infos = sites.map do |site|
      YAML.load_file("#{site}/config/config.yml")
    end
    erb :index
  end
end


