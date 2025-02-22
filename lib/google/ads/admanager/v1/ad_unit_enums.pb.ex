defmodule Google.Ads.Admanager.V1.AdUnitStatusEnum.AdUnitStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :AD_UNIT_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
  field :ARCHIVED, 3
end

defmodule Google.Ads.Admanager.V1.SmartSizeModeEnum.SmartSizeMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :SMART_SIZE_MODE_UNSPECIFIED, 0
  field :NONE, 1
  field :SMART_BANNER, 2
  field :DYNAMIC_SIZE, 3
end

defmodule Google.Ads.Admanager.V1.TargetWindowEnum.TargetWindow do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :TARGET_WINDOW_UNSPECIFIED, 0
  field :TOP, 1
  field :BLANK, 2
end

defmodule Google.Ads.Admanager.V1.AdUnitStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.SmartSizeModeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.TargetWindowEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
