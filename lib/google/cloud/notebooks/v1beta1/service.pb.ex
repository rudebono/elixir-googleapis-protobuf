defmodule Google.Cloud.Notebooks.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          target: String.t(),
          verb: String.t(),
          status_message: String.t(),
          requested_cancellation: boolean,
          api_version: String.t(),
          endpoint: String.t()
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version,
    :endpoint
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string, json_name: "statusMessage"
  field :requested_cancellation, 6, type: :bool, json_name: "requestedCancellation"
  field :api_version, 7, type: :string, json_name: "apiVersion"
  field :endpoint, 8, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ListInstancesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ListInstancesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          instances: [Google.Cloud.Notebooks.V1beta1.Instance.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:instances, :next_page_token, :unreachable]

  field :instances, 1, repeated: true, type: Google.Cloud.Notebooks.V1beta1.Instance
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.GetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.CreateInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t(),
          instance: Google.Cloud.Notebooks.V1beta1.Instance.t() | nil
        }

  defstruct [:parent, :instance_id, :instance]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId"
  field :instance, 3, type: Google.Cloud.Notebooks.V1beta1.Instance

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.RegisterInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          instance_id: String.t()
        }

  defstruct [:parent, :instance_id]

  field :parent, 1, type: :string
  field :instance_id, 2, type: :string, json_name: "instanceId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceAcceleratorRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          type: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorType.t(),
          core_count: integer
        }

  defstruct [:name, :type, :core_count]

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Notebooks.V1beta1.Instance.AcceleratorType, enum: true
  field :core_count, 3, type: :int64, json_name: "coreCount"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceMachineTypeRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          machine_type: String.t()
        }

  defstruct [:name, :machine_type]

  field :name, 1, type: :string
  field :machine_type, 2, type: :string, json_name: "machineType"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          labels: %{String.t() => String.t()}
        }

  defstruct [:name, :labels]

  field :name, 1, type: :string

  field :labels, 2,
    repeated: true,
    type: Google.Cloud.Notebooks.V1beta1.SetInstanceLabelsRequest.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.DeleteInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.StartInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.StopInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ResetInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest.MetadataEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vm_id: String.t(),
          metadata: %{String.t() => String.t()}
        }

  defstruct [:name, :vm_id, :metadata]

  field :name, 1, type: :string
  field :vm_id, 2, type: :string, json_name: "vmId"

  field :metadata, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V1beta1.ReportInstanceInfoRequest.MetadataEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.IsInstanceUpgradeableRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notebook_instance: String.t()
        }

  defstruct [:notebook_instance]

  field :notebook_instance, 1, type: :string, json_name: "notebookInstance"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.IsInstanceUpgradeableResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          upgradeable: boolean,
          upgrade_version: String.t(),
          upgrade_info: String.t()
        }

  defstruct [:upgradeable, :upgrade_version, :upgrade_info]

  field :upgradeable, 1, type: :bool
  field :upgrade_version, 2, type: :string, json_name: "upgradeVersion"
  field :upgrade_info, 3, type: :string, json_name: "upgradeInfo"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.UpgradeInstanceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.UpgradeInstanceInternalRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          vm_id: String.t()
        }

  defstruct [:name, :vm_id]

  field :name, 1, type: :string
  field :vm_id, 2, type: :string, json_name: "vmId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ListEnvironmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.ListEnvironmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          environments: [Google.Cloud.Notebooks.V1beta1.Environment.t()],
          next_page_token: String.t(),
          unreachable: [String.t()]
        }

  defstruct [:environments, :next_page_token, :unreachable]

  field :environments, 1, repeated: true, type: Google.Cloud.Notebooks.V1beta1.Environment
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.GetEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.CreateEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          environment_id: String.t(),
          environment: Google.Cloud.Notebooks.V1beta1.Environment.t() | nil
        }

  defstruct [:parent, :environment_id, :environment]

  field :parent, 1, type: :string
  field :environment_id, 2, type: :string, json_name: "environmentId"
  field :environment, 3, type: Google.Cloud.Notebooks.V1beta1.Environment

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.DeleteEnvironmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Notebooks.V1beta1.NotebookService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.notebooks.v1beta1.NotebookService"

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
