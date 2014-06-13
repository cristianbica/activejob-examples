class TestJob < ActiveJob::Base
  def perform(*args)
    Rails.logger.debug args.inspect
  end
end
