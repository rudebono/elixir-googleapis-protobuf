defmodule Google.Ads.Googleads.V16.Errors.RequestErrorEnum.RequestError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :RESOURCE_NAME_MISSING, 3
  field :RESOURCE_NAME_MALFORMED, 4
  field :BAD_RESOURCE_ID, 17
  field :INVALID_CUSTOMER_ID, 16
  field :OPERATION_REQUIRED, 5
  field :RESOURCE_NOT_FOUND, 6
  field :INVALID_PAGE_TOKEN, 7
  field :EXPIRED_PAGE_TOKEN, 8
  field :INVALID_PAGE_SIZE, 22
  field :PAGE_SIZE_NOT_SUPPORTED, 40
  field :REQUIRED_FIELD_MISSING, 9
  field :IMMUTABLE_FIELD, 11
  field :TOO_MANY_MUTATE_OPERATIONS, 13
  field :CANNOT_BE_EXECUTED_BY_MANAGER_ACCOUNT, 14
  field :CANNOT_MODIFY_FOREIGN_FIELD, 15
  field :INVALID_ENUM_VALUE, 18
  field :DEVELOPER_TOKEN_PARAMETER_MISSING, 19
  field :LOGIN_CUSTOMER_ID_PARAMETER_MISSING, 20
  field :VALIDATE_ONLY_REQUEST_HAS_PAGE_TOKEN, 21
  field :CANNOT_RETURN_SUMMARY_ROW_FOR_REQUEST_WITHOUT_METRICS, 29
  field :CANNOT_RETURN_SUMMARY_ROW_FOR_VALIDATE_ONLY_REQUESTS, 30
  field :INCONSISTENT_RETURN_SUMMARY_ROW_VALUE, 31
  field :TOTAL_RESULTS_COUNT_NOT_ORIGINALLY_REQUESTED, 32
  field :RPC_DEADLINE_TOO_SHORT, 33
  field :UNSUPPORTED_VERSION, 38
  field :CLOUD_PROJECT_NOT_FOUND, 39
end

defmodule Google.Ads.Googleads.V16.Errors.RequestErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end