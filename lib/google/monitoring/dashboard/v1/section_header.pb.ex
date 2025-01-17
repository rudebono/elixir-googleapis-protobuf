defmodule Google.Monitoring.Dashboard.V1.SectionHeader do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :subtitle, 1, type: :string
  field :divider_below, 2, type: :bool, json_name: "dividerBelow"
end
