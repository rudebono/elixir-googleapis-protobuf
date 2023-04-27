defmodule Google.Appengine.Legacy.AuditData.EventDataEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Appengine.Legacy.AuditData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :event_message, 1, type: :string, json_name: "eventMessage"

  field :event_data, 2,
    repeated: true,
    type: Google.Appengine.Legacy.AuditData.EventDataEntry,
    json_name: "eventData",
    map: true
end