defmodule Google.Cloud.Apihub.V1.Curation.LastExecutionState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :LAST_EXECUTION_STATE_UNSPECIFIED, 0
  field :SUCCEEDED, 1
  field :FAILED, 2
end

defmodule Google.Cloud.Apihub.V1.Curation.ErrorCode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :INTERNAL_ERROR, 1
  field :UNAUTHORIZED, 2
end

defmodule Google.Cloud.Apihub.V1.CreateCurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :curation_id, 2, type: :string, json_name: "curationId", deprecated: false
  field :curation, 3, type: Google.Cloud.Apihub.V1.Curation, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.GetCurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.UpdateCurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :curation, 1, type: Google.Cloud.Apihub.V1.Curation, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.DeleteCurationRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListCurationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string, deprecated: false
  field :page_size, 3, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 4, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ListCurationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :curations, 1, repeated: true, type: Google.Cloud.Apihub.V1.Curation
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Apihub.V1.Curation.PluginInstanceActionID do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :plugin_instance, 1, type: :string, json_name: "pluginInstance", deprecated: false
  field :action_id, 2, type: :string, json_name: "actionId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Curation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false
  field :endpoint, 4, type: Google.Cloud.Apihub.V1.Endpoint, deprecated: false

  field :plugin_instance_actions, 5,
    repeated: true,
    type: Google.Cloud.Apihub.V1.Curation.PluginInstanceActionID,
    json_name: "pluginInstanceActions",
    deprecated: false

  field :last_execution_state, 6,
    type: Google.Cloud.Apihub.V1.Curation.LastExecutionState,
    json_name: "lastExecutionState",
    enum: true,
    deprecated: false

  field :last_execution_error_code, 7,
    type: Google.Cloud.Apihub.V1.Curation.ErrorCode,
    json_name: "lastExecutionErrorCode",
    enum: true,
    deprecated: false

  field :last_execution_error_message, 8,
    type: :string,
    json_name: "lastExecutionErrorMessage",
    deprecated: false

  field :create_time, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.Endpoint do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :endpoint_details, 0

  field :application_integration_endpoint_details, 1,
    type: Google.Cloud.Apihub.V1.ApplicationIntegrationEndpointDetails,
    json_name: "applicationIntegrationEndpointDetails",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApplicationIntegrationEndpointDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :uri, 1, type: :string, deprecated: false
  field :trigger_id, 2, type: :string, json_name: "triggerId", deprecated: false
end

defmodule Google.Cloud.Apihub.V1.ApiHubCurate.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.apihub.v1.ApiHubCurate",
    protoc_gen_elixir_version: "0.15.0"

  rpc :CreateCuration,
      Google.Cloud.Apihub.V1.CreateCurationRequest,
      Google.Cloud.Apihub.V1.Curation

  rpc :GetCuration, Google.Cloud.Apihub.V1.GetCurationRequest, Google.Cloud.Apihub.V1.Curation

  rpc :ListCurations,
      Google.Cloud.Apihub.V1.ListCurationsRequest,
      Google.Cloud.Apihub.V1.ListCurationsResponse

  rpc :UpdateCuration,
      Google.Cloud.Apihub.V1.UpdateCurationRequest,
      Google.Cloud.Apihub.V1.Curation

  rpc :DeleteCuration, Google.Cloud.Apihub.V1.DeleteCurationRequest, Google.Protobuf.Empty
end

defmodule Google.Cloud.Apihub.V1.ApiHubCurate.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Apihub.V1.ApiHubCurate.Service
end
