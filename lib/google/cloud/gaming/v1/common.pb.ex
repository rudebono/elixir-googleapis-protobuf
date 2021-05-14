defmodule Google.Cloud.Gaming.V1.OperationStatus.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ERROR_CODE_UNSPECIFIED
          | :INTERNAL_ERROR
          | :PERMISSION_DENIED
          | :CLUSTER_CONNECTION

  field :ERROR_CODE_UNSPECIFIED, 0

  field :INTERNAL_ERROR, 1

  field :PERMISSION_DENIED, 2

  field :CLUSTER_CONNECTION, 3
end

defmodule Google.Cloud.Gaming.V1.OperationMetadata.OperationStatusEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Gaming.V1.OperationStatus.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gaming.V1.OperationStatus
end

defmodule Google.Cloud.Gaming.V1.OperationMetadata do
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
          unreachable: [String.t()],
          operation_status: %{String.t() => Google.Cloud.Gaming.V1.OperationStatus.t() | nil}
        }

  defstruct [
    :create_time,
    :end_time,
    :target,
    :verb,
    :status_message,
    :requested_cancellation,
    :api_version,
    :unreachable,
    :operation_status
  ]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :target, 3, type: :string
  field :verb, 4, type: :string
  field :status_message, 5, type: :string
  field :requested_cancellation, 6, type: :bool
  field :api_version, 7, type: :string
  field :unreachable, 8, repeated: true, type: :string

  field :operation_status, 9,
    repeated: true,
    type: Google.Cloud.Gaming.V1.OperationMetadata.OperationStatusEntry,
    map: true
end

defmodule Google.Cloud.Gaming.V1.OperationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          done: boolean,
          error_code: Google.Cloud.Gaming.V1.OperationStatus.ErrorCode.t(),
          error_message: String.t()
        }

  defstruct [:done, :error_code, :error_message]

  field :done, 1, type: :bool
  field :error_code, 2, type: Google.Cloud.Gaming.V1.OperationStatus.ErrorCode, enum: true
  field :error_message, 3, type: :string
end

defmodule Google.Cloud.Gaming.V1.LabelSelector.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.LabelSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()}
        }

  defstruct [:labels]

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1.LabelSelector.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Gaming.V1.RealmSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          realms: [String.t()]
        }

  defstruct [:realms]

  field :realms, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          cron_job_duration: Google.Protobuf.Duration.t() | nil,
          cron_spec: String.t()
        }

  defstruct [:start_time, :end_time, :cron_job_duration, :cron_spec]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
  field :cron_job_duration, 3, type: Google.Protobuf.Duration
  field :cron_spec, 4, type: :string
end

defmodule Google.Cloud.Gaming.V1.SpecSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_config_name: String.t(),
          name: String.t()
        }

  defstruct [:game_server_config_name, :name]

  field :game_server_config_name, 1, type: :string
  field :name, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.TargetFleet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spec_source: Google.Cloud.Gaming.V1.SpecSource.t() | nil
        }

  defstruct [:name, :spec_source]

  field :name, 1, type: :string
  field :spec_source, 2, type: Google.Cloud.Gaming.V1.SpecSource
end

defmodule Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spec_source: Google.Cloud.Gaming.V1.SpecSource.t() | nil
        }

  defstruct [:name, :spec_source]

  field :name, 1, type: :string
  field :spec_source, 2, type: Google.Cloud.Gaming.V1.SpecSource
end

defmodule Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fleet: Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.TargetFleet.t() | nil,
          autoscaler:
            Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler.t()
            | nil
        }

  defstruct [:fleet, :autoscaler]

  field :fleet, 1, type: Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.TargetFleet

  field :autoscaler, 2,
    type: Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler
end

defmodule Google.Cloud.Gaming.V1.TargetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster_name: String.t(),
          game_server_deployment_name: String.t(),
          fleet_details: [Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails.t()]
        }

  defstruct [:game_server_cluster_name, :game_server_deployment_name, :fleet_details]

  field :game_server_cluster_name, 1, type: :string
  field :game_server_deployment_name, 2, type: :string

  field :fleet_details, 3,
    repeated: true,
    type: Google.Cloud.Gaming.V1.TargetDetails.TargetFleetDetails
end

defmodule Google.Cloud.Gaming.V1.TargetState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: [Google.Cloud.Gaming.V1.TargetDetails.t()]
        }

  defstruct [:details]

  field :details, 1, repeated: true, type: Google.Cloud.Gaming.V1.TargetDetails
end

defmodule Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ready_replicas: integer,
          allocated_replicas: integer,
          reserved_replicas: integer,
          replicas: integer
        }

  defstruct [:ready_replicas, :allocated_replicas, :reserved_replicas, :replicas]

  field :ready_replicas, 1, type: :int64
  field :allocated_replicas, 2, type: :int64
  field :reserved_replicas, 3, type: :int64
  field :replicas, 4, type: :int64
end

defmodule Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fleet: String.t(),
          fleet_spec: String.t(),
          spec_source: Google.Cloud.Gaming.V1.SpecSource.t() | nil,
          status:
            Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus.t()
            | nil
        }

  defstruct [:fleet, :fleet_spec, :spec_source, :status]

  field :fleet, 1, type: :string
  field :fleet_spec, 2, type: :string
  field :spec_source, 3, type: Google.Cloud.Gaming.V1.SpecSource

  field :status, 5,
    type: Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus
end

defmodule Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleetAutoscaler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          autoscaler: String.t(),
          spec_source: Google.Cloud.Gaming.V1.SpecSource.t() | nil,
          fleet_autoscaler_spec: String.t()
        }

  defstruct [:autoscaler, :spec_source, :fleet_autoscaler_spec]

  field :autoscaler, 1, type: :string
  field :spec_source, 4, type: Google.Cloud.Gaming.V1.SpecSource
  field :fleet_autoscaler_spec, 3, type: :string
end

defmodule Google.Cloud.Gaming.V1.DeployedFleetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_fleet: Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleet.t() | nil,
          deployed_autoscaler:
            Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleetAutoscaler.t() | nil
        }

  defstruct [:deployed_fleet, :deployed_autoscaler]

  field :deployed_fleet, 1, type: Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleet

  field :deployed_autoscaler, 2,
    type: Google.Cloud.Gaming.V1.DeployedFleetDetails.DeployedFleetAutoscaler
end
