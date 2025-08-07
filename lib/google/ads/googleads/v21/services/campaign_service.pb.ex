defmodule Google.Ads.Googleads.V21.Services.MutateCampaignsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V21.Services.CampaignOperation,
    deprecated: false

  field :partial_failure, 3, type: :bool, json_name: "partialFailure"
  field :validate_only, 4, type: :bool, json_name: "validateOnly"

  field :response_content_type, 5,
    type: Google.Ads.Googleads.V21.Enums.ResponseContentTypeEnum.ResponseContentType,
    json_name: "responseContentType",
    enum: true
end

defmodule Google.Ads.Googleads.V21.Services.CampaignOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :operation, 0

  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :create, 1, type: Google.Ads.Googleads.V21.Resources.Campaign, oneof: 0
  field :update, 2, type: Google.Ads.Googleads.V21.Resources.Campaign, oneof: 0
  field :remove, 3, type: :string, oneof: 0, deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.MutateCampaignsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :partial_failure_error, 3, type: Google.Rpc.Status, json_name: "partialFailureError"
  field :results, 2, repeated: true, type: Google.Ads.Googleads.V21.Services.MutateCampaignResult
end

defmodule Google.Ads.Googleads.V21.Services.MutateCampaignResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource_name, 1, type: :string, json_name: "resourceName", deprecated: false
  field :campaign, 2, type: Google.Ads.Googleads.V21.Resources.Campaign
end

defmodule Google.Ads.Googleads.V21.Services.EnablePMaxBrandGuidelinesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :customer_id, 1, type: :string, json_name: "customerId", deprecated: false

  field :operations, 2,
    repeated: true,
    type: Google.Ads.Googleads.V21.Services.EnableOperation,
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.EnableOperation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :campaign, 1, type: :string, deprecated: false

  field :auto_populate_brand_assets, 2,
    type: :bool,
    json_name: "autoPopulateBrandAssets",
    deprecated: false

  field :brand_assets, 3,
    type: Google.Ads.Googleads.V21.Services.BrandCampaignAssets,
    json_name: "brandAssets",
    deprecated: false

  field :final_uri_domain, 4, type: :string, json_name: "finalUriDomain", deprecated: false
  field :main_color, 5, type: :string, json_name: "mainColor", deprecated: false
  field :accent_color, 6, type: :string, json_name: "accentColor", deprecated: false
  field :font_family, 7, type: :string, json_name: "fontFamily", deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.BrandCampaignAssets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business_name_asset, 1, type: :string, json_name: "businessNameAsset", deprecated: false
  field :logo_asset, 2, repeated: true, type: :string, json_name: "logoAsset", deprecated: false

  field :landscape_logo_asset, 3,
    repeated: true,
    type: :string,
    json_name: "landscapeLogoAsset",
    deprecated: false
end

defmodule Google.Ads.Googleads.V21.Services.EnablePMaxBrandGuidelinesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :results, 1, repeated: true, type: Google.Ads.Googleads.V21.Services.EnablementResult
end

defmodule Google.Ads.Googleads.V21.Services.EnablementResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :campaign, 1, type: :string, deprecated: false
  field :enablement_error, 2, type: Google.Rpc.Status, json_name: "enablementError"
end

defmodule Google.Ads.Googleads.V21.Services.CampaignService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.ads.googleads.v21.services.CampaignService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :MutateCampaigns,
      Google.Ads.Googleads.V21.Services.MutateCampaignsRequest,
      Google.Ads.Googleads.V21.Services.MutateCampaignsResponse

  rpc :EnablePMaxBrandGuidelines,
      Google.Ads.Googleads.V21.Services.EnablePMaxBrandGuidelinesRequest,
      Google.Ads.Googleads.V21.Services.EnablePMaxBrandGuidelinesResponse
end

defmodule Google.Ads.Googleads.V21.Services.CampaignService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Ads.Googleads.V21.Services.CampaignService.Service
end
