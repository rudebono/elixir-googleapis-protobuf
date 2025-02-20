defmodule Google.Monitoring.V3.DroppedLabels.LabelEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Monitoring.V3.DroppedLabels do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :label, 1, repeated: true, type: Google.Monitoring.V3.DroppedLabels.LabelEntry, map: true
end
