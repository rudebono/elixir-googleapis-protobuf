defmodule Google.Ads.Googleads.V17.Errors.BatchJobErrorEnum.BatchJobError do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_MODIFY_JOB_AFTER_JOB_STARTS_RUNNING, 2
  field :EMPTY_OPERATIONS, 3
  field :INVALID_SEQUENCE_TOKEN, 4
  field :RESULTS_NOT_READY, 5
  field :INVALID_PAGE_SIZE, 6
  field :CAN_ONLY_REMOVE_PENDING_JOB, 7
  field :CANNOT_LIST_RESULTS, 8
  field :ASSET_GROUP_AND_ASSET_GROUP_ASSET_TRANSACTION_FAILURE, 9
  field :ASSET_GROUP_LISTING_GROUP_FILTER_TRANSACTION_FAILURE, 10
  field :REQUEST_TOO_LARGE, 11
end

defmodule Google.Ads.Googleads.V17.Errors.BatchJobErrorEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
