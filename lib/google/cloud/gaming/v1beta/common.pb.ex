defmodule Google.Cloud.Gaming.V1beta.OperationStatus.ErrorCode do
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
defmodule Google.Cloud.Gaming.V1beta.OperationMetadata.OperationStatusEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Gaming.V1beta.OperationStatus.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gaming.V1beta.OperationStatus
end
defmodule Google.Cloud.Gaming.V1beta.OperationMetadata do
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
          operation_status: %{String.t() => Google.Cloud.Gaming.V1beta.OperationStatus.t() | nil}
        }

  defstruct create_time: nil,
            end_time: nil,
            target: "",
            verb: "",
            status_message: "",
            requested_cancellation: false,
            api_version: "",
            unreachable: [],
            operation_status: %{}

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
  field :unreachable, 8, repeated: true, type: :string, deprecated: false

  field :operation_status, 9,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.OperationMetadata.OperationStatusEntry,
    json_name: "operationStatus",
    map: true,
    deprecated: false
end
defmodule Google.Cloud.Gaming.V1beta.OperationStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          done: boolean,
          error_code: Google.Cloud.Gaming.V1beta.OperationStatus.ErrorCode.t(),
          error_message: String.t()
        }

  defstruct done: false,
            error_code: :ERROR_CODE_UNSPECIFIED,
            error_message: ""

  field :done, 1, type: :bool, deprecated: false

  field :error_code, 2,
    type: Google.Cloud.Gaming.V1beta.OperationStatus.ErrorCode,
    json_name: "errorCode",
    enum: true

  field :error_message, 3, type: :string, json_name: "errorMessage"
end
defmodule Google.Cloud.Gaming.V1beta.LabelSelector.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Gaming.V1beta.LabelSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()}
        }

  defstruct labels: %{}

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.LabelSelector.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Gaming.V1beta.RealmSelector do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          realms: [String.t()]
        }

  defstruct realms: []

  field :realms, 1, repeated: true, type: :string
end
defmodule Google.Cloud.Gaming.V1beta.Schedule do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          cron_job_duration: Google.Protobuf.Duration.t() | nil,
          cron_spec: String.t()
        }

  defstruct start_time: nil,
            end_time: nil,
            cron_job_duration: nil,
            cron_spec: ""

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :cron_job_duration, 3, type: Google.Protobuf.Duration, json_name: "cronJobDuration"
  field :cron_spec, 4, type: :string, json_name: "cronSpec"
end
defmodule Google.Cloud.Gaming.V1beta.SpecSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_config_name: String.t(),
          name: String.t()
        }

  defstruct game_server_config_name: "",
            name: ""

  field :game_server_config_name, 1, type: :string, json_name: "gameServerConfigName"
  field :name, 2, type: :string
end
defmodule Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spec_source: Google.Cloud.Gaming.V1beta.SpecSource.t() | nil
        }

  defstruct name: "",
            spec_source: nil

  field :name, 1, type: :string
  field :spec_source, 2, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"
end
defmodule Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          spec_source: Google.Cloud.Gaming.V1beta.SpecSource.t() | nil
        }

  defstruct name: "",
            spec_source: nil

  field :name, 1, type: :string
  field :spec_source, 2, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"
end
defmodule Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fleet:
            Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleet.t() | nil,
          autoscaler:
            Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler.t()
            | nil
        }

  defstruct fleet: nil,
            autoscaler: nil

  field :fleet, 1, type: Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleet

  field :autoscaler, 2,
    type: Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler
end
defmodule Google.Cloud.Gaming.V1beta.TargetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          game_server_cluster_name: String.t(),
          game_server_deployment_name: String.t(),
          fleet_details: [Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.t()]
        }

  defstruct game_server_cluster_name: "",
            game_server_deployment_name: "",
            fleet_details: []

  field :game_server_cluster_name, 1, type: :string, json_name: "gameServerClusterName"
  field :game_server_deployment_name, 2, type: :string, json_name: "gameServerDeploymentName"

  field :fleet_details, 3,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails,
    json_name: "fleetDetails"
end
defmodule Google.Cloud.Gaming.V1beta.TargetState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          details: [Google.Cloud.Gaming.V1beta.TargetDetails.t()]
        }

  defstruct details: []

  field :details, 1, repeated: true, type: Google.Cloud.Gaming.V1beta.TargetDetails
end
defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ready_replicas: integer,
          allocated_replicas: integer,
          reserved_replicas: integer,
          replicas: integer
        }

  defstruct ready_replicas: 0,
            allocated_replicas: 0,
            reserved_replicas: 0,
            replicas: 0

  field :ready_replicas, 1, type: :int64, json_name: "readyReplicas"
  field :allocated_replicas, 2, type: :int64, json_name: "allocatedReplicas"
  field :reserved_replicas, 3, type: :int64, json_name: "reservedReplicas"
  field :replicas, 4, type: :int64
end
defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          fleet: String.t(),
          fleet_spec: String.t(),
          spec_source: Google.Cloud.Gaming.V1beta.SpecSource.t() | nil,
          status:
            Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus.t()
            | nil
        }

  defstruct fleet: "",
            fleet_spec: "",
            spec_source: nil,
            status: nil

  field :fleet, 1, type: :string
  field :fleet_spec, 2, type: :string, json_name: "fleetSpec"
  field :spec_source, 3, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"

  field :status, 5,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus
end
defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleetAutoscaler do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          autoscaler: String.t(),
          spec_source: Google.Cloud.Gaming.V1beta.SpecSource.t() | nil,
          fleet_autoscaler_spec: String.t()
        }

  defstruct autoscaler: "",
            spec_source: nil,
            fleet_autoscaler_spec: ""

  field :autoscaler, 1, type: :string
  field :spec_source, 4, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"
  field :fleet_autoscaler_spec, 3, type: :string, json_name: "fleetAutoscalerSpec"
end
defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          deployed_fleet: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet.t() | nil,
          deployed_autoscaler:
            Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleetAutoscaler.t() | nil
        }

  defstruct deployed_fleet: nil,
            deployed_autoscaler: nil

  field :deployed_fleet, 1,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet,
    json_name: "deployedFleet"

  field :deployed_autoscaler, 2,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleetAutoscaler,
    json_name: "deployedAutoscaler"
end
