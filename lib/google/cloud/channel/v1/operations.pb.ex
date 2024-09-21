defmodule Google.Cloud.Channel.V1.OperationMetadata.OperationType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :operation_type, 1,
    type: Google.Cloud.Channel.V1.OperationMetadata.OperationType,
    json_name: "operationType",
    enum: true
end