root = "/home/mark/rails/slacker/current"
working_directory root
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.log"
stdout_path "#{root}/log/unicorn.log"

listen "/tmp/unicorn.slacker.sock"
worker_processes 2
timeout 30

before_exec do |_|
  ENV["BUNDLE_GEMFILE"] = File.join(root, "Gemfile")
end
