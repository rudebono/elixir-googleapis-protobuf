defmodule Google.Ads.Googleads.V9.Enums.PolicyTopicEntryTypeEnum.PolicyTopicEntryType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :PROHIBITED, 2
  field :LIMITED, 4
  field :FULLY_LIMITED, 8
  field :DESCRIPTIVE, 5
  field :BROADENING, 6
  field :AREA_OF_INTEREST_ONLY, 7
end

defmodule Google.Ads.Googleads.V9.Enums.PolicyTopicEntryTypeEnum do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3
end