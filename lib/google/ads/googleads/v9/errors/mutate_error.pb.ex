defmodule Google.Ads.Googleads.V9.Errors.MutateErrorEnum.MutateError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :RESOURCE_NOT_FOUND
          | :ID_EXISTS_IN_MULTIPLE_MUTATES
          | :INCONSISTENT_FIELD_VALUES
          | :MUTATE_NOT_ALLOWED
          | :RESOURCE_NOT_IN_GOOGLE_ADS
          | :RESOURCE_ALREADY_EXISTS
          | :RESOURCE_DOES_NOT_SUPPORT_VALIDATE_ONLY
          | :OPERATION_DOES_NOT_SUPPORT_PARTIAL_FAILURE
          | :RESOURCE_READ_ONLY

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RESOURCE_NOT_FOUND, 3
  field :ID_EXISTS_IN_MULTIPLE_MUTATES, 7
  field :INCONSISTENT_FIELD_VALUES, 8
  field :MUTATE_NOT_ALLOWED, 9
  field :RESOURCE_NOT_IN_GOOGLE_ADS, 10
  field :RESOURCE_ALREADY_EXISTS, 11
  field :RESOURCE_DOES_NOT_SUPPORT_VALIDATE_ONLY, 12
  field :OPERATION_DOES_NOT_SUPPORT_PARTIAL_FAILURE, 16
  field :RESOURCE_READ_ONLY, 13
end
defmodule Google.Ads.Googleads.V9.Errors.MutateErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
