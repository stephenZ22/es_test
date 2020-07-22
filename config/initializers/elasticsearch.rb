host = "http://127.0.0.1:9200"
config = {
  host: host,
  transport_options: {
    request: { open_timeout: 5, timeout: 5 }
  },
}

$elasticsearch = config
$es_client = Elasticsearch::Client.new(config)
$repository = MyRepository.new(client: $es_client, index_name: 'my_development')
