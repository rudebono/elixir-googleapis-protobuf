defmodule Google.Ads.Googleads.V22.Common.CustomerThirdPartyIntegrationPartners do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :viewability_integration_partners, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CustomerThirdPartyViewabilityIntegrationPartner,
    json_name: "viewabilityIntegrationPartners"

  field :brand_lift_integration_partners, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CustomerThirdPartyBrandLiftIntegrationPartner,
    json_name: "brandLiftIntegrationPartners"

  field :brand_safety_integration_partners, 3,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CustomerThirdPartyBrandSafetyIntegrationPartner,
    json_name: "brandSafetyIntegrationPartners"

  field :reach_integration_partners, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CustomerThirdPartyReachIntegrationPartner,
    json_name: "reachIntegrationPartners"
end

defmodule Google.Ads.Googleads.V22.Common.CustomerThirdPartyViewabilityIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :viewability_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyViewabilityIntegrationPartnerEnum.ThirdPartyViewabilityIntegrationPartner,
    json_name: "viewabilityIntegrationPartner",
    enum: true

  field :allow_share_cost, 2, type: :bool, json_name: "allowShareCost"
end

defmodule Google.Ads.Googleads.V22.Common.CustomerThirdPartyBrandSafetyIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :brand_safety_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyBrandSafetyIntegrationPartnerEnum.ThirdPartyBrandSafetyIntegrationPartner,
    json_name: "brandSafetyIntegrationPartner",
    enum: true
end

defmodule Google.Ads.Googleads.V22.Common.CustomerThirdPartyBrandLiftIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :brand_lift_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyBrandLiftIntegrationPartnerEnum.ThirdPartyBrandLiftIntegrationPartner,
    json_name: "brandLiftIntegrationPartner",
    enum: true

  field :allow_share_cost, 2, type: :bool, json_name: "allowShareCost"
end

defmodule Google.Ads.Googleads.V22.Common.CustomerThirdPartyReachIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reach_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyReachIntegrationPartnerEnum.ThirdPartyReachIntegrationPartner,
    json_name: "reachIntegrationPartner",
    enum: true

  field :allow_share_cost, 2, type: :bool, json_name: "allowShareCost"
end

defmodule Google.Ads.Googleads.V22.Common.CampaignThirdPartyIntegrationPartners do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :viewability_integration_partners, 1,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CampaignThirdPartyViewabilityIntegrationPartner,
    json_name: "viewabilityIntegrationPartners"

  field :brand_lift_integration_partners, 2,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CampaignThirdPartyBrandLiftIntegrationPartner,
    json_name: "brandLiftIntegrationPartners"

  field :brand_safety_integration_partners, 3,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CampaignThirdPartyBrandSafetyIntegrationPartner,
    json_name: "brandSafetyIntegrationPartners"

  field :reach_integration_partners, 4,
    repeated: true,
    type: Google.Ads.Googleads.V22.Common.CampaignThirdPartyReachIntegrationPartner,
    json_name: "reachIntegrationPartners"
end

defmodule Google.Ads.Googleads.V22.Common.CampaignThirdPartyViewabilityIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :viewability_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyViewabilityIntegrationPartnerEnum.ThirdPartyViewabilityIntegrationPartner,
    json_name: "viewabilityIntegrationPartner",
    enum: true

  field :viewability_integration_partner_data, 2,
    type: Google.Ads.Googleads.V22.Common.ThirdPartyIntegrationPartnerData,
    json_name: "viewabilityIntegrationPartnerData"

  field :share_cost, 3, type: :bool, json_name: "shareCost"
end

defmodule Google.Ads.Googleads.V22.Common.CampaignThirdPartyBrandSafetyIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :brand_safety_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyBrandSafetyIntegrationPartnerEnum.ThirdPartyBrandSafetyIntegrationPartner,
    json_name: "brandSafetyIntegrationPartner",
    enum: true

  field :brand_safety_integration_partner_data, 2,
    type: Google.Ads.Googleads.V22.Common.ThirdPartyIntegrationPartnerData,
    json_name: "brandSafetyIntegrationPartnerData"
end

defmodule Google.Ads.Googleads.V22.Common.CampaignThirdPartyBrandLiftIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :brand_lift_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyBrandLiftIntegrationPartnerEnum.ThirdPartyBrandLiftIntegrationPartner,
    json_name: "brandLiftIntegrationPartner",
    enum: true

  field :brand_lift_integration_partner_data, 2,
    type: Google.Ads.Googleads.V22.Common.ThirdPartyIntegrationPartnerData,
    json_name: "brandLiftIntegrationPartnerData"

  field :share_cost, 3, type: :bool, json_name: "shareCost"
end

defmodule Google.Ads.Googleads.V22.Common.CampaignThirdPartyReachIntegrationPartner do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :reach_integration_partner, 1,
    type:
      Google.Ads.Googleads.V22.Enums.ThirdPartyReachIntegrationPartnerEnum.ThirdPartyReachIntegrationPartner,
    json_name: "reachIntegrationPartner",
    enum: true

  field :reach_integration_partner_data, 2,
    type: Google.Ads.Googleads.V22.Common.ThirdPartyIntegrationPartnerData,
    json_name: "reachIntegrationPartnerData"

  field :share_cost, 3, type: :bool, json_name: "shareCost"
end

defmodule Google.Ads.Googleads.V22.Common.ThirdPartyIntegrationPartnerData do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
  field :third_party_placement_id, 2, type: :string, json_name: "thirdPartyPlacementId"
end
