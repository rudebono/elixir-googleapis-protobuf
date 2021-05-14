defmodule Google.Ads.Googleads.V4.Resources.BillingSetup.PaymentsAccountInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          payments_account_id: Google.Protobuf.StringValue.t() | nil,
          payments_account_name: Google.Protobuf.StringValue.t() | nil,
          payments_profile_id: Google.Protobuf.StringValue.t() | nil,
          payments_profile_name: Google.Protobuf.StringValue.t() | nil,
          secondary_payments_profile_id: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :payments_account_id,
    :payments_account_name,
    :payments_profile_id,
    :payments_profile_name,
    :secondary_payments_profile_id
  ]

  field :payments_account_id, 1, type: Google.Protobuf.StringValue
  field :payments_account_name, 2, type: Google.Protobuf.StringValue
  field :payments_profile_id, 3, type: Google.Protobuf.StringValue
  field :payments_profile_name, 4, type: Google.Protobuf.StringValue
  field :secondary_payments_profile_id, 5, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.BillingSetup do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: {atom, any},
          end_time: {atom, any},
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          status: Google.Ads.Googleads.V4.Enums.BillingSetupStatusEnum.BillingSetupStatus.t(),
          payments_account: Google.Protobuf.StringValue.t() | nil,
          payments_account_info:
            Google.Ads.Googleads.V4.Resources.BillingSetup.PaymentsAccountInfo.t() | nil
        }

  defstruct [
    :start_time,
    :end_time,
    :resource_name,
    :id,
    :status,
    :payments_account,
    :payments_account_info
  ]

  oneof :start_time, 0
  oneof :end_time, 1
  field :resource_name, 1, type: :string
  field :id, 2, type: Google.Protobuf.Int64Value

  field :status, 3,
    type: Google.Ads.Googleads.V4.Enums.BillingSetupStatusEnum.BillingSetupStatus,
    enum: true

  field :payments_account, 11, type: Google.Protobuf.StringValue

  field :payments_account_info, 12,
    type: Google.Ads.Googleads.V4.Resources.BillingSetup.PaymentsAccountInfo

  field :start_date_time, 9, type: Google.Protobuf.StringValue, oneof: 0

  field :start_time_type, 10,
    type: Google.Ads.Googleads.V4.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 0

  field :end_date_time, 13, type: Google.Protobuf.StringValue, oneof: 1

  field :end_time_type, 14,
    type: Google.Ads.Googleads.V4.Enums.TimeTypeEnum.TimeType,
    enum: true,
    oneof: 1
end
