defmodule Google.Cloud.Channel.V1.EntitlementChange.ChangeType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CHANGE_TYPE_UNSPECIFIED, 0
  field :CREATED, 1
  field :PRICE_PLAN_SWITCHED, 3
  field :COMMITMENT_CHANGED, 4
  field :RENEWED, 5
  field :SUSPENDED, 6
  field :ACTIVATED, 7
  field :CANCELLED, 8
  field :SKU_CHANGED, 9
  field :RENEWAL_SETTING_CHANGED, 10
  field :PAID_SUBSCRIPTION_STARTED, 11
  field :LICENSE_CAP_CHANGED, 12
  field :SUSPENSION_DETAILS_CHANGED, 13
  field :TRIAL_END_DATE_EXTENDED, 14
  field :TRIAL_STARTED, 15
end

defmodule Google.Cloud.Channel.V1.EntitlementChange.OperatorType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :OPERATOR_TYPE_UNSPECIFIED, 0
  field :CUSTOMER_SERVICE_REPRESENTATIVE, 1
  field :SYSTEM, 2
  field :CUSTOMER, 3
  field :RESELLER, 4
end

defmodule Google.Cloud.Channel.V1.EntitlementChange.CancellationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CANCELLATION_REASON_UNSPECIFIED, 0
  field :SERVICE_TERMINATED, 1
  field :RELATIONSHIP_ENDED, 2
  field :PARTIAL_TRANSFER, 3
end

defmodule Google.Cloud.Channel.V1.EntitlementChange.ActivationReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ACTIVATION_REASON_UNSPECIFIED, 0
  field :RESELLER_REVOKED_SUSPENSION, 1
  field :CUSTOMER_ACCEPTED_PENDING_TOS, 2
  field :RENEWAL_SETTINGS_CHANGED, 3
  field :OTHER_ACTIVATION_REASON, 100
end

defmodule Google.Cloud.Channel.V1.EntitlementChange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :change_reason, 0

  field :suspension_reason, 9,
    type: Google.Cloud.Channel.V1.Entitlement.SuspensionReason,
    json_name: "suspensionReason",
    enum: true,
    oneof: 0

  field :cancellation_reason, 10,
    type: Google.Cloud.Channel.V1.EntitlementChange.CancellationReason,
    json_name: "cancellationReason",
    enum: true,
    oneof: 0

  field :activation_reason, 11,
    type: Google.Cloud.Channel.V1.EntitlementChange.ActivationReason,
    json_name: "activationReason",
    enum: true,
    oneof: 0

  field :other_change_reason, 100, type: :string, json_name: "otherChangeReason", oneof: 0
  field :entitlement, 1, type: :string, deprecated: false
  field :offer, 2, type: :string, deprecated: false

  field :provisioned_service, 3,
    type: Google.Cloud.Channel.V1.ProvisionedService,
    json_name: "provisionedService"

  field :change_type, 4,
    type: Google.Cloud.Channel.V1.EntitlementChange.ChangeType,
    json_name: "changeType",
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"

  field :operator_type, 6,
    type: Google.Cloud.Channel.V1.EntitlementChange.OperatorType,
    json_name: "operatorType",
    enum: true

  field :parameters, 8, repeated: true, type: Google.Cloud.Channel.V1.Parameter
  field :operator, 12, type: :string
end
