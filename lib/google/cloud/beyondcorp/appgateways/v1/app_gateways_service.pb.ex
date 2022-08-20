defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TCP_PROXY, 1
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :DOWN, 5
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.HostType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :HOST_TYPE_UNSPECIFIED, 0
  field :GCP_REGIONAL_MIG, 1
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.ListAppGatewaysRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.ListAppGatewaysResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :app_gateways, 1,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway,
    json_name: "appGateways"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.GetAppGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.CreateAppGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :app_gateway_id, 2, type: :string, json_name: "appGatewayId", deprecated: false

  field :app_gateway, 3,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway,
    json_name: "appGateway",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.DeleteAppGatewayRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.AllocatedConnection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :psc_uri, 1, type: :string, json_name: "pscUri", deprecated: false
  field :ingress_port, 2, type: :int32, json_name: "ingressPort", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :uid, 6, type: :string, deprecated: false

  field :type, 7,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.Type,
    enum: true,
    deprecated: false

  field :state, 8,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.State,
    enum: true,
    deprecated: false

  field :uri, 9, type: :string, deprecated: false

  field :allocated_connections, 10,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.AllocatedConnection,
    json_name: "allocatedConnections",
    deprecated: false

  field :host_type, 11,
    type: Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway.HostType,
    json_name: "hostType",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGatewayOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :create_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :target, 3, type: :string, deprecated: false
  field :verb, 4, type: :string, deprecated: false
  field :status_message, 5, type: :string, json_name: "statusMessage", deprecated: false

  field :requested_cancellation, 6,
    type: :bool,
    json_name: "requestedCancellation",
    deprecated: false

  field :api_version, 7, type: :string, json_name: "apiVersion", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGatewaysService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.beyondcorp.appgateways.v1.AppGatewaysService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :ListAppGateways,
      Google.Cloud.Beyondcorp.Appgateways.V1.ListAppGatewaysRequest,
      Google.Cloud.Beyondcorp.Appgateways.V1.ListAppGatewaysResponse

  rpc :GetAppGateway,
      Google.Cloud.Beyondcorp.Appgateways.V1.GetAppGatewayRequest,
      Google.Cloud.Beyondcorp.Appgateways.V1.AppGateway

  rpc :CreateAppGateway,
      Google.Cloud.Beyondcorp.Appgateways.V1.CreateAppGatewayRequest,
      Google.Longrunning.Operation

  rpc :DeleteAppGateway,
      Google.Cloud.Beyondcorp.Appgateways.V1.DeleteAppGatewayRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Beyondcorp.Appgateways.V1.AppGatewaysService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Beyondcorp.Appgateways.V1.AppGatewaysService.Service
end