defmodule Google.Cloud.Securitycenter.V1.LogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  oneof :log_entry, 0

  field :cloud_logging_entry, 1,
    type: Google.Cloud.Securitycenter.V1.CloudLoggingEntry,
    json_name: "cloudLoggingEntry",
    oneof: 0
end

defmodule Google.Cloud.Securitycenter.V1.CloudLoggingEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :insert_id, 1, type: :string, json_name: "insertId"
  field :log_id, 2, type: :string, json_name: "logId"
  field :resource_container, 3, type: :string, json_name: "resourceContainer"
  field :timestamp, 4, type: Google.Protobuf.Timestamp
end