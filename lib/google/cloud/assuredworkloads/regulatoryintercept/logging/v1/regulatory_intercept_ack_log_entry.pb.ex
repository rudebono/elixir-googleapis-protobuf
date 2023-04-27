defmodule Google.Cloud.Assuredworkloads.Regulatoryintercept.Logging.V1.RegulatoryInterceptAckLogEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :assured_workload_resource_id, 2, type: :string, json_name: "assuredWorkloadResourceId"
end