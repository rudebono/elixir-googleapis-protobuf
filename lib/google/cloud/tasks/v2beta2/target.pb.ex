defmodule Google.Cloud.Tasks.V2beta2.HttpMethod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :HTTP_METHOD_UNSPECIFIED, 0
  field :POST, 1
  field :GET, 2
  field :HEAD, 3
  field :PUT, 4
  field :DELETE, 5
end

defmodule Google.Cloud.Tasks.V2beta2.PullTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end

defmodule Google.Cloud.Tasks.V2beta2.PullMessage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :payload, 1, type: :bytes
  field :tag, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_engine_routing_override, 1,
    type: Google.Cloud.Tasks.V2beta2.AppEngineRouting,
    json_name: "appEngineRoutingOverride"
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest.HeadersEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :http_method, 1,
    type: Google.Cloud.Tasks.V2beta2.HttpMethod,
    json_name: "httpMethod",
    enum: true

  field :app_engine_routing, 2,
    type: Google.Cloud.Tasks.V2beta2.AppEngineRouting,
    json_name: "appEngineRouting"

  field :relative_url, 3, type: :string, json_name: "relativeUrl"

  field :headers, 4,
    repeated: true,
    type: Google.Cloud.Tasks.V2beta2.AppEngineHttpRequest.HeadersEntry,
    map: true

  field :payload, 5, type: :bytes
end

defmodule Google.Cloud.Tasks.V2beta2.AppEngineRouting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :service, 1, type: :string
  field :version, 2, type: :string
  field :instance, 3, type: :string
  field :host, 4, type: :string
end