defmodule Google.Cloud.Channel.V1.Entitlement.ProvisioningState do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :PROVISIONING_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 5
end

defmodule Google.Cloud.Channel.V1.Entitlement.SuspensionReason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :SUSPENSION_REASON_UNSPECIFIED, 0
  field :RESELLER_INITIATED, 1
  field :TRIAL_ENDED, 2
  field :RENEWAL_WITH_TYPE_CANCEL, 3
  field :PENDING_TOS_ACCEPTANCE, 4
  field :OTHER, 100
end

defmodule Google.Cloud.Channel.V1.TransferEligibility.Reason do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :REASON_UNSPECIFIED, 0
  field :PENDING_TOS_ACCEPTANCE, 1
  field :SKU_NOT_ELIGIBLE, 2
  field :SKU_SUSPENDED, 3
end

defmodule Google.Cloud.Channel.V1.Entitlement do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :offer, 8, type: :string, deprecated: false

  field :commitment_settings, 12,
    type: Google.Cloud.Channel.V1.CommitmentSettings,
    json_name: "commitmentSettings"

  field :provisioning_state, 13,
    type: Google.Cloud.Channel.V1.Entitlement.ProvisioningState,
    json_name: "provisioningState",
    enum: true,
    deprecated: false

  field :provisioned_service, 16,
    type: Google.Cloud.Channel.V1.ProvisionedService,
    json_name: "provisionedService",
    deprecated: false

  field :suspension_reasons, 18,
    repeated: true,
    type: Google.Cloud.Channel.V1.Entitlement.SuspensionReason,
    json_name: "suspensionReasons",
    enum: true,
    deprecated: false

  field :purchase_order_id, 19, type: :string, json_name: "purchaseOrderId", deprecated: false

  field :trial_settings, 21,
    type: Google.Cloud.Channel.V1.TrialSettings,
    json_name: "trialSettings",
    deprecated: false

  field :association_info, 23,
    type: Google.Cloud.Channel.V1.AssociationInfo,
    json_name: "associationInfo"

  field :parameters, 26, repeated: true, type: Google.Cloud.Channel.V1.Parameter
end

defmodule Google.Cloud.Channel.V1.Parameter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :value, 2, type: Google.Cloud.Channel.V1.Value
  field :editable, 3, type: :bool, deprecated: false
end

defmodule Google.Cloud.Channel.V1.AssociationInfo do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :base_entitlement, 1, type: :string, json_name: "baseEntitlement", deprecated: false
end

defmodule Google.Cloud.Channel.V1.ProvisionedService do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :provisioning_id, 1, type: :string, json_name: "provisioningId", deprecated: false
  field :product_id, 2, type: :string, json_name: "productId", deprecated: false
  field :sku_id, 3, type: :string, json_name: "skuId", deprecated: false
end

defmodule Google.Cloud.Channel.V1.CommitmentSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :renewal_settings, 4,
    type: Google.Cloud.Channel.V1.RenewalSettings,
    json_name: "renewalSettings",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.RenewalSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :enable_renewal, 1, type: :bool, json_name: "enableRenewal"
  field :resize_unit_count, 2, type: :bool, json_name: "resizeUnitCount"

  field :payment_plan, 5,
    type: Google.Cloud.Channel.V1.PaymentPlan,
    json_name: "paymentPlan",
    enum: true

  field :payment_cycle, 6, type: Google.Cloud.Channel.V1.Period, json_name: "paymentCycle"
end

defmodule Google.Cloud.Channel.V1.TrialSettings do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :trial, 1, type: :bool
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Channel.V1.TransferableSku do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :transfer_eligibility, 9,
    type: Google.Cloud.Channel.V1.TransferEligibility,
    json_name: "transferEligibility"

  field :sku, 11, type: Google.Cloud.Channel.V1.Sku

  field :legacy_sku, 12,
    type: Google.Cloud.Channel.V1.Sku,
    json_name: "legacySku",
    deprecated: false
end

defmodule Google.Cloud.Channel.V1.TransferEligibility do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :is_eligible, 1, type: :bool, json_name: "isEligible"
  field :description, 2, type: :string

  field :ineligibility_reason, 3,
    type: Google.Cloud.Channel.V1.TransferEligibility.Reason,
    json_name: "ineligibilityReason",
    enum: true
end