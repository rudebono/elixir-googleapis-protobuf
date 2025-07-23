defmodule Google.Cloud.Eventarc.Logging.V1.MessageBusActivity.Received do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :details, 4, type: :string
  field :error, 5, type: Google.Rpc.Status
end

defmodule Google.Cloud.Eventarc.Logging.V1.MessageBusActivity.AttributesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Eventarc.Logging.V1.MessageBusActivity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :activity, 0

  field :message_uid, 1, type: :string, json_name: "messageUid", deprecated: false

  field :attributes, 2,
    repeated: true,
    type: Google.Cloud.Eventarc.Logging.V1.MessageBusActivity.AttributesEntry,
    map: true

  field :activity_time, 3, type: Google.Protobuf.Timestamp, json_name: "activityTime"
  field :received, 4, type: Google.Cloud.Eventarc.Logging.V1.MessageBusActivity.Received, oneof: 0
end
