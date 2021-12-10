defmodule Google.Ads.Googleads.V9.Errors.BatchJobErrorEnum.BatchJobError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :CANNOT_MODIFY_JOB_AFTER_JOB_STARTS_RUNNING
          | :EMPTY_OPERATIONS
          | :INVALID_SEQUENCE_TOKEN
          | :RESULTS_NOT_READY
          | :INVALID_PAGE_SIZE
          | :CAN_ONLY_REMOVE_PENDING_JOB

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CANNOT_MODIFY_JOB_AFTER_JOB_STARTS_RUNNING, 2
  field :EMPTY_OPERATIONS, 3
  field :INVALID_SEQUENCE_TOKEN, 4
  field :RESULTS_NOT_READY, 5
  field :INVALID_PAGE_SIZE, 6
  field :CAN_ONLY_REMOVE_PENDING_JOB, 7
end
defmodule Google.Ads.Googleads.V9.Errors.BatchJobErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
