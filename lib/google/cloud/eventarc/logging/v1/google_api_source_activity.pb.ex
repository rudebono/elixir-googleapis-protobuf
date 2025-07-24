defmodule Google.Cloud.Eventarc.Logging.V1.GoogleApiSourceActivity.Published do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :message_bus, 1, type: :string, json_name: "messageBus"
  field :event_provider, 2, type: :string, json_name: "eventProvider"
  field :details, 3, type: :string
  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.GoogleApiSourceActivity.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.Logging.V1.GoogleApiSourceActivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :activity, 0

  field :message_uid, 1, type: :string, json_name: "messageUid", deprecated: false

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Eventarc.Logging.V1.GoogleApiSourceActivity.AttributesEntry,
    map: true

  field :activity_time, 3, type: Google.Protobuf.Timestamp, json_name: "activityTime"

  field :published, 4,
    type: Google.Cloud.Eventarc.Logging.V1.GoogleApiSourceActivity.Published,
    oneof: 0
end
