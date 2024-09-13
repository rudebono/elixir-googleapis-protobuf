defmodule Google.Analytics.Cloud.ExportStatusLog.Status do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNKNOWN, 0
  field :COMPLETE, 1
  field :INCOMPLETE, 2
  field :FAILED, 3
end

defmodule Google.Analytics.Cloud.ExportStatusLog do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :export_date, 1, type: :string, json_name: "exportDate"
  field :status, 2, type: Google.Analytics.Cloud.ExportStatusLog.Status, enum: true
  field :event_count, 3, type: :int64, json_name: "eventCount"
  field :message, 4, type: :string
end