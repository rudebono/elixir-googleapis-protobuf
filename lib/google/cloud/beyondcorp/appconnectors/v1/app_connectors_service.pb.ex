defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :CREATED, 2
  field :UPDATING, 3
  field :DELETING, 4
  field :DOWN, 5
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.ListAppConnectorsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :filter, 4, type: :string, deprecated: false
  field :order_by, 5, type: :string, json_name: "orderBy", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.ListAppConnectorsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_connectors, 1,
    repeated: true,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector,
    json_name: "appConnectors"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.GetAppConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.CreateAppConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :app_connector_id, 2, type: :string, json_name: "appConnectorId", deprecated: false

  field :app_connector, 3,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector,
    json_name: "appConnector",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 5, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.UpdateAppConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :app_connector, 2,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector,
    json_name: "appConnector",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.DeleteAppConnectorRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 3, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.ReportStatusRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :app_connector, 1, type: :string, json_name: "appConnector", deprecated: false

  field :resource_info, 2,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.ResourceInfo,
    json_name: "resourceInfo",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly", deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.PrincipalInfo.ServiceAccount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :email, 1, type: :string
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.PrincipalInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :type, 0

  field :service_account, 1,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.PrincipalInfo.ServiceAccount,
    json_name: "serviceAccount",
    oneof: 0
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.LabelsEntry,
    map: true,
    deprecated: false

  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
  field :uid, 6, type: :string, deprecated: false

  field :state, 7,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.State,
    enum: true,
    deprecated: false

  field :principal_info, 8,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector.PrincipalInfo,
    json_name: "principalInfo",
    deprecated: false

  field :resource_info, 11,
    type: Google.Cloud.Beyondcorp.Appconnectors.V1.ResourceInfo,
    json_name: "resourceInfo",
    deprecated: false
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnectorOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

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

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnectorsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.beyondcorp.appconnectors.v1.AppConnectorsService",
    protoc_gen_elixir_version: "0.12.0"

  rpc :ListAppConnectors,
      Google.Cloud.Beyondcorp.Appconnectors.V1.ListAppConnectorsRequest,
      Google.Cloud.Beyondcorp.Appconnectors.V1.ListAppConnectorsResponse

  rpc :GetAppConnector,
      Google.Cloud.Beyondcorp.Appconnectors.V1.GetAppConnectorRequest,
      Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnector

  rpc :CreateAppConnector,
      Google.Cloud.Beyondcorp.Appconnectors.V1.CreateAppConnectorRequest,
      Google.Longrunning.Operation

  rpc :UpdateAppConnector,
      Google.Cloud.Beyondcorp.Appconnectors.V1.UpdateAppConnectorRequest,
      Google.Longrunning.Operation

  rpc :DeleteAppConnector,
      Google.Cloud.Beyondcorp.Appconnectors.V1.DeleteAppConnectorRequest,
      Google.Longrunning.Operation

  rpc :ReportStatus,
      Google.Cloud.Beyondcorp.Appconnectors.V1.ReportStatusRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnectorsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Beyondcorp.Appconnectors.V1.AppConnectorsService.Service
end