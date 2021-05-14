defmodule Google.Ads.Googleads.V4.Resources.Customer do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_name: String.t(),
          id: Google.Protobuf.Int64Value.t() | nil,
          descriptive_name: Google.Protobuf.StringValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          time_zone: Google.Protobuf.StringValue.t() | nil,
          tracking_url_template: Google.Protobuf.StringValue.t() | nil,
          final_url_suffix: Google.Protobuf.StringValue.t() | nil,
          auto_tagging_enabled: Google.Protobuf.BoolValue.t() | nil,
          has_partners_badge: Google.Protobuf.BoolValue.t() | nil,
          manager: Google.Protobuf.BoolValue.t() | nil,
          test_account: Google.Protobuf.BoolValue.t() | nil,
          call_reporting_setting:
            Google.Ads.Googleads.V4.Resources.CallReportingSetting.t() | nil,
          conversion_tracking_setting:
            Google.Ads.Googleads.V4.Resources.ConversionTrackingSetting.t() | nil,
          remarketing_setting: Google.Ads.Googleads.V4.Resources.RemarketingSetting.t() | nil,
          pay_per_conversion_eligibility_failure_reasons: [
            [
              Google.Ads.Googleads.V4.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason.t()
            ]
          ],
          optimization_score: Google.Protobuf.DoubleValue.t() | nil
        }

  defstruct [
    :resource_name,
    :id,
    :descriptive_name,
    :currency_code,
    :time_zone,
    :tracking_url_template,
    :final_url_suffix,
    :auto_tagging_enabled,
    :has_partners_badge,
    :manager,
    :test_account,
    :call_reporting_setting,
    :conversion_tracking_setting,
    :remarketing_setting,
    :pay_per_conversion_eligibility_failure_reasons,
    :optimization_score
  ]

  field :resource_name, 1, type: :string
  field :id, 3, type: Google.Protobuf.Int64Value
  field :descriptive_name, 4, type: Google.Protobuf.StringValue
  field :currency_code, 5, type: Google.Protobuf.StringValue
  field :time_zone, 6, type: Google.Protobuf.StringValue
  field :tracking_url_template, 7, type: Google.Protobuf.StringValue
  field :final_url_suffix, 11, type: Google.Protobuf.StringValue
  field :auto_tagging_enabled, 8, type: Google.Protobuf.BoolValue
  field :has_partners_badge, 9, type: Google.Protobuf.BoolValue
  field :manager, 12, type: Google.Protobuf.BoolValue
  field :test_account, 13, type: Google.Protobuf.BoolValue
  field :call_reporting_setting, 10, type: Google.Ads.Googleads.V4.Resources.CallReportingSetting

  field :conversion_tracking_setting, 14,
    type: Google.Ads.Googleads.V4.Resources.ConversionTrackingSetting

  field :remarketing_setting, 15, type: Google.Ads.Googleads.V4.Resources.RemarketingSetting

  field :pay_per_conversion_eligibility_failure_reasons, 16,
    repeated: true,
    type:
      Google.Ads.Googleads.V4.Enums.CustomerPayPerConversionEligibilityFailureReasonEnum.CustomerPayPerConversionEligibilityFailureReason,
    enum: true

  field :optimization_score, 17, type: Google.Protobuf.DoubleValue
end

defmodule Google.Ads.Googleads.V4.Resources.CallReportingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          call_reporting_enabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_reporting_enabled: Google.Protobuf.BoolValue.t() | nil,
          call_conversion_action: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:call_reporting_enabled, :call_conversion_reporting_enabled, :call_conversion_action]

  field :call_reporting_enabled, 1, type: Google.Protobuf.BoolValue
  field :call_conversion_reporting_enabled, 2, type: Google.Protobuf.BoolValue
  field :call_conversion_action, 9, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Resources.ConversionTrackingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversion_tracking_id: Google.Protobuf.Int64Value.t() | nil,
          cross_account_conversion_tracking_id: Google.Protobuf.Int64Value.t() | nil
        }

  defstruct [:conversion_tracking_id, :cross_account_conversion_tracking_id]

  field :conversion_tracking_id, 1, type: Google.Protobuf.Int64Value
  field :cross_account_conversion_tracking_id, 2, type: Google.Protobuf.Int64Value
end

defmodule Google.Ads.Googleads.V4.Resources.RemarketingSetting do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          google_global_site_tag: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:google_global_site_tag]

  field :google_global_site_tag, 1, type: Google.Protobuf.StringValue
end
