defmodule Google.Cloud.Channel.V1.Entitlement.ProvisioningState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :PROVISIONING_STATE_UNSPECIFIED | :ACTIVE | :SUSPENDED

  field :PROVISIONING_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :SUSPENDED, 5
end
defmodule Google.Cloud.Channel.V1.Entitlement.SuspensionReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :SUSPENSION_REASON_UNSPECIFIED
          | :RESELLER_INITIATED
          | :TRIAL_ENDED
          | :RENEWAL_WITH_TYPE_CANCEL
          | :PENDING_TOS_ACCEPTANCE
          | :OTHER

  field :SUSPENSION_REASON_UNSPECIFIED, 0
  field :RESELLER_INITIATED, 1
  field :TRIAL_ENDED, 2
  field :RENEWAL_WITH_TYPE_CANCEL, 3
  field :PENDING_TOS_ACCEPTANCE, 4
  field :OTHER, 100
end
defmodule Google.Cloud.Channel.V1.TransferEligibility.Reason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REASON_UNSPECIFIED
          | :PENDING_TOS_ACCEPTANCE
          | :SKU_NOT_ELIGIBLE
          | :SKU_SUSPENDED

  field :REASON_UNSPECIFIED, 0
  field :PENDING_TOS_ACCEPTANCE, 1
  field :SKU_NOT_ELIGIBLE, 2
  field :SKU_SUSPENDED, 3
end
defmodule Google.Cloud.Channel.V1.Entitlement do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          offer: String.t(),
          commitment_settings: Google.Cloud.Channel.V1.CommitmentSettings.t() | nil,
          provisioning_state: Google.Cloud.Channel.V1.Entitlement.ProvisioningState.t(),
          provisioned_service: Google.Cloud.Channel.V1.ProvisionedService.t() | nil,
          suspension_reasons: [Google.Cloud.Channel.V1.Entitlement.SuspensionReason.t()],
          purchase_order_id: String.t(),
          trial_settings: Google.Cloud.Channel.V1.TrialSettings.t() | nil,
          association_info: Google.Cloud.Channel.V1.AssociationInfo.t() | nil,
          parameters: [Google.Cloud.Channel.V1.Parameter.t()]
        }

  defstruct name: "",
            create_time: nil,
            update_time: nil,
            offer: "",
            commitment_settings: nil,
            provisioning_state: :PROVISIONING_STATE_UNSPECIFIED,
            provisioned_service: nil,
            suspension_reasons: [],
            purchase_order_id: "",
            trial_settings: nil,
            association_info: nil,
            parameters: []

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Google.Cloud.Channel.V1.Value.t() | nil,
          editable: boolean
        }

  defstruct name: "",
            value: nil,
            editable: false

  field :name, 1, type: :string
  field :value, 2, type: Google.Cloud.Channel.V1.Value
  field :editable, 3, type: :bool, deprecated: false
end
defmodule Google.Cloud.Channel.V1.AssociationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_entitlement: String.t()
        }

  defstruct base_entitlement: ""

  field :base_entitlement, 1, type: :string, json_name: "baseEntitlement", deprecated: false
end
defmodule Google.Cloud.Channel.V1.ProvisionedService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provisioning_id: String.t(),
          product_id: String.t(),
          sku_id: String.t()
        }

  defstruct provisioning_id: "",
            product_id: "",
            sku_id: ""

  field :provisioning_id, 1, type: :string, json_name: "provisioningId", deprecated: false
  field :product_id, 2, type: :string, json_name: "productId", deprecated: false
  field :sku_id, 3, type: :string, json_name: "skuId", deprecated: false
end
defmodule Google.Cloud.Channel.V1.CommitmentSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          renewal_settings: Google.Cloud.Channel.V1.RenewalSettings.t() | nil
        }

  defstruct start_time: nil,
            end_time: nil,
            renewal_settings: nil

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false

  field :renewal_settings, 4,
    type: Google.Cloud.Channel.V1.RenewalSettings,
    json_name: "renewalSettings",
    deprecated: false
end
defmodule Google.Cloud.Channel.V1.RenewalSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enable_renewal: boolean,
          resize_unit_count: boolean,
          payment_plan: Google.Cloud.Channel.V1.PaymentPlan.t(),
          payment_cycle: Google.Cloud.Channel.V1.Period.t() | nil
        }

  defstruct enable_renewal: false,
            resize_unit_count: false,
            payment_plan: :PAYMENT_PLAN_UNSPECIFIED,
            payment_cycle: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trial: boolean,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct trial: false,
            end_time: nil

  field :trial, 1, type: :bool
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end
defmodule Google.Cloud.Channel.V1.TransferableSku do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_eligibility: Google.Cloud.Channel.V1.TransferEligibility.t() | nil,
          sku: Google.Cloud.Channel.V1.Sku.t() | nil,
          legacy_sku: Google.Cloud.Channel.V1.Sku.t() | nil
        }

  defstruct transfer_eligibility: nil,
            sku: nil,
            legacy_sku: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_eligible: boolean,
          description: String.t(),
          ineligibility_reason: Google.Cloud.Channel.V1.TransferEligibility.Reason.t()
        }

  defstruct is_eligible: false,
            description: "",
            ineligibility_reason: :REASON_UNSPECIFIED

  field :is_eligible, 1, type: :bool, json_name: "isEligible"
  field :description, 2, type: :string

  field :ineligibility_reason, 3,
    type: Google.Cloud.Channel.V1.TransferEligibility.Reason,
    json_name: "ineligibilityReason",
    enum: true
end
