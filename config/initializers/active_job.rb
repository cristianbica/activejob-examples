ActiveJob::Base.queue_adapter = :sidekiq

Sidekiq.configure_server do |config|
  config.redis = { url: "redis://127.0.0.1:6379/0", namespace: 'active_job_examples' }
end
Sidekiq.configure_client do |config|
  config.redis = { url: "redis://127.0.0.1:6379/0", namespace: 'active_job_examples' }
end

# require 'resque'
# ActiveJob::Base.queue_adapter = :resque

# require 'support/backburner/inline'
# ActiveJob::Base.queue_adapter = :backburner

#ActiveJob::Base.queue_adapter = :delayed_job
