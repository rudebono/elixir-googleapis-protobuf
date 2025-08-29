defmodule Google.Shopping.Merchant.Accounts.V1.GetRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.CreateRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :region_id, 2, type: :string, json_name: "regionId", deprecated: false
  field :region, 3, type: Google.Shopping.Merchant.Accounts.V1.Region, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BatchCreateRegionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.CreateRegionRequest,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BatchCreateRegionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :regions, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1.Region
end

defmodule Google.Shopping.Merchant.Accounts.V1.UpdateRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :region, 1, type: Google.Shopping.Merchant.Accounts.V1.Region, deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BatchUpdateRegionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.UpdateRegionRequest,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BatchUpdateRegionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :regions, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1.Region
end

defmodule Google.Shopping.Merchant.Accounts.V1.DeleteRegionRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.BatchDeleteRegionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :requests, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.DeleteRegionRequest,
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListRegionsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.ListRegionsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :regions, 1, repeated: true, type: Google.Shopping.Merchant.Accounts.V1.Region
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Shopping.Merchant.Accounts.V1.Region.PostalCodeArea.PostalCodeRange do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :begin, 1, type: :string, deprecated: false
  field :end, 2, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Region.PostalCodeArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :region_code, 1, type: :string, json_name: "regionCode", deprecated: false

  field :postal_codes, 2,
    repeated: true,
    type: Google.Shopping.Merchant.Accounts.V1.Region.PostalCodeArea.PostalCodeRange,
    json_name: "postalCodes",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Region.GeoTargetArea do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :geotarget_criteria_ids, 1,
    repeated: true,
    type: :int64,
    json_name: "geotargetCriteriaIds",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Accounts.V1.Region do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :display_name, 2,
    proto3_optional: true,
    type: :string,
    json_name: "displayName",
    deprecated: false

  field :postal_code_area, 3,
    type: Google.Shopping.Merchant.Accounts.V1.Region.PostalCodeArea,
    json_name: "postalCodeArea",
    deprecated: false

  field :geotarget_area, 4,
    type: Google.Shopping.Merchant.Accounts.V1.Region.GeoTargetArea,
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

defmodule Google.Shopping.Merchant.Accounts.V1.RegionsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.accounts.v1.RegionsService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :GetRegion,
      Google.Shopping.Merchant.Accounts.V1.GetRegionRequest,
      Google.Shopping.Merchant.Accounts.V1.Region

  rpc :CreateRegion,
      Google.Shopping.Merchant.Accounts.V1.CreateRegionRequest,
      Google.Shopping.Merchant.Accounts.V1.Region

  rpc :BatchCreateRegions,
      Google.Shopping.Merchant.Accounts.V1.BatchCreateRegionsRequest,
      Google.Shopping.Merchant.Accounts.V1.BatchCreateRegionsResponse

  rpc :UpdateRegion,
      Google.Shopping.Merchant.Accounts.V1.UpdateRegionRequest,
      Google.Shopping.Merchant.Accounts.V1.Region

  rpc :BatchUpdateRegions,
      Google.Shopping.Merchant.Accounts.V1.BatchUpdateRegionsRequest,
      Google.Shopping.Merchant.Accounts.V1.BatchUpdateRegionsResponse

  rpc :DeleteRegion,
      Google.Shopping.Merchant.Accounts.V1.DeleteRegionRequest,
      Google.Protobuf.Empty

  rpc :BatchDeleteRegions,
      Google.Shopping.Merchant.Accounts.V1.BatchDeleteRegionsRequest,
      Google.Protobuf.Empty

  rpc :ListRegions,
      Google.Shopping.Merchant.Accounts.V1.ListRegionsRequest,
      Google.Shopping.Merchant.Accounts.V1.ListRegionsResponse
end

defmodule Google.Shopping.Merchant.Accounts.V1.RegionsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Accounts.V1.RegionsService.Service
end
