defmodule Google.Api.Servicemanagement.V1.OperationMetadata.Status do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATUS_UNSPECIFIED
          | :DONE
          | :NOT_STARTED
          | :IN_PROGRESS
          | :FAILED
          | :CANCELLED

  field :STATUS_UNSPECIFIED, 0
  field :DONE, 1
  field :NOT_STARTED, 2
  field :IN_PROGRESS, 3
  field :FAILED, 4
  field :CANCELLED, 5
end

defmodule Google.Api.Servicemanagement.V1.Diagnostic.Kind do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :WARNING | :ERROR

  field :WARNING, 0
  field :ERROR, 1
end

defmodule Google.Api.Servicemanagement.V1.ConfigFile.FileType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :FILE_TYPE_UNSPECIFIED
          | :SERVICE_CONFIG_YAML
          | :OPEN_API_JSON
          | :OPEN_API_YAML
          | :FILE_DESCRIPTOR_SET_PROTO
          | :PROTO_FILE

  field :FILE_TYPE_UNSPECIFIED, 0
  field :SERVICE_CONFIG_YAML, 1
  field :OPEN_API_JSON, 2
  field :OPEN_API_YAML, 3
  field :FILE_DESCRIPTOR_SET_PROTO, 4
  field :PROTO_FILE, 6
end

defmodule Google.Api.Servicemanagement.V1.Rollout.RolloutStatus do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROLLOUT_STATUS_UNSPECIFIED
          | :IN_PROGRESS
          | :SUCCESS
          | :CANCELLED
          | :FAILED
          | :PENDING
          | :FAILED_ROLLED_BACK

  field :ROLLOUT_STATUS_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :SUCCESS, 2
  field :CANCELLED, 3
  field :FAILED, 4
  field :PENDING, 5
  field :FAILED_ROLLED_BACK, 6
end

defmodule Google.Api.Servicemanagement.V1.ManagedService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          service_name: String.t(),
          producer_project_id: String.t()
        }

  defstruct [:service_name, :producer_project_id]

  field :service_name, 2, type: :string, json_name: "serviceName"
  field :producer_project_id, 3, type: :string, json_name: "producerProjectId"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.OperationMetadata.Step do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t(),
          status: Google.Api.Servicemanagement.V1.OperationMetadata.Status.t()
        }

  defstruct [:description, :status]

  field :description, 2, type: :string
  field :status, 4, type: Google.Api.Servicemanagement.V1.OperationMetadata.Status, enum: true

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()],
          steps: [Google.Api.Servicemanagement.V1.OperationMetadata.Step.t()],
          progress_percentage: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:resource_names, :steps, :progress_percentage, :start_time]

  field :resource_names, 1, repeated: true, type: :string, json_name: "resourceNames"
  field :steps, 2, repeated: true, type: Google.Api.Servicemanagement.V1.OperationMetadata.Step
  field :progress_percentage, 3, type: :int32, json_name: "progressPercentage"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.Diagnostic do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          location: String.t(),
          kind: Google.Api.Servicemanagement.V1.Diagnostic.Kind.t(),
          message: String.t()
        }

  defstruct [:location, :kind, :message]

  field :location, 1, type: :string
  field :kind, 2, type: Google.Api.Servicemanagement.V1.Diagnostic.Kind, enum: true
  field :message, 3, type: :string

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.ConfigSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          id: String.t(),
          files: [Google.Api.Servicemanagement.V1.ConfigFile.t()]
        }

  defstruct [:id, :files]

  field :id, 5, type: :string
  field :files, 2, repeated: true, type: Google.Api.Servicemanagement.V1.ConfigFile

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.ConfigFile do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          file_path: String.t(),
          file_contents: binary,
          file_type: Google.Api.Servicemanagement.V1.ConfigFile.FileType.t()
        }

  defstruct [:file_path, :file_contents, :file_type]

  field :file_path, 1, type: :string, json_name: "filePath"
  field :file_contents, 3, type: :bytes, json_name: "fileContents"

  field :file_type, 4,
    type: Google.Api.Servicemanagement.V1.ConfigFile.FileType,
    enum: true,
    json_name: "fileType"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.ConfigRef do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.ChangeReport do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          config_changes: [Google.Api.ConfigChange.t()]
        }

  defstruct [:config_changes]

  field :config_changes, 1,
    repeated: true,
    type: Google.Api.ConfigChange,
    json_name: "configChanges"

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy.PercentagesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :double

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          percentages: %{String.t() => float | :infinity | :negative_infinity | :nan}
        }

  defstruct [:percentages]

  field :percentages, 1,
    repeated: true,
    type: Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy.PercentagesEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.Rollout.DeleteServiceStrategy do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []

  def transform_module(), do: nil
end

defmodule Google.Api.Servicemanagement.V1.Rollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          strategy:
            {:traffic_percent_strategy,
             Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy.t() | nil}
            | {:delete_service_strategy,
               Google.Api.Servicemanagement.V1.Rollout.DeleteServiceStrategy.t() | nil},
          rollout_id: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          created_by: String.t(),
          status: Google.Api.Servicemanagement.V1.Rollout.RolloutStatus.t(),
          service_name: String.t()
        }

  defstruct [:strategy, :rollout_id, :create_time, :created_by, :status, :service_name]

  oneof :strategy, 0

  field :rollout_id, 1, type: :string, json_name: "rolloutId"
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :created_by, 3, type: :string, json_name: "createdBy"
  field :status, 4, type: Google.Api.Servicemanagement.V1.Rollout.RolloutStatus, enum: true

  field :traffic_percent_strategy, 5,
    type: Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy,
    json_name: "trafficPercentStrategy",
    oneof: 0

  field :delete_service_strategy, 200,
    type: Google.Api.Servicemanagement.V1.Rollout.DeleteServiceStrategy,
    json_name: "deleteServiceStrategy",
    oneof: 0

  field :service_name, 8, type: :string, json_name: "serviceName"

  def transform_module(), do: nil
end
