require 'elasticsearch/model'

class Post < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

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


