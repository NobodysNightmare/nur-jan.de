threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }.to_i
threads 1, threads_count

bind 'unix://./tmp/puma/sock'
pidfile "./tmp/puma/pid"
state_path "./tmp/puma/state"

environment ENV.fetch('RAILS_ENV') { 'production' }

activate_control_app
