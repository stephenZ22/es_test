class Post < ApplicationRecord
 class << self
   def import_data(file_path)
     ImportDataWorker.perform_async(file_path)
   end
 end
end
