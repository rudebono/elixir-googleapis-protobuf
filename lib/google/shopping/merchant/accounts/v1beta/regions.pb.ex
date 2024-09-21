defmodule Google.Shopping.Merchant.Accounts.V1beta.GetRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.CreateRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :region_id, 2, type: :string, json_name: "regionId", deprecated: false
  field :region, 3, type: Google.Shopping.Merchant.Accounts.V1beta.Region, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.UpdateRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :region, 1, type: Google.Shopping.Merchant.Accounts.V1beta.Region, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.DeleteRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListRegionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.ListRegionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :regions, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1beta.Region
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Region.PostalCodeArea.PostalCodeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :begin, 1, type: :string, deprecated: false
  field :end, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Region.PostalCodeArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode", deprecated: false

  field :postal_codes, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1beta.Region.PostalCodeArea.PostalCodeRange,
    json_name: "postalCodes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Region.GeoTargetArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :geotarget_criteria_ids, 1,
    repeated: true,
    type: :int64,
    json_name: "geotargetCriteriaIds",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.Region do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :postal_code_area, 3,
    type: Google.Shopping.Merchant.Accounts.V1beta.Region.PostalCodeArea,
    json_name: "postalCodeArea",
    deprecated: false

  field :geotarget_area, 4,
    type: Google.Shopping.Merchant.Accounts.V1beta.Region.GeoTargetArea,
    json_name: "geotargetArea",
    deprecated: false

  field :regional_inventory_eligible, 5,
    type: Google.Protobuf.BoolValue,
    json_name: "regionalInventoryEligible",
    deprecated: false

  field :shipping_eligible, 6,
    type: Google.Protobuf.BoolValue,
    json_name: "shippingEligible",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RegionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1beta.RegionsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetRegion,
      Google.Shopping.Merchant.Accounts.V1beta.GetRegionRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Region

  rpc :CreateRegion,
      Google.Shopping.Merchant.Accounts.V1beta.CreateRegionRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Region

  rpc :UpdateRegion,
      Google.Shopping.Merchant.Accounts.V1beta.UpdateRegionRequest,
      Google.Shopping.Merchant.Accounts.V1beta.Region

  rpc :DeleteRegion,
      Google.Shopping.Merchant.Accounts.V1beta.DeleteRegionRequest,
      Google.Protobuf.Empty

  rpc :ListRegions,
      Google.Shopping.Merchant.Accounts.V1beta.ListRegionsRequest,
      Google.Shopping.Merchant.Accounts.V1beta.ListRegionsResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1beta.RegionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1beta.RegionsService.Service
end