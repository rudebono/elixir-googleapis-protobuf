defmodule Google.Cloud.Gaming.V1beta.OperationStatus.ErrorCode do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ERROR_CODE_UNSPECIFIED, 0
  field :INTERNAL_ERROR, 1
  field :PERMISSION_DENIED, 2
  field :CLUSTER_CONNECTION, 3
end

defmodule Google.Cloud.Gaming.V1beta.OperationMetadata.OperationStatusEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Gaming.V1beta.OperationStatus
end

defmodule Google.Cloud.Gaming.V1beta.OperationMetadata do
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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :done, 1, type: :bool, deprecated: false

  field :error_code, 2,
    type: Google.Cloud.Gaming.V1beta.OperationStatus.ErrorCode,
    json_name: "errorCode",
    enum: true

  field :error_message, 3, type: :string, json_name: "errorMessage"
end

defmodule Google.Cloud.Gaming.V1beta.LabelSelector.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.LabelSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.LabelSelector.LabelsEntry,
    map: true
end

defmodule Google.Cloud.Gaming.V1beta.RealmSelector do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :realms, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.Schedule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :cron_job_duration, 3, type: Google.Protobuf.Duration, json_name: "cronJobDuration"
  field :cron_spec, 4, type: :string, json_name: "cronSpec"
end

defmodule Google.Cloud.Gaming.V1beta.SpecSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_config_name, 1, type: :string, json_name: "gameServerConfigName"
  field :name, 2, type: :string
end

defmodule Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :spec_source, 2, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"
end

defmodule Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :spec_source, 2, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"
end

defmodule Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fleet, 1, type: Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleet

  field :autoscaler, 2,
    type: Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails.TargetFleetAutoscaler
end

defmodule Google.Cloud.Gaming.V1beta.TargetDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :game_server_cluster_name, 1, type: :string, json_name: "gameServerClusterName"
  field :game_server_deployment_name, 2, type: :string, json_name: "gameServerDeploymentName"

  field :fleet_details, 3,
    repeated: true,
    type: Google.Cloud.Gaming.V1beta.TargetDetails.TargetFleetDetails,
    json_name: "fleetDetails"
end

defmodule Google.Cloud.Gaming.V1beta.TargetState do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :details, 1, repeated: true, type: Google.Cloud.Gaming.V1beta.TargetDetails
end

defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :ready_replicas, 1, type: :int64, json_name: "readyReplicas"
  field :allocated_replicas, 2, type: :int64, json_name: "allocatedReplicas"
  field :reserved_replicas, 3, type: :int64, json_name: "reservedReplicas"
  field :replicas, 4, type: :int64
end

defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :fleet, 1, type: :string
  field :fleet_spec, 2, type: :string, json_name: "fleetSpec"
  field :spec_source, 3, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"

  field :status, 5,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet.DeployedFleetStatus
end

defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleetAutoscaler do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :autoscaler, 1, type: :string
  field :spec_source, 4, type: Google.Cloud.Gaming.V1beta.SpecSource, json_name: "specSource"
  field :fleet_autoscaler_spec, 3, type: :string, json_name: "fleetAutoscalerSpec"
end

defmodule Google.Cloud.Gaming.V1beta.DeployedFleetDetails do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :deployed_fleet, 1,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleet,
    json_name: "deployedFleet"

  field :deployed_autoscaler, 2,
    type: Google.Cloud.Gaming.V1beta.DeployedFleetDetails.DeployedFleetAutoscaler,
    json_name: "deployedAutoscaler"
end