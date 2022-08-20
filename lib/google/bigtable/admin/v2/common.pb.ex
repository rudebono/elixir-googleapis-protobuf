defmodule Google.Bigtable.Admin.V2.StorageType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end

defmodule Google.Bigtable.Admin.V2.OperationProgress do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end