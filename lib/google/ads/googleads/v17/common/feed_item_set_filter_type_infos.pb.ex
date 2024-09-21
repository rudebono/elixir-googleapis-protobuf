defmodule Google.Ads.Googleads.V17.Common.DynamicLocationSetFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :labels, 1, repeated: true, type: :string

  field :business_name_filter, 2,
    type: Google.Ads.Googleads.V17.Common.BusinessNameFilter,
    json_name: "businessNameFilter"
end

defmodule Google.Ads.Googleads.V17.Common.BusinessNameFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :business_name, 1, type: :string, json_name: "businessName"

  field :filter_type, 2,
    type:
      Google.Ads.Googleads.V17.Enums.FeedItemSetStringFilterTypeEnum.FeedItemSetStringFilterType,
    json_name: "filterType",
    enum: true
end

defmodule Google.Ads.Googleads.V17.Common.DynamicAffiliateLocationSetFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :chain_ids, 1, repeated: true, type: :int64, json_name: "chainIds"
end