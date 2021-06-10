defmodule Google.Ads.Googleads.V8.Errors.CustomAudienceErrorEnum.CustomAudienceError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :NAME_ALREADY_USED
          | :CANNOT_REMOVE_WHILE_IN_USE
          | :RESOURCE_ALREADY_REMOVED
          | :MEMBER_TYPE_AND_PARAMETER_ALREADY_EXISTED
          | :INVALID_MEMBER_TYPE
          | :MEMBER_TYPE_AND_VALUE_DOES_NOT_MATCH
          | :POLICY_VIOLATION
          | :INVALID_TYPE_CHANGE

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :NAME_ALREADY_USED, 2

  field :CANNOT_REMOVE_WHILE_IN_USE, 3

  field :RESOURCE_ALREADY_REMOVED, 4

  field :MEMBER_TYPE_AND_PARAMETER_ALREADY_EXISTED, 5

  field :INVALID_MEMBER_TYPE, 6

  field :MEMBER_TYPE_AND_VALUE_DOES_NOT_MATCH, 7

  field :POLICY_VIOLATION, 8

  field :INVALID_TYPE_CHANGE, 9
end

defmodule Google.Ads.Googleads.V8.Errors.CustomAudienceErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
