defmodule Google.Cloud.Identitytoolkit.Logging.RequestLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :method_name, 1, type: :string, json_name: "methodName"
  field :status, 2, type: Google.Rpc.Status

  field :request_metadata, 3,
    type: Google.Cloud.Identitytoolkit.Logging.RequestMetadata,
    json_name: "requestMetadata"

  field :request, 4, type: Google.Protobuf.Struct
  field :response, 5, type: Google.Protobuf.Struct
  field :num_response_items, 6, type: :int64, json_name: "numResponseItems"
  field :metadata, 7, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Identitytoolkit.Logging.RequestMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :caller_ip, 1, type: :string, json_name: "callerIp"
  field :caller_supplied_user_agent, 2, type: :string, json_name: "callerSuppliedUserAgent"
end
