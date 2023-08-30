defmodule Google.Cloud.Discoveryengine.V1.Interval do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :min, 0

  oneof :max, 1

  field :minimum, 1, type: :double, oneof: 0
  field :exclusive_minimum, 2, type: :double, json_name: "exclusiveMinimum", oneof: 0
  field :maximum, 3, type: :double, oneof: 1
  field :exclusive_maximum, 4, type: :double, json_name: "exclusiveMaximum", oneof: 1
end

defmodule Google.Cloud.Discoveryengine.V1.CustomAttribute do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
  field :numbers, 2, repeated: true, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1.UserInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :user_agent, 2, type: :string, json_name: "userAgent"
end