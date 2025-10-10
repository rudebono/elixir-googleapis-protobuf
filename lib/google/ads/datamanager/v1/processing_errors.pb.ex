defmodule Google.Ads.Datamanager.V1.ProcessingErrorReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCESSING_ERROR_REASON_UNSPECIFIED, 0
  field :PROCESSING_ERROR_REASON_INVALID_CUSTOM_VARIABLE, 1
  field :PROCESSING_ERROR_REASON_CUSTOM_VARIABLE_NOT_ENABLED, 2
  field :PROCESSING_ERROR_REASON_EVENT_TOO_OLD, 3
  field :PROCESSING_ERROR_REASON_DENIED_CONSENT, 4
  field :PROCESSING_ERROR_REASON_NO_CONSENT, 5
  field :PROCESSING_ERROR_REASON_UNKNOWN_CONSENT, 6
  field :PROCESSING_ERROR_REASON_DUPLICATE_GCLID, 7
  field :PROCESSING_ERROR_REASON_DUPLICATE_TRANSACTION_ID, 8
  field :PROCESSING_ERROR_REASON_INVALID_GBRAID, 9
  field :PROCESSING_ERROR_REASON_INVALID_GCLID, 10
  field :PROCESSING_ERROR_REASON_INVALID_MERCHANT_ID, 11
  field :PROCESSING_ERROR_REASON_INVALID_WBRAID, 12
  field :PROCESSING_ERROR_REASON_INTERNAL_ERROR, 13
  field :PROCESSING_ERROR_REASON_DESTINATION_ACCOUNT_ENHANCED_CONVERSIONS_TERMS_NOT_SIGNED, 14
  field :PROCESSING_ERROR_REASON_INVALID_EVENT, 15
  field :PROCESSING_ERROR_REASON_INSUFFICIENT_MATCHED_TRANSACTIONS, 16
  field :PROCESSING_ERROR_REASON_INSUFFICIENT_TRANSACTIONS, 17
  field :PROCESSING_ERROR_REASON_INVALID_FORMAT, 18
  field :PROCESSING_ERROR_REASON_DECRYPTION_ERROR, 19
  field :PROCESSING_ERROR_REASON_DEK_DECRYPTION_ERROR, 20
  field :PROCESSING_ERROR_REASON_INVALID_WIP, 21
  field :PROCESSING_ERROR_REASON_INVALID_KEK, 22
  field :PROCESSING_ERROR_REASON_WIP_AUTH_FAILED, 23
  field :PROCESSING_ERROR_REASON_KEK_PERMISSION_DENIED, 24
  field :PROCESSING_ERROR_REASON_USER_IDENTIFIER_DECRYPTION_ERROR, 25
  field :PROCESSING_ERROR_OPERATING_ACCOUNT_MISMATCH_FOR_AD_IDENTIFIER, 26
end

defmodule Google.Ads.Datamanager.V1.ProcessingWarningReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCESSING_WARNING_REASON_UNSPECIFIED, 0
  field :PROCESSING_WARNING_REASON_KEK_PERMISSION_DENIED, 1
  field :PROCESSING_WARNING_REASON_DEK_DECRYPTION_ERROR, 2
  field :PROCESSING_WARNING_REASON_DECRYPTION_ERROR, 3
  field :PROCESSING_WARNING_REASON_WIP_AUTH_FAILED, 4
  field :PROCESSING_WARNING_REASON_INVALID_WIP, 5
  field :PROCESSING_WARNING_REASON_INVALID_KEK, 6
  field :PROCESSING_WARNING_REASON_USER_IDENTIFIER_DECRYPTION_ERROR, 7
  field :PROCESSING_WARNING_REASON_INTERNAL_ERROR, 8
end

defmodule Google.Ads.Datamanager.V1.ErrorInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_counts, 1,
    repeated: true,
    type: Google.Ads.Datamanager.V1.ErrorCount,
    json_name: "errorCounts"
end

defmodule Google.Ads.Datamanager.V1.ErrorCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :reason, 2, type: Google.Ads.Datamanager.V1.ProcessingErrorReason, enum: true
end

defmodule Google.Ads.Datamanager.V1.WarningInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :warning_counts, 1,
    repeated: true,
    type: Google.Ads.Datamanager.V1.WarningCount,
    json_name: "warningCounts"
end

defmodule Google.Ads.Datamanager.V1.WarningCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :record_count, 1, type: :int64, json_name: "recordCount"
  field :reason, 2, type: Google.Ads.Datamanager.V1.ProcessingWarningReason, enum: true
end
