require 'elasticsearch/model'

class Post < ApplicationRecord
  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

 class << self
   def import_data(file_path)
     ImportDataWorker.perform_async(file_path)
   end
 end

 def to_hash
  self.attributes
 end

end

Post.import force: true


