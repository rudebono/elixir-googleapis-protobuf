defmodule Google.Cloud.Dataplex.V1.ResourceAccessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :readers, 1, repeated: true, type: :string, deprecated: false
  field :writers, 2, repeated: true, type: :string, deprecated: false
  field :owners, 3, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dataplex.V1.DataAccessSpec do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :readers, 1, repeated: true, type: :string, deprecated: false
end
