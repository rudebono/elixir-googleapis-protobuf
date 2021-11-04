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

  defstruct [
    :name,
    :create_time,
    :update_time,
    :offer,
    :commitment_settings,
    :provisioning_state,
    :provisioned_service,
    :suspension_reasons,
    :purchase_order_id,
    :trial_settings,
    :association_info,
    :parameters
  ]

  field :name, 1, type: :string
  field :create_time, 5, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 6, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :offer, 8, type: :string

  field :commitment_settings, 12,
    type: Google.Cloud.Channel.V1.CommitmentSettings,
    json_name: "commitmentSettings"

  field :provisioning_state, 13,
    type: Google.Cloud.Channel.V1.Entitlement.ProvisioningState,
    enum: true,
    json_name: "provisioningState"

  field :provisioned_service, 16,
    type: Google.Cloud.Channel.V1.ProvisionedService,
    json_name: "provisionedService"

  field :suspension_reasons, 18,
    repeated: true,
    type: Google.Cloud.Channel.V1.Entitlement.SuspensionReason,
    enum: true,
    json_name: "suspensionReasons"

  field :purchase_order_id, 19, type: :string, json_name: "purchaseOrderId"

  field :trial_settings, 21,
    type: Google.Cloud.Channel.V1.TrialSettings,
    json_name: "trialSettings"

  field :association_info, 23,
    type: Google.Cloud.Channel.V1.AssociationInfo,
    json_name: "associationInfo"

  field :parameters, 26, repeated: true, type: Google.Cloud.Channel.V1.Parameter

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.Parameter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          value: Google.Cloud.Channel.V1.Value.t() | nil,
          editable: boolean
        }

  defstruct [:name, :value, :editable]

  field :name, 1, type: :string
  field :value, 2, type: Google.Cloud.Channel.V1.Value
  field :editable, 3, type: :bool

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.AssociationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          base_entitlement: String.t()
        }

  defstruct [:base_entitlement]

  field :base_entitlement, 1, type: :string, json_name: "baseEntitlement"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.ProvisionedService do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          provisioning_id: String.t(),
          product_id: String.t(),
          sku_id: String.t()
        }

  defstruct [:provisioning_id, :product_id, :sku_id]

  field :provisioning_id, 1, type: :string, json_name: "provisioningId"
  field :product_id, 2, type: :string, json_name: "productId"
  field :sku_id, 3, type: :string, json_name: "skuId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.CommitmentSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil,
          renewal_settings: Google.Cloud.Channel.V1.RenewalSettings.t() | nil
        }

  defstruct [:start_time, :end_time, :renewal_settings]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  field :renewal_settings, 4,
    type: Google.Cloud.Channel.V1.RenewalSettings,
    json_name: "renewalSettings"

  def transform_module(), do: nil
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

  defstruct [:enable_renewal, :resize_unit_count, :payment_plan, :payment_cycle]

  field :enable_renewal, 1, type: :bool, json_name: "enableRenewal"
  field :resize_unit_count, 2, type: :bool, json_name: "resizeUnitCount"

  field :payment_plan, 5,
    type: Google.Cloud.Channel.V1.PaymentPlan,
    enum: true,
    json_name: "paymentPlan"

  field :payment_cycle, 6, type: Google.Cloud.Channel.V1.Period, json_name: "paymentCycle"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.TrialSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          trial: boolean,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:trial, :end_time]

  field :trial, 1, type: :bool
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.TransferableSku do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          transfer_eligibility: Google.Cloud.Channel.V1.TransferEligibility.t() | nil,
          sku: Google.Cloud.Channel.V1.Sku.t() | nil,
          legacy_sku: Google.Cloud.Channel.V1.Sku.t() | nil
        }

  defstruct [:transfer_eligibility, :sku, :legacy_sku]

  field :transfer_eligibility, 9,
    type: Google.Cloud.Channel.V1.TransferEligibility,
    json_name: "transferEligibility"

  field :sku, 11, type: Google.Cloud.Channel.V1.Sku
  field :legacy_sku, 12, type: Google.Cloud.Channel.V1.Sku, json_name: "legacySku"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Channel.V1.TransferEligibility do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          is_eligible: boolean,
          description: String.t(),
          ineligibility_reason: Google.Cloud.Channel.V1.TransferEligibility.Reason.t()
        }

  defstruct [:is_eligible, :description, :ineligibility_reason]

  field :is_eligible, 1, type: :bool, json_name: "isEligible"
  field :description, 2, type: :string

  field :ineligibility_reason, 3,
    type: Google.Cloud.Channel.V1.TransferEligibility.Reason,
    enum: true,
    json_name: "ineligibilityReason"

  def transform_module(), do: nil
end
