defmodule Google.Api.Visibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :rules, 1, repeated: true, type: Google.Api.VisibilityRule
end

defmodule Google.Api.VisibilityRule do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :selector, 1, type: :string
  field :restriction, 2, type: :string
end
