defmodule Google.Ads.Googleads.V17.Services.UploadConversionAdjustmentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :conversion_adjustments, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.ConversionAdjustment,
    json_name: "conversionAdjustments",
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure", deprecated: false
  field :validate_only, 4, type: :bool, json_name: "validateOnly"
  field :job_id, 5, proto3_optional: true, type: :int32, json_name: "jobId", deprecated: false
end

defmodule Google.Ads.Googleads.V17.Services.UploadConversionAdjustmentsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :partial_failure_error, 1, type: Google.Rpc.Status, json_name: "partialFailureError"

  field :results, 2,
    repeated: true,
    type: Google.Ads.Googleads.V17.Services.ConversionAdjustmentResult

  field :job_id, 3, type: :int64, json_name: "jobId"
end

defmodule Google.Ads.Googleads.V17.Services.ConversionAdjustment do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gclid_date_time_pair, 12,
    type: Google.Ads.Googleads.V17.Services.GclidDateTimePair,
    json_name: "gclidDateTimePair"

  field :order_id, 13, proto3_optional: true, type: :string, json_name: "orderId"
  field :conversion_action, 8, proto3_optional: true, type: :string, json_name: "conversionAction"

  field :adjustment_date_time, 9,
    proto3_optional: true,
    type: :string,
    json_name: "adjustmentDateTime"

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V17.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    json_name: "adjustmentType",
    enum: true

  field :restatement_value, 6,
    type: Google.Ads.Googleads.V17.Services.RestatementValue,
    json_name: "restatementValue"

  field :user_identifiers, 10,
    repeated: true,
    type: Google.Ads.Googleads.V17.Common.UserIdentifier,
    json_name: "userIdentifiers"

  field :user_agent, 11, proto3_optional: true, type: :string, json_name: "userAgent"
end

defmodule Google.Ads.Googleads.V17.Services.RestatementValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :adjusted_value, 3, proto3_optional: true, type: :double, json_name: "adjustedValue"
  field :currency_code, 4, proto3_optional: true, type: :string, json_name: "currencyCode"
end

defmodule Google.Ads.Googleads.V17.Services.GclidDateTimePair do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gclid, 3, proto3_optional: true, type: :string

  field :conversion_date_time, 4,
    proto3_optional: true,
    type: :string,
    json_name: "conversionDateTime"
end

defmodule Google.Ads.Googleads.V17.Services.ConversionAdjustmentResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :gclid_date_time_pair, 9,
    type: Google.Ads.Googleads.V17.Services.GclidDateTimePair,
    json_name: "gclidDateTimePair"

  field :order_id, 10, type: :string, json_name: "orderId"
  field :conversion_action, 7, proto3_optional: true, type: :string, json_name: "conversionAction"

  field :adjustment_date_time, 8,
    proto3_optional: true,
    type: :string,
    json_name: "adjustmentDateTime"

  field :adjustment_type, 5,
    type: Google.Ads.Googleads.V17.Enums.ConversionAdjustmentTypeEnum.ConversionAdjustmentType,
    json_name: "adjustmentType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Services.ConversionAdjustmentUploadService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v17.services.ConversionAdjustmentUploadService",
    protoc_gen_elixir_version: "0.14.0"

  rpc :UploadConversionAdjustments,
      Google.Ads.Googleads.V17.Services.UploadConversionAdjustmentsRequest,
      Google.Ads.Googleads.V17.Services.UploadConversionAdjustmentsResponse
end

defmodule Google.Ads.Googleads.V17.Services.ConversionAdjustmentUploadService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Ads.Googleads.V17.Services.ConversionAdjustmentUploadService.Service
end
