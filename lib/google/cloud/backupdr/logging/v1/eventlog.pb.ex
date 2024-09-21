defmodule Google.Cloud.Backupdr.Logging.V1.Event do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :event_time, 1, type: :string, json_name: "eventTime"
  field :srcid, 2, type: :int64
  field :error_message, 3, type: :string, json_name: "errorMessage"
  field :event_id, 4, type: :int32, json_name: "eventId"
  field :component, 5, type: :string
  field :appliance_name, 6, type: :int64, json_name: "applianceName"
  field :app_name, 7, type: :string, json_name: "appName"
  field :app_type, 8, type: :string, json_name: "appType"
  field :job_name, 9, type: :string, json_name: "jobName"
end