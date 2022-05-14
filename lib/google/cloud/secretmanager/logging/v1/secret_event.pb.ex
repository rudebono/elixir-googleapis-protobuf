defmodule Google.Cloud.Secretmanager.Logging.V1.SecretEvent.EventType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :EVENT_TYPE_UNSPECIFIED, 0
  field :EXPIRES_IN_30_DAYS, 1
  field :EXPIRES_IN_7_DAYS, 2
  field :EXPIRES_IN_1_DAY, 3
  field :EXPIRES_IN_6_HOURS, 4
  field :EXPIRES_IN_1_HOUR, 5
  field :EXPIRED, 6
  field :TOPIC_NOT_FOUND, 7
  field :TOPIC_PERMISSION_DENIED, 8
end
defmodule Google.Cloud.Secretmanager.Logging.V1.SecretEvent do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Cloud.Secretmanager.Logging.V1.SecretEvent.EventType, enum: true
  field :log_message, 3, type: :string, json_name: "logMessage"
end
