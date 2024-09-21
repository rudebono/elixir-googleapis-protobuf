defmodule Google.Api.Usage do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :requirements, 1, repeated: true, type: :string
  field :rules, 6, repeated: true, type: Google.Api.UsageRule
  field :producer_notification_channel, 7, type: :string, json_name: "producerNotificationChannel"
end

defmodule Google.Api.UsageRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :selector, 1, type: :string
  field :allow_unregistered_calls, 2, type: :bool, json_name: "allowUnregisteredCalls"
  field :skip_service_control, 3, type: :bool, json_name: "skipServiceControl"
end