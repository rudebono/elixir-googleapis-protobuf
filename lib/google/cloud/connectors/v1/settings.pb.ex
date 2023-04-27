defmodule Google.Cloud.Connectors.V1.GetGlobalSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Connectors.V1.Settings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :vpcsc, 2, type: :bool, deprecated: false
  field :payg, 3, type: :bool, deprecated: false
end