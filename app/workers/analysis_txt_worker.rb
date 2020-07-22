class AnalysisTxtWorker
  include Sidekiq::Worker

  def perform(*args)
    p "cccc"
    Rails.logger.info("DO SOME~~~~~~~~~~~~~~~~")
  end
end
