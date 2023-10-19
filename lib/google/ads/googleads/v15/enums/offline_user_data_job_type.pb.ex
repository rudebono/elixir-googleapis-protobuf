defmodule Google.Ads.Googleads.V15.Enums.OfflineUserDataJobTypeEnum.OfflineUserDataJobType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :STORE_SALES_UPLOAD_FIRST_PARTY, 2
  field :STORE_SALES_UPLOAD_THIRD_PARTY, 3
  field :CUSTOMER_MATCH_USER_LIST, 4
  field :CUSTOMER_MATCH_WITH_ATTRIBUTES, 5
end

defmodule Google.Ads.Googleads.V15.Enums.OfflineUserDataJobTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3
end