defmodule Google.Ads.Datamanager.V1.ConsentStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONSENT_STATUS_UNSPECIFIED, 0
  field :CONSENT_GRANTED, 1
  field :CONSENT_DENIED, 2
end

defmodule Google.Ads.Datamanager.V1.Consent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ad_user_data, 1,
    type: Google.Ads.Datamanager.V1.ConsentStatus,
    json_name: "adUserData",
    enum: true,
    deprecated: false

  field :ad_personalization, 2,
    type: Google.Ads.Datamanager.V1.ConsentStatus,
    json_name: "adPersonalization",
    enum: true,
    deprecated: false
end
