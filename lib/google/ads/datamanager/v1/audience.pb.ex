defmodule Google.Ads.Datamanager.V1.AudienceMember do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :user_data, 2, type: Google.Ads.Datamanager.V1.UserData, json_name: "userData", oneof: 0
  field :pair_data, 4, type: Google.Ads.Datamanager.V1.PairData, json_name: "pairData", oneof: 0

  field :mobile_data, 5,
    type: Google.Ads.Datamanager.V1.MobileData,
    json_name: "mobileData",
    oneof: 0

  field :consent, 3, type: Google.Ads.Datamanager.V1.Consent, deprecated: false
end

defmodule Google.Ads.Datamanager.V1.PairData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :pair_ids, 1, repeated: true, type: :string, json_name: "pairIds", deprecated: false
end

defmodule Google.Ads.Datamanager.V1.MobileData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mobile_ids, 1, repeated: true, type: :string, json_name: "mobileIds", deprecated: false
end
