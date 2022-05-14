defmodule Google.Cloud.Notebooks.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
  field :endpoint, 8, type: :string
end
defmodule Google.Cloud.Notebooks.V1beta1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Notebooks.V1beta1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :instances, 1, repeated: true, type: Google.Cloud.Notebooks.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1beta1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
  field :instance, 3, type: Google.Cloud.Notebooks.V1beta1.Instance, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.RegisterInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :instance_id, 2, type: :string, json_name: "instanceId", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceAcceleratorRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorType,
    enum: true,
    deprecated: false

  field :core_count, 3, type: :int64, json_name: "coreCount", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceMachineTypeRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :machine_type, 2, type: :string, json_name: "machineType", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1beta1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.StartInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.StopInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.ResetInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest.MetadataEntry,
    map: true
end
defmodule Google.Cloud.Notebooks.V1beta1.IsInstanceUpgradeableRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :notebook_instance, 1, type: :string, json_name: "notebookInstance", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.IsInstanceUpgradeableResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :upgradeable, 1, type: :bool
  field :upgrade_version, 2, type: :string, json_name: "upgradeVersion"
  field :upgrade_info, 3, type: :string, json_name: "upgradeInfo"
end
defmodule Google.Cloud.Notebooks.V1beta1.UpgradeInstanceRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.UpgradeInstanceInternalRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vm_id, 2, type: :string, json_name: "vmId", deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Notebooks.V1beta1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :environments, 1, repeated: true, type: Google.Cloud.Notebooks.V1beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end
defmodule Google.Cloud.Notebooks.V1beta1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :environment_id, 2, type: :string, json_name: "environmentId", deprecated: false
  field :environment, 3, type: Google.Cloud.Notebooks.V1beta1.Environment, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Notebooks.V1beta1.NotebookService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.notebooks.v1beta1.NotebookService",
    protoc_gen_elixir_version: "0.10.0"

  rpc :ListInstances,
      Google.Cloud.Notebooks.V1beta1.ListInstancesRequest,
      Google.Cloud.Notebooks.V1beta1.ListInstancesResponse

  rpc :GetInstance,
      Google.Cloud.Notebooks.V1beta1.GetInstanceRequest,
      Google.Cloud.Notebooks.V1beta1.Instance

  rpc :CreateInstance,
      Google.Cloud.Notebooks.V1beta1.CreateInstanceRequest,
      Google.Longrunning.Operation

  rpc :RegisterInstance,
      Google.Cloud.Notebooks.V1beta1.RegisterInstanceRequest,
      Google.Longrunning.Operation

  rpc :SetInstanceAccelerator,
      Google.Cloud.Notebooks.V1beta1.SetInstanceAcceleratorRequest,
      Google.Longrunning.Operation

  rpc :SetInstanceMachineType,
      Google.Cloud.Notebooks.V1beta1.SetInstanceMachineTypeRequest,
      Google.Longrunning.Operation

  rpc :SetInstanceLabels,
      Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest,
      Google.Longrunning.Operation

  rpc :DeleteInstance,
      Google.Cloud.Notebooks.V1beta1.DeleteInstanceRequest,
      Google.Longrunning.Operation

  rpc :StartInstance,
      Google.Cloud.Notebooks.V1beta1.StartInstanceRequest,
      Google.Longrunning.Operation

  rpc :StopInstance,
      Google.Cloud.Notebooks.V1beta1.StopInstanceRequest,
      Google.Longrunning.Operation

  rpc :ResetInstance,
      Google.Cloud.Notebooks.V1beta1.ResetInstanceRequest,
      Google.Longrunning.Operation

  rpc :ReportInstanceInfo,
      Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest,
      Google.Longrunning.Operation

  rpc :IsInstanceUpgradeable,
      Google.Cloud.Notebooks.V1beta1.IsInstanceUpgradeableRequest,
      Google.Cloud.Notebooks.V1beta1.IsInstanceUpgradeableResponse

  rpc :UpgradeInstance,
      Google.Cloud.Notebooks.V1beta1.UpgradeInstanceRequest,
      Google.Longrunning.Operation

  rpc :UpgradeInstanceInternal,
      Google.Cloud.Notebooks.V1beta1.UpgradeInstanceInternalRequest,
      Google.Longrunning.Operation

  rpc :ListEnvironments,
      Google.Cloud.Notebooks.V1beta1.ListEnvironmentsRequest,
      Google.Cloud.Notebooks.V1beta1.ListEnvironmentsResponse

  rpc :GetEnvironment,
      Google.Cloud.Notebooks.V1beta1.GetEnvironmentRequest,
      Google.Cloud.Notebooks.V1beta1.Environment

  rpc :CreateEnvironment,
      Google.Cloud.Notebooks.V1beta1.CreateEnvironmentRequest,
      Google.Longrunning.Operation

  rpc :DeleteEnvironment,
      Google.Cloud.Notebooks.V1beta1.DeleteEnvironmentRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Notebooks.V1beta1.NotebookService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Notebooks.V1beta1.NotebookService.Service
end
