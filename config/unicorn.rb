require 'yaml'

# Get specific configuration for this app and its location
app_dir = File.expand_path("../..", __FILE__)
shared_dir = "/var/www/rootsite"

working_directory app_dir

# Set unicorn options
worker_processes 1
preload_app true
timeout 30

# Path for the Unicorn socket
listen "#{shared_dir}/runtime/sockets/unicorn.sock", backlog: 64

# Set path for logging
stderr_path "#{shared_dir}/log/unicorn.stderr.log"
stdout_path "#{shared_dir}/log/unicorn.stdout.log"

# Set proccess id path
pid "#{shared_dir}/runtime/pids/unicorn.pid"


