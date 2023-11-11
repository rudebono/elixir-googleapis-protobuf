defmodule Google.Cloud.Aiplatform.V1.FeatureViewSync do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :run_time, 5, type: Google.Type.Interval, json_name: "runTime", deprecated: false
  field :final_status, 4, type: Google.Rpc.Status, json_name: "finalStatus", deprecated: false
end