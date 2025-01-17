defmodule Google.Api.Servicecontrol.V1.HttpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :request_method, 1, type: :string, json_name: "requestMethod"
  field :request_url, 2, type: :string, json_name: "requestUrl"
  field :request_size, 3, type: :int64, json_name: "requestSize"
  field :status, 4, type: :int32
  field :response_size, 5, type: :int64, json_name: "responseSize"
  field :user_agent, 6, type: :string, json_name: "userAgent"
  field :remote_ip, 7, type: :string, json_name: "remoteIp"
  field :server_ip, 13, type: :string, json_name: "serverIp"
  field :referer, 8, type: :string
  field :latency, 14, type: Google.Protobuf.Duration
  field :cache_lookup, 11, type: :bool, json_name: "cacheLookup"
  field :cache_hit, 9, type: :bool, json_name: "cacheHit"

  field :cache_validated_with_origin_server, 10,
    type: :bool,
    json_name: "cacheValidatedWithOriginServer"

  field :cache_fill_bytes, 12, type: :int64, json_name: "cacheFillBytes"
  field :protocol, 15, type: :string
end
