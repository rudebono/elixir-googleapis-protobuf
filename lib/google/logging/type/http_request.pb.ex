defmodule Google.Logging.Type.HttpRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          request_method: String.t(),
          request_url: String.t(),
          request_size: integer,
          status: integer,
          response_size: integer,
          user_agent: String.t(),
          remote_ip: String.t(),
          server_ip: String.t(),
          referer: String.t(),
          latency: Google.Protobuf.Duration.t() | nil,
          cache_lookup: boolean,
          cache_hit: boolean,
          cache_validated_with_origin_server: boolean,
          cache_fill_bytes: integer,
          protocol: String.t()
        }

  defstruct [
    :request_method,
    :request_url,
    :request_size,
    :status,
    :response_size,
    :user_agent,
    :remote_ip,
    :server_ip,
    :referer,
    :latency,
    :cache_lookup,
    :cache_hit,
    :cache_validated_with_origin_server,
    :cache_fill_bytes,
    :protocol
  ]

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

  def transform_module(), do: nil
end
