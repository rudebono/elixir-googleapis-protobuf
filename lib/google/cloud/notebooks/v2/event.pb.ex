defmodule Google.Cloud.Notebooks.V2.Event.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :IDLE, 1
  field :HEARTBEAT, 2
  field :HEALTH, 3
  field :MAINTENANCE, 4
  field :METADATA_CHANGE, 5
end

defmodule Google.Cloud.Notebooks.V2.Event.DetailsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Notebooks.V2.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :report_time, 1,
    type: Google.Protobuf.Timestamp,
    json_name: "reportTime",
    deprecated: false

  field :type, 2, type: Google.Cloud.Notebooks.V2.Event.EventType, enum: true, deprecated: false

  field :details, 3,
    repeated: true,
    type: Google.Cloud.Notebooks.V2.Event.DetailsEntry,
    map: true,
    deprecated: false
end
