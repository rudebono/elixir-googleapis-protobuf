defmodule Google.Ads.Googleads.V9.Errors.OperationAccessDeniedErrorEnum.OperationAccessDeniedError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :ACTION_NOT_PERMITTED
          | :CREATE_OPERATION_NOT_PERMITTED
          | :REMOVE_OPERATION_NOT_PERMITTED
          | :UPDATE_OPERATION_NOT_PERMITTED
          | :MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT
          | :OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE
          | :CREATE_AS_REMOVED_NOT_PERMITTED
          | :OPERATION_NOT_PERMITTED_FOR_REMOVED_RESOURCE
          | :OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE
          | :MUTATE_NOT_PERMITTED_FOR_CUSTOMER

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACTION_NOT_PERMITTED, 2
  field :CREATE_OPERATION_NOT_PERMITTED, 3
  field :REMOVE_OPERATION_NOT_PERMITTED, 4
  field :UPDATE_OPERATION_NOT_PERMITTED, 5
  field :MUTATE_ACTION_NOT_PERMITTED_FOR_CLIENT, 6
  field :OPERATION_NOT_PERMITTED_FOR_CAMPAIGN_TYPE, 7
  field :CREATE_AS_REMOVED_NOT_PERMITTED, 8
  field :OPERATION_NOT_PERMITTED_FOR_REMOVED_RESOURCE, 9
  field :OPERATION_NOT_PERMITTED_FOR_AD_GROUP_TYPE, 10
  field :MUTATE_NOT_PERMITTED_FOR_CUSTOMER, 11
end
defmodule Google.Ads.Googleads.V9.Errors.OperationAccessDeniedErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
