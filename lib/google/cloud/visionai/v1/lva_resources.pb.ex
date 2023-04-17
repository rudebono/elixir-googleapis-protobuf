defmodule Google.Cloud.Visionai.V1.Analysis.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Analysis.InputStreamsMappingEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Analysis.OutputStreamsMappingEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Visionai.V1.Analysis do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4, repeated: true, type: Google.Cloud.Visionai.V1.Analysis.LabelsEntry, map: true

  field :analysis_definition, 5,
    type: Google.Cloud.Visionai.V1.AnalysisDefinition,
    json_name: "analysisDefinition"

  field :input_streams_mapping, 6,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Analysis.InputStreamsMappingEntry,
    json_name: "inputStreamsMapping",
    map: true

  field :output_streams_mapping, 7,
    repeated: true,
    type: Google.Cloud.Visionai.V1.Analysis.OutputStreamsMappingEntry,
    json_name: "outputStreamsMapping",
    map: true

  field :disable_event_watch, 8, type: :bool, json_name: "disableEventWatch"
end

defmodule Google.Cloud.Visionai.V1.Process do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :analysis, 4, type: :string, deprecated: false

  field :attribute_overrides, 5,
    repeated: true,
    type: :string,
    json_name: "attributeOverrides",
    deprecated: false

  field :run_status, 6,
    type: Google.Cloud.Visionai.V1.RunStatus,
    json_name: "runStatus",
    deprecated: false

  field :run_mode, 7,
    type: Google.Cloud.Visionai.V1.RunMode,
    json_name: "runMode",
    enum: true,
    deprecated: false

  field :event_id, 8, type: :string, json_name: "eventId", deprecated: false
  field :batch_id, 9, type: :string, json_name: "batchId", deprecated: false
  field :retry_count, 10, type: :int32, json_name: "retryCount", deprecated: false
end