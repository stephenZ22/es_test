class AnalysisTxtWorker
  include Sidekiq::Worker

  def perform(file_upload_path)
    File.open( file_upload_path, 'wb') { |file| file.write(file_txt.read)}
  end
end
