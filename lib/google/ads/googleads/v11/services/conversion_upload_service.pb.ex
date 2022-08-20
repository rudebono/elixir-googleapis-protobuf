defmodule Google.Ads.Googleads.V11.Services.UploadClickConversionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.ClickConversion,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V11.Services.UploadClickConversionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V11.Services.ClickConversionResult
end

defmodule Google.Ads.Googleads.V11.Services.UploadCallConversionsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversions, 2,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CallConversion,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
end

defmodule Google.Ads.Googleads.V11.Services.UploadCallConversionsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V11.Services.CallConversionResult
end

defmodule Google.Ads.Googleads.V11.Services.ClickConversion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gclid, 9, proto3_optional: true, type: :string
  field :gbraid, 18, type: :string
  field :wbraid, 19, type: :string

  field :conversion_action, 10,
    proto3_optional: true,
    type: :string,
    json_name: "conversionAction"

  field :conversion_date_time, 11,
    proto3_optional: true,
    type: :string,
    json_name: "conversionDateTime"

  field :conversion_value, 12, proto3_optional: true, type: :double, json_name: "conversionValue"
  field :currency_code, 13, proto3_optional: true, type: :string, json_name: "currencyCode"
  field :order_id, 14, proto3_optional: true, type: :string, json_name: "orderId"

  field :external_attribution_data, 7,
    type: Google.Ads.Googleads.V11.Services.ExternalAttributionData,
    json_name: "externalAttributionData"

  field :custom_variables, 15,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CustomVariable,
    json_name: "customVariables"

  field :cart_data, 16, type: Google.Ads.Googleads.V11.Services.CartData, json_name: "cartData"

  field :user_identifiers, 17,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserIdentifier,
    json_name: "userIdentifiers"

  field :conversion_environment, 20,
    type: Google.Ads.Googleads.V11.Enums.ConversionEnvironmentEnum.ConversionEnvironment,
    json_name: "conversionEnvironment",
    enum: true
end

defmodule Google.Ads.Googleads.V11.Services.CallConversion do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :caller_id, 7, proto3_optional: true, type: :string, json_name: "callerId"

  field :call_start_date_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "callStartDateTime"

  field :conversion_action, 9, proto3_optional: true, type: :string, json_name: "conversionAction"

  field :conversion_date_time, 10,
    proto3_optional: true,
    type: :string,
    json_name: "conversionDateTime"

  field :conversion_value, 11, proto3_optional: true, type: :double, json_name: "conversionValue"
  field :currency_code, 12, proto3_optional: true, type: :string, json_name: "currencyCode"

  field :custom_variables, 13,
    repeated: true,
    type: Google.Ads.Googleads.V11.Services.CustomVariable,
    json_name: "customVariables"
end

defmodule Google.Ads.Googleads.V11.Services.ExternalAttributionData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :external_attribution_credit, 3,
    proto3_optional: true,
    type: :double,
    json_name: "externalAttributionCredit"

  field :external_attribution_model, 4,
    proto3_optional: true,
    type: :string,
    json_name: "externalAttributionModel"
end

defmodule Google.Ads.Googleads.V11.Services.ClickConversionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gclid, 4, proto3_optional: true, type: :string
  field :gbraid, 8, type: :string
  field :wbraid, 9, type: :string
  field :conversion_action, 5, proto3_optional: true, type: :string, json_name: "conversionAction"

  field :conversion_date_time, 6,
    proto3_optional: true,
    type: :string,
    json_name: "conversionDateTime"

  field :user_identifiers, 7,
    repeated: true,
    type: Google.Ads.Googleads.V11.Common.UserIdentifier,
    json_name: "userIdentifiers"
end

defmodule Google.Ads.Googleads.V11.Services.CallConversionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :caller_id, 5, proto3_optional: true, type: :string, json_name: "callerId"

  field :call_start_date_time, 6,
    proto3_optional: true,
    type: :string,
    json_name: "callStartDateTime"

  field :conversion_action, 7, proto3_optional: true, type: :string, json_name: "conversionAction"

  field :conversion_date_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "conversionDateTime"
end

defmodule Google.Ads.Googleads.V11.Services.CustomVariable do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :conversion_custom_variable, 1,
    type: :string,
    json_name: "conversionCustomVariable",
    deprecated: false

  field :value, 2, type: :string
end

defmodule Google.Ads.Googleads.V11.Services.CartData.Item do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :product_id, 1, type: :string, json_name: "productId"
  field :quantity, 2, type: :int32
  field :unit_price, 3, type: :double, json_name: "unitPrice"
end

defmodule Google.Ads.Googleads.V11.Services.CartData do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :merchant_id, 6, type: :int64, json_name: "merchantId"
  field :feed_country_code, 2, type: :string, json_name: "feedCountryCode"
  field :feed_language_code, 3, type: :string, json_name: "feedLanguageCode"
  field :local_transaction_cost, 4, type: :double, json_name: "localTransactionCost"
  field :items, 5, repeated: true, type: Google.Ads.Googleads.V11.Services.CartData.Item
end

defmodule Google.Ads.Googleads.V11.Services.ConversionUploadService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.ads.googleads.v11.services.ConversionUploadService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :UploadClickConversions,
      Google.Ads.Googleads.V11.Services.UploadClickConversionsRequest,
      Google.Ads.Googleads.V11.Services.UploadClickConversionsResponse

  rpc :UploadCallConversions,
      Google.Ads.Googleads.V11.Services.UploadCallConversionsRequest,
      Google.Ads.Googleads.V11.Services.UploadCallConversionsResponse
end

defmodule Google.Ads.Googleads.V11.Services.ConversionUploadService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Ads.Googleads.V11.Services.ConversionUploadService.Service
end