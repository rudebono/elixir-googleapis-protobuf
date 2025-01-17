defmodule Google.Monitoring.V3.MutationRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mutate_time, 1, type: Google.Protobuf.Timestamp, json_name: "mutateTime"
  field :mutated_by, 2, type: :string, json_name: "mutatedBy"
end
