defmodule Google.Api.Servicemanagement.V1.OperationMetadata.Status do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATUS_UNSPECIFIED, 0
  field :DONE, 1
  field :NOT_STARTED, 2
  field :IN_PROGRESS, 3
  field :FAILED, 4
  field :CANCELLED, 5
end

defmodule Google.Api.Servicemanagement.V1.Diagnostic.Kind do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :WARNING, 0
  field :ERROR, 1
end

defmodule Google.Api.Servicemanagement.V1.ConfigFile.FileType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :FILE_TYPE_UNSPECIFIED, 0
  field :SERVICE_CONFIG_YAML, 1
  field :OPEN_API_JSON, 2
  field :OPEN_API_YAML, 3
  field :FILE_DESCRIPTOR_SET_PROTO, 4
  field :PROTO_FILE, 6
end

defmodule Google.Api.Servicemanagement.V1.Rollout.RolloutStatus do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

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
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :service_name, 2, type: :string, json_name: "serviceName"
  field :producer_project_id, 3, type: :string, json_name: "producerProjectId"
end

defmodule Google.Api.Servicemanagement.V1.OperationMetadata.Step do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :description, 2, type: :string
  field :status, 4, type: Google.Api.Servicemanagement.V1.OperationMetadata.Status, enum: true
end

defmodule Google.Api.Servicemanagement.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :resource_names, 1, repeated: true, type: :string, json_name: "resourceNames"
  field :steps, 2, repeated: true, type: Google.Api.Servicemanagement.V1.OperationMetadata.Step
  field :progress_percentage, 3, type: :int32, json_name: "progressPercentage"
  field :start_time, 4, type: Google.Protobuf.Timestamp, json_name: "startTime"
end

defmodule Google.Api.Servicemanagement.V1.Diagnostic do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :location, 1, type: :string
  field :kind, 2, type: Google.Api.Servicemanagement.V1.Diagnostic.Kind, enum: true
  field :message, 3, type: :string
end

defmodule Google.Api.Servicemanagement.V1.ConfigSource do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :id, 5, type: :string
  field :files, 2, repeated: true, type: Google.Api.Servicemanagement.V1.ConfigFile
end

defmodule Google.Api.Servicemanagement.V1.ConfigFile do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :file_path, 1, type: :string, json_name: "filePath"
  field :file_contents, 3, type: :bytes, json_name: "fileContents"

  field :file_type, 4,
    type: Google.Api.Servicemanagement.V1.ConfigFile.FileType,
    json_name: "fileType",
    enum: true
end

defmodule Google.Api.Servicemanagement.V1.ConfigRef do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
end

defmodule Google.Api.Servicemanagement.V1.ChangeReport do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :config_changes, 1,
    repeated: true,
    type: Google.Api.ConfigChange,
    json_name: "configChanges"
end

defmodule Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy.PercentagesEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :double
end

defmodule Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :percentages, 1,
    repeated: true,
    type: Google.Api.Servicemanagement.V1.Rollout.TrafficPercentStrategy.PercentagesEntry,
    map: true
end

defmodule Google.Api.Servicemanagement.V1.Rollout.DeleteServiceStrategy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end

defmodule Google.Api.Servicemanagement.V1.Rollout do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :strategy, 0

  field :rollout_id, 1, type: :string, json_name: "rolloutId", deprecated: false
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
end