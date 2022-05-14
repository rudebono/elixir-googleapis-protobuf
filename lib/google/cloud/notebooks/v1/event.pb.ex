defmodule Google.Cloud.Notebooks.V1.Event.EventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :IDLE, 1
  field :HEARTBEAT, 2
  field :HEALTH, 3
  field :MAINTENANCE, 4
end
defmodule Google.Cloud.Notebooks.V1.Event.DetailsEntry do
  @moduledoc false
  use Protobuf, map: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Cloud.Notebooks.V1.Event do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :report_time, 1, type: Google.Protobuf.Timestamp, json_name: "reportTime"
  field :type, 2, type: Google.Cloud.Notebooks.V1.Event.EventType, enum: true

  field :details, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V1.Event.DetailsEntry,
    map: true,
    deprecated: false
end
