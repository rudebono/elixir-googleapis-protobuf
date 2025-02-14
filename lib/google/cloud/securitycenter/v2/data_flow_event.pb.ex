defmodule Google.Cloud.Securitycenter.V2.DataFlowEvent.Operation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :READ, 1
  field :MOVE, 2
  field :COPY, 3
end

defmodule Google.Cloud.Securitycenter.V2.DataFlowEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :event_id, 1, type: :string, json_name: "eventId"
  field :principal_email, 2, type: :string, json_name: "principalEmail"
  field :operation, 3, type: Google.Cloud.Securitycenter.V2.DataFlowEvent.Operation, enum: true
  field :violated_location, 4, type: :string, json_name: "violatedLocation"
  field :event_time, 5, type: Google.Protobuf.Timestamp, json_name: "eventTime"
end
