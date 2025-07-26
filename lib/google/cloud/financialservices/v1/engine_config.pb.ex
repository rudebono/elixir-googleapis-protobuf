defmodule Google.Cloud.Financialservices.V1.EngineConfig.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Financialservices.V1.EngineConfig.HyperparameterSourceType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :HYPERPARAMETER_SOURCE_TYPE_UNSPECIFIED, 0
  field :TUNING, 1
  field :INHERITED, 2
end

defmodule Google.Cloud.Financialservices.V1.EngineConfig.Tuning do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :primary_dataset, 1, type: :string, json_name: "primaryDataset", deprecated: false
  field :end_time, 10, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.EngineConfig.PerformanceTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :party_investigations_per_period_hint, 1,
    type: :int64,
    json_name: "partyInvestigationsPerPeriodHint",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.EngineConfig.HyperparameterSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :source_engine_config, 1,
    type: :string,
    json_name: "sourceEngineConfig",
    deprecated: false

  field :source_engine_version, 2,
    type: :string,
    json_name: "sourceEngineVersion",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.EngineConfig.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Financialservices.V1.EngineConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

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
    type: Google.Cloud.Financialservices.V1.EngineConfig.LabelsEntry,
    map: true

  field :state, 5,
    type: Google.Cloud.Financialservices.V1.EngineConfig.State,
    enum: true,
    deprecated: false

  field :engine_version, 6, type: :string, json_name: "engineVersion", deprecated: false
  field :tuning, 7, type: Google.Cloud.Financialservices.V1.EngineConfig.Tuning, deprecated: false

  field :performance_target, 11,
    type: Google.Cloud.Financialservices.V1.EngineConfig.PerformanceTarget,
    json_name: "performanceTarget",
    deprecated: false

  field :line_of_business, 12,
    type: Google.Cloud.Financialservices.V1.LineOfBusiness,
    json_name: "lineOfBusiness",
    enum: true,
    deprecated: false

  field :hyperparameter_source_type, 15,
    type: Google.Cloud.Financialservices.V1.EngineConfig.HyperparameterSourceType,
    json_name: "hyperparameterSourceType",
    enum: true,
    deprecated: false

  field :hyperparameter_source, 16,
    type: Google.Cloud.Financialservices.V1.EngineConfig.HyperparameterSource,
    json_name: "hyperparameterSource",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ListEngineConfigsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Financialservices.V1.ListEngineConfigsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :engine_configs, 1,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.EngineConfig,
    json_name: "engineConfigs"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Financialservices.V1.GetEngineConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.CreateEngineConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :engine_config_id, 2, type: :string, json_name: "engineConfigId", deprecated: false

  field :engine_config, 3,
    type: Google.Cloud.Financialservices.V1.EngineConfig,
    json_name: "engineConfig",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.UpdateEngineConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :engine_config, 2,
    type: Google.Cloud.Financialservices.V1.EngineConfig,
    json_name: "engineConfig",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.DeleteEngineConfigRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportEngineConfigMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :engine_config, 1, type: :string, json_name: "engineConfig", deprecated: false

  field :structured_metadata_destination, 2,
    type: Google.Cloud.Financialservices.V1.BigQueryDestination,
    json_name: "structuredMetadataDestination",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportEngineConfigMetadataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
