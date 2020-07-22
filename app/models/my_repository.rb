require 'elasticsearch/persistence'
class MyRepository
  include Elasticsearch::Persistence::Repository
end
