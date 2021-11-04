defmodule Google.Cloud.Channel.V1.OperationMetadata.OperationType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :OPERATION_TYPE_UNSPECIFIED
          | :CREATE_ENTITLEMENT
          | :CHANGE_RENEWAL_SETTINGS
          | :START_PAID_SERVICE
          | :ACTIVATE_ENTITLEMENT
          | :SUSPEND_ENTITLEMENT
          | :CANCEL_ENTITLEMENT
          | :TRANSFER_ENTITLEMENTS
          | :TRANSFER_ENTITLEMENTS_TO_GOOGLE
          | :CHANGE_OFFER
          | :CHANGE_PARAMETERS
          | :PROVISION_CLOUD_IDENTITY

  field :OPERATION_TYPE_UNSPECIFIED, 0
  field :CREATE_ENTITLEMENT, 1
  field :CHANGE_RENEWAL_SETTINGS, 3
  field :START_PAID_SERVICE, 5
  field :ACTIVATE_ENTITLEMENT, 7
  field :SUSPEND_ENTITLEMENT, 8
  field :CANCEL_ENTITLEMENT, 9
  field :TRANSFER_ENTITLEMENTS, 10
  field :TRANSFER_ENTITLEMENTS_TO_GOOGLE, 11
  field :CHANGE_OFFER, 14
  field :CHANGE_PARAMETERS, 15
  field :PROVISION_CLOUD_IDENTITY, 16
end

defmodule Google.Cloud.Channel.V1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          operation_type: Google.Cloud.Channel.V1.OperationMetadata.OperationType.t()
        }

  defstruct [:operation_type]

  field :operation_type, 1,
    type: Google.Cloud.Channel.V1.OperationMetadata.OperationType,
    enum: true,
    json_name: "operationType"

  def transform_module(), do: nil
end
