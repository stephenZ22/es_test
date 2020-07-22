class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    p "aaaa"
  end
end
