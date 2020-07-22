require 'elasticsearch/model'

class Post < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  after_commit on: [:create] do
    begin
      p '同步创建'
      self.__elasticsearch__.index_document
    rescue => e
      p "error"
    end
  end
  #settings index: { number_of_shards: 1 } do
  #  mappings dynamic: 'false' do
  #  indexes :title
  #  end
  #end

 class << self
   def import_data(file_path)
     ImportDataWorker.perform_async(file_path)
   end
 end

end

Post.import force: true


