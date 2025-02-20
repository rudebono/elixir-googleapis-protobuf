defmodule Google.Spanner.Admin.Instance.V1.FulfillmentPeriod do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :FULFILLMENT_PERIOD_UNSPECIFIED, 0
  field :FULFILLMENT_PERIOD_NORMAL, 1
  field :FULFILLMENT_PERIOD_EXTENDED, 2
end

defmodule Google.Spanner.Admin.Instance.V1.OperationProgress do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Spanner.Admin.Instance.V1.ReplicaSelection do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :location, 1, type: :string, deprecated: false
end
