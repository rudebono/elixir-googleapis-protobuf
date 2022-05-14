defmodule Google.Appengine.V1.FirewallRule.Action do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :UNSPECIFIED_ACTION, 0
  field :ALLOW, 1
  field :DENY, 2
end
defmodule Google.Appengine.V1.FirewallRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :priority, 1, type: :int32
  field :action, 2, type: Google.Appengine.V1.FirewallRule.Action, enum: true
  field :source_range, 3, type: :string, json_name: "sourceRange"
  field :description, 4, type: :string
end
