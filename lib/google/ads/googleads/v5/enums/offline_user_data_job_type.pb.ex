defmodule Google.Ads.Googleads.V5.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :UNSPECIFIED
          | :UNKNOWN
          | :STORE_SALES_UPLOAD_FIRST_PARTY
          | :STORE_SALES_UPLOAD_THIRD_PARTY
          | :CUSTOMER_MATCH_USER_LIST

  field :UNSPECIFIED, 0

  field :UNKNOWN, 1

  field :STORE_SALES_UPLOAD_FIRST_PARTY, 2

  field :STORE_SALES_UPLOAD_THIRD_PARTY, 3

  field :CUSTOMER_MATCH_USER_LIST, 4
end

defmodule Google.Ads.Googleads.V5.Enums.OfflineUserDataJobTypeEnum do
  @moduledoc false
  use Protobuf, syntax: :proto3
  @type t :: %__MODULE__{}

  defstruct []
end
