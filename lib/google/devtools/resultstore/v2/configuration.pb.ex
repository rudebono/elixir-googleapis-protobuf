defmodule Google.Devtools.Resultstore.V2.Configuration.Id do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :configuration_id, 2, type: :string, json_name: "configurationId"
end

defmodule Google.Devtools.Resultstore.V2.Configuration do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Configuration.Id

  field :status_attributes, 3,
    type: Google.Devtools.Resultstore.V2.StatusAttributes,
    json_name: "statusAttributes"

  field :configuration_attributes, 5,
    type: Google.Devtools.Resultstore.V2.ConfigurationAttributes,
    json_name: "configurationAttributes"

  field :properties, 6, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :display_name, 8, type: :string, json_name: "displayName"
end

defmodule Google.Devtools.Resultstore.V2.ConfigurationAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :cpu, 1, type: :string
end
