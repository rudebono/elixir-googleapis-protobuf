defmodule Google.Actions.Sdk.V2.Conversation.Intent.ParamsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Conversation.IntentParameterValue
end

defmodule Google.Actions.Sdk.V2.Conversation.Intent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :params, 2,
    repeated: true,
    type: Google.Actions.Sdk.V2.Conversation.Intent.ParamsEntry,
    map: true

  field :query, 3, type: :string
end

defmodule Google.Actions.Sdk.V2.Conversation.IntentParameterValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :original, 1, type: :string
  field :resolved, 2, type: Google.Protobuf.Value
end
