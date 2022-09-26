defmodule Google.Cloud.Discoveryengine.V1beta.CustomAttribute do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :text, 1, repeated: true, type: :string
  field :numbers, 2, repeated: true, type: :double
end

defmodule Google.Cloud.Discoveryengine.V1beta.UserInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :user_agent, 2, type: :string, json_name: "userAgent"
end