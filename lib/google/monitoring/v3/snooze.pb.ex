defmodule Google.Monitoring.V3.Snooze.Criteria do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :policies, 1, repeated: true, type: :string, deprecated: false
  field :filter, 2, type: :string
end

defmodule Google.Monitoring.V3.Snooze do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :criteria, 3, type: Google.Monitoring.V3.Snooze.Criteria, deprecated: false
  field :interval, 4, type: Google.Monitoring.V3.TimeInterval, deprecated: false
  field :display_name, 5, type: :string, json_name: "displayName", deprecated: false
end
