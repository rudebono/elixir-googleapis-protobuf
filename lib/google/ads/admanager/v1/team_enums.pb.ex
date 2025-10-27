defmodule Google.Ads.Admanager.V1.TeamStatusEnum.TeamStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TEAM_STATUS_UNSPECIFIED, 0
  field :ACTIVE, 1
  field :INACTIVE, 2
end

defmodule Google.Ads.Admanager.V1.TeamAccessTypeEnum.TeamAccessType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :TEAM_ACCESS_TYPE_UNSPECIFIED, 0
  field :NONE, 1
  field :READ_ONLY, 2
  field :READ_WRITE, 3
end

defmodule Google.Ads.Admanager.V1.TeamStatusEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end

defmodule Google.Ads.Admanager.V1.TeamAccessTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3
end
