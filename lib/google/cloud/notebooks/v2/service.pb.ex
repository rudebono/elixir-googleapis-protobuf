defmodule Google.Cloud.Notebooks.V2.OperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
  field :endpoint, 8, type: :string
end

defmodule Google.Cloud.Notebooks.V2.ListInstancesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
  field :order_by, 4, type: :string, json_name: "orderBy", deprecated: false
  field :filter, 5, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.ListInstancesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Notebooks.V2.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Notebooks.V2.GetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.CreateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Notebooks.V2.Instance, deprecated: false
  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.UpdateInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :instance, 1, type: Google.Cloud.Notebooks.V2.Instance, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.DeleteInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.StartInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.StopInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.ResetInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.CheckInstanceUpgradabilityRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :notebook_instance, 1, type: :string, json_name: "notebookInstance", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.CheckInstanceUpgradabilityResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :upgradeable, 1, type: :bool
  field :upgrade_version, 2, type: :string, json_name: "upgradeVersion"
  field :upgrade_info, 3, type: :string, json_name: "upgradeInfo"
  field :upgrade_image, 4, type: :string, json_name: "upgradeImage"
end

defmodule Google.Cloud.Notebooks.V2.UpgradeInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.RollbackInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :target_snapshot, 2, type: :string, json_name: "targetSnapshot", deprecated: false
  field :revision_id, 3, type: :string, json_name: "revisionId", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.DiagnoseInstanceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :diagnostic_config, 2,
    type: Google.Cloud.Notebooks.V2.DiagnosticConfig,
    json_name: "diagnosticConfig",
    deprecated: false

  field :timeout_minutes, 3, type: :int32, json_name: "timeoutMinutes", deprecated: false
end

defmodule Google.Cloud.Notebooks.V2.NotebookService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.notebooks.v2.NotebookService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :ListInstances,
      Google.Cloud.Notebooks.V2.ListInstancesRequest,
      Google.Cloud.Notebooks.V2.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Notebooks.V2.GetInstanceRequest,
      Google.Cloud.Notebooks.V2.Instance

  rpc :CreateInstance,
      Google.Cloud.Notebooks.V2.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpdateInstance,
      Google.Cloud.Notebooks.V2.UpdateInstanceRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Notebooks.V2.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :StartInstance, Google.Cloud.Notebooks.V2.StartInstanceRequest, Google.Longrunning.Operation

  rpc :StopInstance, Google.Cloud.Notebooks.V2.StopInstanceRequest, Google.Longrunning.Operation

  rpc :ResetInstance, Google.Cloud.Notebooks.V2.ResetInstanceRequest, Google.Longrunning.Operation

  rpc :CheckInstanceUpgradability,
      Google.Cloud.Notebooks.V2.CheckInstanceUpgradabilityRequest,
      Google.Cloud.Notebooks.V2.CheckInstanceUpgradabilityResponse

  rpc :UpgradeInstance,
      Google.Cloud.Notebooks.V2.UpgradeInstanceRequest,
      Google.Longrunning.Operation

  rpc :RollbackInstance,
      Google.Cloud.Notebooks.V2.RollbackInstanceRequest,
      Google.Longrunning.Operation

  rpc :DiagnoseInstance,
      Google.Cloud.Notebooks.V2.DiagnoseInstanceRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Notebooks.V2.NotebookService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Notebooks.V2.NotebookService.Service
end