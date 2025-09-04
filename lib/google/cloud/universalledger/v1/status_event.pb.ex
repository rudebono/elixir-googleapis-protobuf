defmodule Google.Cloud.Universalledger.V1.EventType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :EVENT_TYPE_RECEIVED, 1
  field :EVENT_TYPE_BROADCASTED, 2
  field :EVENT_TYPE_ORDERED, 3
  field :EVENT_TYPE_EXECUTION_STARTED, 4
  field :EVENT_TYPE_EXECUTION_COMPLETED, 5
  field :EVENT_TYPE_FINALIZED, 6
end

defmodule Google.Cloud.Universalledger.V1.StatusEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :event_time, 1, type: Google.Protobuf.Timestamp, json_name: "eventTime", deprecated: false

  field :event_type, 2,
    type: Google.Cloud.Universalledger.V1.EventType,
    json_name: "eventType",
    enum: true,
    deprecated: false

  field :event_details, 3,
    type: Google.Cloud.Universalledger.V1.EventDetails,
    json_name: "eventDetails",
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.EventDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :event_details, 0

  field :execution_details, 1,
    type: Google.Cloud.Universalledger.V1.ExecutionDetails,
    json_name: "executionDetails",
    oneof: 0,
    deprecated: false
end

defmodule Google.Cloud.Universalledger.V1.ExecutionDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :round_id, 1, type: :int64, json_name: "roundId", deprecated: false
end
