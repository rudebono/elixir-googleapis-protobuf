defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition.ParameterType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :PARAMETER_TYPE_UNSPECIFIED, 0
  field :STRING, 1
  field :NUMBER, 2
  field :BOOLEAN, 3
  field :NULL, 4
  field :OBJECT, 5
  field :LIST, 6
end

defmodule Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :type, 2,
    type: Google.Cloud.Dialogflow.Cx.V3beta1.ParameterDefinition.ParameterType,
    enum: true,
    deprecated: false

  field :description, 3, type: :string
end