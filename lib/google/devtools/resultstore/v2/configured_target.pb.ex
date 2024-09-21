defmodule Google.Devtools.Resultstore.V2.ConfiguredTarget.Id do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :target_id, 2, type: :string, json_name: "targetId"
  field :configuration_id, 3, type: :string, json_name: "configurationId"
end

defmodule Google.Devtools.Resultstore.V2.ConfiguredTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.ConfiguredTarget.Id

  field :status_attributes, 3,
    type: Google.Devtools.Resultstore.V2.StatusAttributes,
    json_name: "statusAttributes"

  field :timing, 4, type: Google.Devtools.Resultstore.V2.Timing

  field :test_attributes, 6,
    type: Google.Devtools.Resultstore.V2.ConfiguredTestAttributes,
    json_name: "testAttributes"

  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
end

defmodule Google.Devtools.Resultstore.V2.ConfiguredTestAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :total_run_count, 2, type: :int32, json_name: "totalRunCount"
  field :total_shard_count, 3, type: :int32, json_name: "totalShardCount"
  field :timeout_duration, 5, type: Google.Protobuf.Duration, json_name: "timeoutDuration"
end