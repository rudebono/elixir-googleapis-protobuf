defmodule Google.Cloud.Apigeeconnect.V1.ListConnectionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Apigeeconnect.V1.ListConnectionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connections, 1, repeated: true, type: Google.Cloud.Apigeeconnect.V1.Connection
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apigeeconnect.V1.Connection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :endpoint, 1, type: :string
  field :cluster, 2, type: Google.Cloud.Apigeeconnect.V1.Cluster
  field :stream_count, 3, type: :int32, json_name: "streamCount"
end

defmodule Google.Cloud.Apigeeconnect.V1.Cluster do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :region, 2, type: :string
end

defmodule Google.Cloud.Apigeeconnect.V1.ConnectionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apigeeconnect.v1.ConnectionService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListConnections,
      Google.Cloud.Apigeeconnect.V1.ListConnectionsRequest,
      Google.Cloud.Apigeeconnect.V1.ListConnectionsResponse
end

defmodule Google.Cloud.Apigeeconnect.V1.ConnectionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apigeeconnect.V1.ConnectionService.Service
end