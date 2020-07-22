class ImportDataWorker
  include Sidekiq::Worker

  def perform(file_path)
    File.open(file_path, 'r') do |file|
      file.each_line do |line|
        line_array = line.split("\t")
        Post.create!(has_err: line_array[0], host_info: line_array[1],
                     ip_address: line_array[2], title: line_array[3].chomp)
        Rails.logger.info("aaaaaaaaaxxxxxxxxxxxxxxxxxxx")
      end
    end
  end
end
