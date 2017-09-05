require 'sinatra'
require 'erb'
require 'yaml'

class LandingPage < Sinatra::Base
  get '/' do
    puts "GET /"
    sites = Dir["/var/www/*"]
    @site_infos = sites.map do |site|
      puts site
      if site == "/var/www/bundle" || site == "/var/www/bundler"
        puts "next!"
        next
      else
        YAML.load_file("#{site}/config/config.yml")
      end
    end
    erb :index
  end
end


