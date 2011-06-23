elasticsearch_version("0.16.2")
elasticsearch_checksum("995d5245269996dcd7510a91d059b225")
elasticsearch_clustername("#{@attribute[:environment][:name]}")
elasticsearch_home("/data/elasticsearch")
elasticsearch_s3_gateway_bucket("elasticsearch_#{@attribute[:environment][:name]}")
elasticsearch_heap_size(1000)
elasticsearch_fdulimit(nil) #  nofiles limit (make this something like 32768, see /etc/security/limits.conf)
elasticsearch_defaultreplicas(1) # replicas are in addition to the original, so 1 replica means 2 copies of each shard
elasticsearch_defaultshards(6) # 6*2 shards per index distributes evenly across 3, 4, or 6 nodes
