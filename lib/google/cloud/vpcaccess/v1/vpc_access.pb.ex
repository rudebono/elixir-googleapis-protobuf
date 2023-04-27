defmodule Google.Cloud.Vpcaccess.V1.Connector.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :READY, 1
  field :CREATING, 2
  field :DELETING, 3
  field :ERROR, 4
  field :UPDATING, 5
end

defmodule Google.Cloud.Vpcaccess.V1.Connector.Subnet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :project_id, 2, type: :string, json_name: "projectId"
end

defmodule Google.Cloud.Vpcaccess.V1.Connector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :network, 2, type: :string
  field :ip_cidr_range, 3, type: :string, json_name: "ipCidrRange"
  field :state, 4, type: Google.Cloud.Vpcaccess.V1.Connector.State, enum: true, deprecated: false
  field :min_throughput, 5, type: :int32, json_name: "minThroughput"
  field :max_throughput, 6, type: :int32, json_name: "maxThroughput"

  field :connected_projects, 7,
    repeated: true,
    type: :string,
    json_name: "connectedProjects",
    deprecated: false

  field :subnet, 8, type: Google.Cloud.Vpcaccess.V1.Connector.Subnet
  field :machine_type, 10, type: :string, json_name: "machineType"
  field :min_instances, 11, type: :int32, json_name: "minInstances"
  field :max_instances, 12, type: :int32, json_name: "maxInstances"
end

defmodule Google.Cloud.Vpcaccess.V1.CreateConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :connector_id, 2, type: :string, json_name: "connectorId", deprecated: false
  field :connector, 3, type: Google.Cloud.Vpcaccess.V1.Connector, deprecated: false
end

defmodule Google.Cloud.Vpcaccess.V1.GetConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vpcaccess.V1.ListConnectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Vpcaccess.V1.ListConnectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :connectors, 1, repeated: true, type: Google.Cloud.Vpcaccess.V1.Connector
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Vpcaccess.V1.DeleteConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Vpcaccess.V1.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :method, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Vpcaccess.V1.VpcAccessService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.vpcaccess.v1.VpcAccessService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CreateConnector,
      Google.Cloud.Vpcaccess.V1.CreateConnectorRequest,
      Google.Longrunning.Operation

  rpc :GetConnector,
      Google.Cloud.Vpcaccess.V1.GetConnectorRequest,
      Google.Cloud.Vpcaccess.V1.Connector

  rpc :ListConnectors,
      Google.Cloud.Vpcaccess.V1.ListConnectorsRequest,
      Google.Cloud.Vpcaccess.V1.ListConnectorsResponse

  rpc :DeleteConnector,
      Google.Cloud.Vpcaccess.V1.DeleteConnectorRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Vpcaccess.V1.VpcAccessService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Vpcaccess.V1.VpcAccessService.Service
end