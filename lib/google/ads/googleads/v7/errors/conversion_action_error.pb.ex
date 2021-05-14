defmodule Google.Ads.Googleads.V7.Errors.ConversionActionErrorEnum.ConversionActionError do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :DUPLICATE_NAME
          | :DUPLICATE_APP_ID
          | :TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD
          | :BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION
          | :DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED
          | :DATA_DRIVEN_MODEL_EXPIRED
          | :DATA_DRIVEN_MODEL_STALE
          | :DATA_DRIVEN_MODEL_UNKNOWN
          | :CREATION_NOT_SUPPORTED
          | :UPDATE_NOT_SUPPORTED

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :DUPLICATE_NAME, 2

  field :DUPLICATE_APP_ID, 3

  field :TWO_CONVERSION_ACTIONS_BIDDING_ON_SAME_APP_DOWNLOAD, 4

  field :BIDDING_ON_SAME_APP_DOWNLOAD_AS_GLOBAL_ACTION, 5

  field :DATA_DRIVEN_MODEL_WAS_NEVER_GENERATED, 6

  field :DATA_DRIVEN_MODEL_EXPIRED, 7

  field :DATA_DRIVEN_MODEL_STALE, 8

  field :DATA_DRIVEN_MODEL_UNKNOWN, 9

  field :CREATION_NOT_SUPPORTED, 10

  field :UPDATE_NOT_SUPPORTED, 11
end

defmodule Google.Ads.Googleads.V7.Errors.ConversionActionErrorEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
