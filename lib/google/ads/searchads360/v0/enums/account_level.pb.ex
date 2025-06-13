defmodule Google.Ads.Searchads360.V0.Enums.AccountLevelTypeEnum.AccountLevelType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :UNSPECIFIED, 0
  field :UNKNOWN, 1
  field :CLIENT_ACCOUNT_FACEBOOK, 2
  field :CLIENT_ACCOUNT_GOOGLE_ADS, 3
  field :CLIENT_ACCOUNT_MICROSOFT, 4
  field :CLIENT_ACCOUNT_YAHOO_JAPAN, 5
  field :CLIENT_ACCOUNT_ENGINE_TRACK, 6
  field :MANAGER, 30
  field :SUB_MANAGER, 31
  field :ASSOCIATE_MANAGER, 32
end

defmodule Google.Ads.Searchads360.V0.Enums.AccountLevelTypeEnum do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
