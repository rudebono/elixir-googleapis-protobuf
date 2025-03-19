defmodule Google.Cloud.Managedkafka.V1.GetConnectClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.CreateConnectClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connect_cluster_id, 2, type: :string, json_name: "connectClusterId", deprecated: false

  field :connect_cluster, 3,
    type: Google.Cloud.Managedkafka.V1.ConnectCluster,
    json_name: "connectCluster",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.UpdateConnectClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connect_cluster, 2,
    type: Google.Cloud.Managedkafka.V1.ConnectCluster,
    json_name: "connectCluster",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.DeleteConnectClusterRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListConnectClustersRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListConnectClustersResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connect_clusters, 1,
    repeated: true,
    type: Google.Cloud.Managedkafka.V1.ConnectCluster,
    json_name: "connectClusters"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Managedkafka.V1.GetConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.CreateConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connector_id, 2, type: :string, json_name: "connectorId", deprecated: false
  field :connector, 3, type: Google.Cloud.Managedkafka.V1.Connector, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.UpdateConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :connector, 2, type: Google.Cloud.Managedkafka.V1.Connector, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.DeleteConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListConnectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ListConnectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :connectors, 1, repeated: true, type: Google.Cloud.Managedkafka.V1.Connector
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Managedkafka.V1.PauseConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.PauseConnectorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Managedkafka.V1.ResumeConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.ResumeConnectorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Managedkafka.V1.RestartConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.RestartConnectorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Managedkafka.V1.StopConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Managedkafka.V1.StopConnectorResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Managedkafka.V1.ManagedKafkaConnect.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.managedkafka.v1.ManagedKafkaConnect",
    protoc_gen_elixir_version: "0.14.1"

  rpc :ListConnectClusters,
      Google.Cloud.Managedkafka.V1.ListConnectClustersRequest,
      Google.Cloud.Managedkafka.V1.ListConnectClustersResponse

  rpc :GetConnectCluster,
      Google.Cloud.Managedkafka.V1.GetConnectClusterRequest,
      Google.Cloud.Managedkafka.V1.ConnectCluster

  rpc :CreateConnectCluster,
      Google.Cloud.Managedkafka.V1.CreateConnectClusterRequest,
      Google.Longrunning.Operation

  rpc :UpdateConnectCluster,
      Google.Cloud.Managedkafka.V1.UpdateConnectClusterRequest,
      Google.Longrunning.Operation

  rpc :DeleteConnectCluster,
      Google.Cloud.Managedkafka.V1.DeleteConnectClusterRequest,
      Google.Longrunning.Operation

  rpc :ListConnectors,
      Google.Cloud.Managedkafka.V1.ListConnectorsRequest,
      Google.Cloud.Managedkafka.V1.ListConnectorsResponse

  rpc :GetConnector,
      Google.Cloud.Managedkafka.V1.GetConnectorRequest,
      Google.Cloud.Managedkafka.V1.Connector

  rpc :CreateConnector,
      Google.Cloud.Managedkafka.V1.CreateConnectorRequest,
      Google.Cloud.Managedkafka.V1.Connector

  rpc :UpdateConnector,
      Google.Cloud.Managedkafka.V1.UpdateConnectorRequest,
      Google.Cloud.Managedkafka.V1.Connector

  rpc :DeleteConnector, Google.Cloud.Managedkafka.V1.DeleteConnectorRequest, Google.Protobuf.Empty

  rpc :PauseConnector,
      Google.Cloud.Managedkafka.V1.PauseConnectorRequest,
      Google.Cloud.Managedkafka.V1.PauseConnectorResponse

  rpc :ResumeConnector,
      Google.Cloud.Managedkafka.V1.ResumeConnectorRequest,
      Google.Cloud.Managedkafka.V1.ResumeConnectorResponse

  rpc :RestartConnector,
      Google.Cloud.Managedkafka.V1.RestartConnectorRequest,
      Google.Cloud.Managedkafka.V1.RestartConnectorResponse

  rpc :StopConnector,
      Google.Cloud.Managedkafka.V1.StopConnectorRequest,
      Google.Cloud.Managedkafka.V1.StopConnectorResponse
end

defmodule Google.Cloud.Managedkafka.V1.ManagedKafkaConnect.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Managedkafka.V1.ManagedKafkaConnect.Service
end
