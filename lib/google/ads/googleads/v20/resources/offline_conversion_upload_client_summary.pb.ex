defmodule Google.Ads.Googleads.V20.Resources.OfflineConversionUploadClientSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false

  field :client, 2,
    type: Google.Ads.Googleads.V20.Enums.OfflineEventUploadClientEnum.OfflineEventUploadClient,
    enum: true,
    deprecated: false

  field :status, 3,
    type:
      Google.Ads.Googleads.V20.Enums.OfflineConversionDiagnosticStatusEnum.OfflineConversionDiagnosticStatus,
    enum: true,
    deprecated: false

  field :total_event_count, 4, type: :int64, json_name: "totalEventCount", deprecated: false

  field :successful_event_count, 5,
    type: :int64,
    json_name: "successfulEventCount",
    deprecated: false

  field :success_rate, 6, type: :double, json_name: "successRate", deprecated: false
  field :pending_event_count, 11, type: :int64, json_name: "pendingEventCount", deprecated: false
  field :pending_rate, 12, type: :double, json_name: "pendingRate", deprecated: false

  field :last_upload_date_time, 7,
    type: :string,
    json_name: "lastUploadDateTime",
    deprecated: false

  field :daily_summaries, 8,
    repeated: true,
    type: Google.Ads.Googleads.V20.Resources.OfflineConversionSummary,
    json_name: "dailySummaries",
    deprecated: false

  field :job_summaries, 9,
    repeated: true,
    type: Google.Ads.Googleads.V20.Resources.OfflineConversionSummary,
    json_name: "jobSummaries",
    deprecated: false

  field :alerts, 10,
    repeated: true,
    type: Google.Ads.Googleads.V20.Resources.OfflineConversionAlert,
    deprecated: false
end

defmodule Google.Ads.Googleads.V20.Resources.OfflineConversionSummary do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :dimension_key, 0

  field :successful_count, 3, type: :int64, json_name: "successfulCount", deprecated: false
  field :failed_count, 4, type: :int64, json_name: "failedCount", deprecated: false
  field :pending_count, 5, type: :int64, json_name: "pendingCount", deprecated: false
  field :job_id, 1, type: :int64, json_name: "jobId", oneof: 0, deprecated: false
  field :upload_date, 2, type: :string, json_name: "uploadDate", oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V20.Resources.OfflineConversionAlert do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :error, 1,
    type: Google.Ads.Googleads.V20.Resources.OfflineConversionError,
    deprecated: false

  field :error_percentage, 2, type: :double, json_name: "errorPercentage", deprecated: false
end

defmodule Google.Ads.Googleads.V20.Resources.OfflineConversionError do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :error_code, 0

  field :collection_size_error, 1,
    type: Google.Ads.Googleads.V20.Errors.CollectionSizeErrorEnum.CollectionSizeError,
    json_name: "collectionSizeError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :conversion_adjustment_upload_error, 2,
    type:
      Google.Ads.Googleads.V20.Errors.ConversionAdjustmentUploadErrorEnum.ConversionAdjustmentUploadError,
    json_name: "conversionAdjustmentUploadError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :conversion_upload_error, 3,
    type: Google.Ads.Googleads.V20.Errors.ConversionUploadErrorEnum.ConversionUploadError,
    json_name: "conversionUploadError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :date_error, 4,
    type: Google.Ads.Googleads.V20.Errors.DateErrorEnum.DateError,
    json_name: "dateError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :distinct_error, 5,
    type: Google.Ads.Googleads.V20.Errors.DistinctErrorEnum.DistinctError,
    json_name: "distinctError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :field_error, 6,
    type: Google.Ads.Googleads.V20.Errors.FieldErrorEnum.FieldError,
    json_name: "fieldError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :mutate_error, 7,
    type: Google.Ads.Googleads.V20.Errors.MutateErrorEnum.MutateError,
    json_name: "mutateError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :not_allowlisted_error, 8,
    type: Google.Ads.Googleads.V20.Errors.NotAllowlistedErrorEnum.NotAllowlistedError,
    json_name: "notAllowlistedError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :string_format_error, 9,
    type: Google.Ads.Googleads.V20.Errors.StringFormatErrorEnum.StringFormatError,
    json_name: "stringFormatError",
    enum: true,
    oneof: 0,
    deprecated: false

  field :string_length_error, 10,
    type: Google.Ads.Googleads.V20.Errors.StringLengthErrorEnum.StringLengthError,
    json_name: "stringLengthError",
    enum: true,
    oneof: 0,
    deprecated: false
end
