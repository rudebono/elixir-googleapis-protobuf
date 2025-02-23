defmodule Google.Ads.Googleads.V17.Resources.BillingSetup.PaymentsAccountInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :payments_account_id, 6,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsAccountId",
    deprecated: false

  field :payments_account_name, 7,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsAccountName",
    deprecated: false

  field :payments_profile_id, 8,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsProfileId",
    deprecated: false

  field :payments_profile_name, 9,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsProfileName",
    deprecated: false

  field :secondary_payments_profile_id, 10,
    proto3_optional: true,
    type: :string,
    json_name: "secondaryPaymentsProfileId",
    deprecated: false
end

defmodule Google.Ads.Googleads.V17.Resources.BillingSetup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :start_time, 0

  oneof :end_time, 1

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :id, 15, proto3_optional: true, type: :int64, deprecated: false

  field :status, 3,
    type: Google.Ads.Googleads.V17.Enums.BillingSetupStatusEnum.BillingSetupStatus,
    enum: true,
    deprecated: false

  field :payments_account, 18,
    proto3_optional: true,
    type: :string,
    json_name: "paymentsAccount",
    deprecated: false

  field :payments_account_info, 12,
    type: Google.Ads.Googleads.V17.Resources.BillingSetup.PaymentsAccountInfo,
    json_name: "paymentsAccountInfo",
    deprecated: false

  field :start_date_time, 16,
    type: :string,
    json_name: "startDateTime",
    oneof: 0,
    deprecated: false

  field :start_time_type, 10,
    type: Google.Ads.Googleads.V17.Enums.TimeTypeEnum.TimeType,
    json_name: "startTimeType",
    enum: true,
    oneof: 0,
    deprecated: false

  field :end_date_time, 17, type: :string, json_name: "endDateTime", oneof: 1, deprecated: false

  field :end_time_type, 14,
    type: Google.Ads.Googleads.V17.Enums.TimeTypeEnum.TimeType,
    json_name: "endTimeType",
    enum: true,
    oneof: 1,
    deprecated: false
end
