defmodule Google.Cloud.Integrations.V1alpha.JsonValidationOption do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :JSON_VALIDATION_OPTION_UNSPECIFIED, 0
  field :SKIP, 1
  field :PRE_EXECUTION, 2
  field :POST_EXECUTION, 3
  field :PRE_POST_EXECUTION, 4
end
