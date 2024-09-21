defmodule Google.Ads.Admanager.V1.CustomTargetingValueStatusEnum.CustomTargetingValueStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CUSTOM_TARGETING_VALUE_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Google.Ads.Admanager.V1.CustomTargetingValueMatchTypeEnum.CustomTargetingValueMatchType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :CUSTOM_TARGETING_VALUE_MATCH_TYPE_UNSPECIFIED, 0
  field :EXACT, 1
  field :BROAD, 2
  field :PREFIX, 3
  field :BROAD_PREFIX, 4
  field :SUFFIX, 5
  field :CONTAINS, 6
end

defmodule Google.Ads.Admanager.V1.CustomTargetingValueStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.CustomTargetingValueMatchTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3
end