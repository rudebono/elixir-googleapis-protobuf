defmodule Google.Cloud.Integrations.V1alpha.JsonValidationOption do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :JSON_VALIDATION_OPTION_UNSPECIFIED
          | :SKIP
          | :PRE_EXECUTION
          | :POST_EXECUTION
          | :PRE_POST_EXECUTION

  field :JSON_VALIDATION_OPTION_UNSPECIFIED, 0

  field :SKIP, 1

  field :PRE_EXECUTION, 2

  field :POST_EXECUTION, 3

  field :PRE_POST_EXECUTION, 4
end
