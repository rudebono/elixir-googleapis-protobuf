defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.Entity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :display, 1,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.EntityDisplay,
    deprecated: false

  field :regular_expressions, 2,
    repeated: true,
    type: :string,
    json_name: "regularExpressions",
    deprecated: false
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.EntitiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.Entity
end

defmodule Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :entities, 1,
    repeated: true,
    type: Google.Actions.Sdk.V2.Interactionmodel.Type.RegularExpressionType.EntitiesEntry,
    map: true,
    deprecated: false
end