defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :TCP_PROXY, 1
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :DOWN, 5
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.Gateway.Type do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :TYPE_UNSPECIFIED, 0
  field :GCP_REGIONAL_MIG, 1
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.ListAppConnectionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.ListAppConnectionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :app_connections, 1,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection,
    json_name: "appConnections"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.GetAppConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.CreateAppConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :app_connection_id, 2, type: :string, json_name: "appConnectionId", deprecated: false

  field :app_connection, 3,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection,
    json_name: "appConnection",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.UpdateAppConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :app_connection, 2,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection,
    json_name: "appConnection",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
  field :allow_missing, 5, type: :bool, json_name: "allowMissing", deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.DeleteAppConnectionRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.ResolveAppConnectionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :app_connector_id, 2, type: :string, json_name: "appConnectorId", deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.ResolveAppConnectionsResponse.AppConnectionDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :app_connection, 1,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection,
    json_name: "appConnection"

  field :recent_mig_vms, 2, repeated: true, type: :string, json_name: "recentMigVms"
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.ResolveAppConnectionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :app_connection_details, 1,
    repeated: true,
    type:
      Google.Cloud.Beyondcorp.Appconnections.V1.ResolveAppConnectionsResponse.AppConnectionDetails,
    json_name: "appConnectionDetails"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.ApplicationEndpoint do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :host, 1, type: :string, deprecated: false
  field :port, 2, type: :int32, deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.Gateway do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :type, 2,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.Gateway.Type,
    enum: true,
    deprecated: false

  field :uri, 3, type: :string, deprecated: false
  field :ingress_port, 4, type: :int32, json_name: "ingressPort", deprecated: false
  field :app_gateway, 5, type: :string, json_name: "appGateway", deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :uid, 6, type: :string, deprecated: false

  field :type, 7,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.Type,
    enum: true,
    deprecated: false

  field :application_endpoint, 8,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.ApplicationEndpoint,
    json_name: "applicationEndpoint",
    deprecated: false

  field :connectors, 9, repeated: true, type: :string, deprecated: false

  field :state, 10,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.State,
    enum: true,
    deprecated: false

  field :gateway, 11,
    type: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection.Gateway,
    deprecated: false
end
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnectionOperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

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
defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnectionsService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.beyondcorp.appconnections.v1.AppConnectionsService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListAppConnections,
      Google.Cloud.Beyondcorp.Appconnections.V1.ListAppConnectionsRequest,
      Google.Cloud.Beyondcorp.Appconnections.V1.ListAppConnectionsResponse

  rpc :GetAppConnection,
      Google.Cloud.Beyondcorp.Appconnections.V1.GetAppConnectionRequest,
      Google.Cloud.Beyondcorp.Appconnections.V1.AppConnection

  rpc :CreateAppConnection,
      Google.Cloud.Beyondcorp.Appconnections.V1.CreateAppConnectionRequest,
      Google.Longrunning.Operation

  rpc :UpdateAppConnection,
      Google.Cloud.Beyondcorp.Appconnections.V1.UpdateAppConnectionRequest,
      Google.Longrunning.Operation

  rpc :DeleteAppConnection,
      Google.Cloud.Beyondcorp.Appconnections.V1.DeleteAppConnectionRequest,
      Google.Longrunning.Operation

  rpc :ResolveAppConnections,
      Google.Cloud.Beyondcorp.Appconnections.V1.ResolveAppConnectionsRequest,
      Google.Cloud.Beyondcorp.Appconnections.V1.ResolveAppConnectionsResponse
end

defmodule Google.Cloud.Beyondcorp.Appconnections.V1.AppConnectionsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Beyondcorp.Appconnections.V1.AppConnectionsService.Service
end
