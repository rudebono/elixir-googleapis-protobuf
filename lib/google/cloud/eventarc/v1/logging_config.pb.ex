defmodule Google.Cloud.Eventarc.V1.LoggingConfig.LogSeverity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :LOG_SEVERITY_UNSPECIFIED, 0
  field :NONE, 1
  field :DEBUG, 2
  field :INFO, 3
  field :NOTICE, 4
  field :WARNING, 5
  field :ERROR, 6
  field :CRITICAL, 7
  field :ALERT, 8
  field :EMERGENCY, 9
end

defmodule Google.Cloud.Eventarc.V1.LoggingConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :log_severity, 1,
    type: Google.Cloud.Eventarc.V1.LoggingConfig.LogSeverity,
    json_name: "logSeverity",
    enum: true,
    deprecated: false
end
