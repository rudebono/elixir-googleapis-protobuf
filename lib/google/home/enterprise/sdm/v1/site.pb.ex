defmodule Google.Home.Enterprise.Sdm.V1.Structure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :traits, 2, type: Google.Protobuf.Struct
end

defmodule Google.Home.Enterprise.Sdm.V1.Room do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :traits, 2, type: Google.Protobuf.Struct
end
