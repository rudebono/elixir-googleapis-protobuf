defmodule Google.Actions.Sdk.V2.ValidationResults do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Actions.Sdk.V2.ValidationResult
end

defmodule Google.Actions.Sdk.V2.ValidationResult.ValidationContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
end

defmodule Google.Actions.Sdk.V2.ValidationResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :validation_message, 1, type: :string, json_name: "validationMessage"

  field :validation_context, 2,
    type: Google.Actions.Sdk.V2.ValidationResult.ValidationContext,
    json_name: "validationContext"
end