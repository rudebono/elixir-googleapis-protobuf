defmodule Google.Ads.Googleads.V4.Services.UploadClickConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversions: [Google.Ads.Googleads.V4.Services.ClickConversion.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :conversions, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.ClickConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.UploadClickConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.ClickConversionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.ClickConversionResult
end

defmodule Google.Ads.Googleads.V4.Services.UploadCallConversionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          customer_id: String.t(),
          conversions: [Google.Ads.Googleads.V4.Services.CallConversion.t()],
          partial_failure: boolean,
          validate_only: boolean
        }

  defstruct [:customer_id, :conversions, :partial_failure, :validate_only]

  field :customer_id, 1, type: :string
  field :conversions, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.CallConversion
  field :partial_failure, 3, type: :bool
  field :validate_only, 4, type: :bool
end

defmodule Google.Ads.Googleads.V4.Services.UploadCallConversionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          partial_failure_error: Google.Rpc.Status.t() | nil,
          results: [Google.Ads.Googleads.V4.Services.CallConversionResult.t()]
        }

  defstruct [:partial_failure_error, :results]

  field :partial_failure_error, 1, type: Google.Rpc.Status
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V4.Services.CallConversionResult
end

defmodule Google.Ads.Googleads.V4.Services.ClickConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          conversion_date_time: Google.Protobuf.StringValue.t() | nil,
          conversion_value: Google.Protobuf.DoubleValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil,
          order_id: Google.Protobuf.StringValue.t() | nil,
          external_attribution_data:
            Google.Ads.Googleads.V4.Services.ExternalAttributionData.t() | nil
        }

  defstruct [
    :gclid,
    :conversion_action,
    :conversion_date_time,
    :conversion_value,
    :currency_code,
    :order_id,
    :external_attribution_data
  ]

  field :gclid, 1, type: Google.Protobuf.StringValue
  field :conversion_action, 2, type: Google.Protobuf.StringValue
  field :conversion_date_time, 3, type: Google.Protobuf.StringValue
  field :conversion_value, 4, type: Google.Protobuf.DoubleValue
  field :currency_code, 5, type: Google.Protobuf.StringValue
  field :order_id, 6, type: Google.Protobuf.StringValue

  field :external_attribution_data, 7,
    type: Google.Ads.Googleads.V4.Services.ExternalAttributionData
end

defmodule Google.Ads.Googleads.V4.Services.CallConversion do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_id: Google.Protobuf.StringValue.t() | nil,
          call_start_date_time: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          conversion_date_time: Google.Protobuf.StringValue.t() | nil,
          conversion_value: Google.Protobuf.DoubleValue.t() | nil,
          currency_code: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [
    :caller_id,
    :call_start_date_time,
    :conversion_action,
    :conversion_date_time,
    :conversion_value,
    :currency_code
  ]

  field :caller_id, 1, type: Google.Protobuf.StringValue
  field :call_start_date_time, 2, type: Google.Protobuf.StringValue
  field :conversion_action, 3, type: Google.Protobuf.StringValue
  field :conversion_date_time, 4, type: Google.Protobuf.StringValue
  field :conversion_value, 5, type: Google.Protobuf.DoubleValue
  field :currency_code, 6, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ExternalAttributionData do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          external_attribution_credit: Google.Protobuf.DoubleValue.t() | nil,
          external_attribution_model: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:external_attribution_credit, :external_attribution_model]

  field :external_attribution_credit, 1, type: Google.Protobuf.DoubleValue
  field :external_attribution_model, 2, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.ClickConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gclid: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          conversion_date_time: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:gclid, :conversion_action, :conversion_date_time]

  field :gclid, 1, type: Google.Protobuf.StringValue
  field :conversion_action, 2, type: Google.Protobuf.StringValue
  field :conversion_date_time, 3, type: Google.Protobuf.StringValue
end

defmodule Google.Ads.Googleads.V4.Services.CallConversionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          caller_id: Google.Protobuf.StringValue.t() | nil,
          call_start_date_time: Google.Protobuf.StringValue.t() | nil,
          conversion_action: Google.Protobuf.StringValue.t() | nil,
          conversion_date_time: Google.Protobuf.StringValue.t() | nil
        }

  defstruct [:caller_id, :call_start_date_time, :conversion_action, :conversion_date_time]

  field :caller_id, 1, type: Google.Protobuf.StringValue
  field :call_start_date_time, 2, type: Google.Protobuf.StringValue
  field :conversion_action, 3, type: Google.Protobuf.StringValue
  field :conversion_date_time, 4, type: Google.Protobuf.StringValue
end
