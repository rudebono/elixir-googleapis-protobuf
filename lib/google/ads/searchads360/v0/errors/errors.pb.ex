defmodule Google.Ads.Searchads360.V0.Errors.QuotaErrorDetails.QuotaRateScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :ACCOUNT, 2
  field :DEVELOPER, 3
end

defmodule Google.Ads.Searchads360.V0.Errors.SearchAds360Failure do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :errors, 1, repeated: true, type: Google.Ads.Searchads360.V0.Errors.SearchAds360Error
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Google.Ads.Searchads360.V0.Errors.SearchAds360Error do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :error_code, 1, type: Google.Ads.Searchads360.V0.Errors.ErrorCode, json_name: "errorCode"
  field :message, 2, type: :string
  field :trigger, 3, type: Google.Ads.Searchads360.V0.Common.Value
  field :location, 4, type: Google.Ads.Searchads360.V0.Errors.ErrorLocation
  field :details, 5, type: Google.Ads.Searchads360.V0.Errors.ErrorDetails
end

defmodule Google.Ads.Searchads360.V0.Errors.ErrorCode do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :error_code, 0

  field :request_error, 1,
    type: Google.Ads.Searchads360.V0.Errors.RequestErrorEnum.RequestError,
    json_name: "requestError",
    enum: true,
    oneof: 0

  field :query_error, 5,
    type: Google.Ads.Searchads360.V0.Errors.QueryErrorEnum.QueryError,
    json_name: "queryError",
    enum: true,
    oneof: 0

  field :authorization_error, 9,
    type: Google.Ads.Searchads360.V0.Errors.AuthorizationErrorEnum.AuthorizationError,
    json_name: "authorizationError",
    enum: true,
    oneof: 0

  field :internal_error, 10,
    type: Google.Ads.Searchads360.V0.Errors.InternalErrorEnum.InternalError,
    json_name: "internalError",
    enum: true,
    oneof: 0

  field :quota_error, 11,
    type: Google.Ads.Searchads360.V0.Errors.QuotaErrorEnum.QuotaError,
    json_name: "quotaError",
    enum: true,
    oneof: 0

  field :authentication_error, 17,
    type: Google.Ads.Searchads360.V0.Errors.AuthenticationErrorEnum.AuthenticationError,
    json_name: "authenticationError",
    enum: true,
    oneof: 0

  field :date_error, 33,
    type: Google.Ads.Searchads360.V0.Errors.DateErrorEnum.DateError,
    json_name: "dateError",
    enum: true,
    oneof: 0

  field :date_range_error, 34,
    type: Google.Ads.Searchads360.V0.Errors.DateRangeErrorEnum.DateRangeError,
    json_name: "dateRangeError",
    enum: true,
    oneof: 0

  field :distinct_error, 35,
    type: Google.Ads.Searchads360.V0.Errors.DistinctErrorEnum.DistinctError,
    json_name: "distinctError",
    enum: true,
    oneof: 0

  field :header_error, 66,
    type: Google.Ads.Searchads360.V0.Errors.HeaderErrorEnum.HeaderError,
    json_name: "headerError",
    enum: true,
    oneof: 0

  field :size_limit_error, 118,
    type: Google.Ads.Searchads360.V0.Errors.SizeLimitErrorEnum.SizeLimitError,
    json_name: "sizeLimitError",
    enum: true,
    oneof: 0

  field :custom_column_error, 144,
    type: Google.Ads.Searchads360.V0.Errors.CustomColumnErrorEnum.CustomColumnError,
    json_name: "customColumnError",
    enum: true,
    oneof: 0

  field :invalid_parameter_error, 175,
    type: Google.Ads.Searchads360.V0.Errors.InvalidParameterErrorEnum.InvalidParameterError,
    json_name: "invalidParameterError",
    enum: true,
    oneof: 0
end

defmodule Google.Ads.Searchads360.V0.Errors.ErrorLocation.FieldPathElement do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_name, 1, type: :string, json_name: "fieldName"
  field :index, 3, proto3_optional: true, type: :int32
end

defmodule Google.Ads.Searchads360.V0.Errors.ErrorLocation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :field_path_elements, 2,
    repeated: true,
    type: Google.Ads.Searchads360.V0.Errors.ErrorLocation.FieldPathElement,
    json_name: "fieldPathElements"
end

defmodule Google.Ads.Searchads360.V0.Errors.ErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :unpublished_error_code, 1, type: :string, json_name: "unpublishedErrorCode"

  field :quota_error_details, 4,
    type: Google.Ads.Searchads360.V0.Errors.QuotaErrorDetails,
    json_name: "quotaErrorDetails"
end

defmodule Google.Ads.Searchads360.V0.Errors.QuotaErrorDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :rate_scope, 1,
    type: Google.Ads.Searchads360.V0.Errors.QuotaErrorDetails.QuotaRateScope,
    json_name: "rateScope",
    enum: true

  field :rate_name, 2, type: :string, json_name: "rateName"
  field :retry_delay, 3, type: Google.Protobuf.Duration, json_name: "retryDelay"
end
