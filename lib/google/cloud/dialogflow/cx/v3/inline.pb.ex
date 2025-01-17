defmodule Google.Cloud.Dialogflow.Cx.V3.InlineDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 1, type: :bytes, deprecated: false
end

defmodule Google.Cloud.Dialogflow.Cx.V3.InlineSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :content, 1, type: :bytes
end
