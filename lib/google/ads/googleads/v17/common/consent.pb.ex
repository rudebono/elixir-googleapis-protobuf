defmodule Google.Ads.Googleads.V17.Common.Consent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :ad_user_data, 1,
    type: Google.Ads.Googleads.V17.Enums.ConsentStatusEnum.ConsentStatus,
    json_name: "adUserData",
    enum: true

  field :ad_personalization, 2,
    type: Google.Ads.Googleads.V17.Enums.ConsentStatusEnum.ConsentStatus,
    json_name: "adPersonalization",
    enum: true
end
