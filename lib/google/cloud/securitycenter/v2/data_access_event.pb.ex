defmodule Google.Cloud.Securitycenter.V2.DataAccessEvent.Operation do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :OPERATION_UNSPECIFIED, 0
  field :READ, 1
  field :MOVE, 2
  field :COPY, 3
end

defmodule Google.Cloud.Securitycenter.V2.DataAccessEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :event_id, 1, type: :string, json_name: "eventId"
  field :principal_email, 2, type: :string, json_name: "principalEmail"
  field :operation, 3, type: Google.Cloud.Securitycenter.V2.DataAccessEvent.Operation, enum: true
  field :event_time, 4, type: Google.Protobuf.Timestamp, json_name: "eventTime"
end
