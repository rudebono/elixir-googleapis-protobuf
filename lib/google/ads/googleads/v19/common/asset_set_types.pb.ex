defmodule Google.Ads.Googleads.V19.Common.LocationSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :source, 0

  field :location_ownership_type, 3,
    type: Google.Ads.Googleads.V19.Enums.LocationOwnershipTypeEnum.LocationOwnershipType,
    json_name: "locationOwnershipType",
    enum: true,
    deprecated: false

  field :business_profile_location_set, 1,
    type: Google.Ads.Googleads.V19.Common.BusinessProfileLocationSet,
    json_name: "businessProfileLocationSet",
    oneof: 0

  field :chain_location_set, 2,
    type: Google.Ads.Googleads.V19.Common.ChainSet,
    json_name: "chainLocationSet",
    oneof: 0

  field :maps_location_set, 5,
    type: Google.Ads.Googleads.V19.Common.MapsLocationSet,
    json_name: "mapsLocationSet",
    oneof: 0
end

defmodule Google.Ads.Googleads.V19.Common.BusinessProfileLocationSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :http_authorization_token, 1,
    type: :string,
    json_name: "httpAuthorizationToken",
    deprecated: false

  field :email_address, 2, type: :string, json_name: "emailAddress", deprecated: false
  field :business_name_filter, 3, type: :string, json_name: "businessNameFilter"
  field :label_filters, 4, repeated: true, type: :string, json_name: "labelFilters"
  field :listing_id_filters, 5, repeated: true, type: :int64, json_name: "listingIdFilters"
  field :business_account_id, 6, type: :string, json_name: "businessAccountId", deprecated: false
end

defmodule Google.Ads.Googleads.V19.Common.ChainSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :relationship_type, 1,
    type: Google.Ads.Googleads.V19.Enums.ChainRelationshipTypeEnum.ChainRelationshipType,
    json_name: "relationshipType",
    enum: true,
    deprecated: false

  field :chains, 2,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.ChainFilter,
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Common.ChainFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :chain_id, 1, type: :int64, json_name: "chainId", deprecated: false
  field :location_attributes, 2, repeated: true, type: :string, json_name: "locationAttributes"
end

defmodule Google.Ads.Googleads.V19.Common.MapsLocationSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :maps_locations, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.MapsLocationInfo,
    json_name: "mapsLocations",
    deprecated: false
end

defmodule Google.Ads.Googleads.V19.Common.MapsLocationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :place_id, 1, type: :string, json_name: "placeId"
end

defmodule Google.Ads.Googleads.V19.Common.BusinessProfileLocationGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dynamic_business_profile_location_group_filter, 1,
    type: Google.Ads.Googleads.V19.Common.DynamicBusinessProfileLocationGroupFilter,
    json_name: "dynamicBusinessProfileLocationGroupFilter"
end

defmodule Google.Ads.Googleads.V19.Common.DynamicBusinessProfileLocationGroupFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :label_filters, 1, repeated: true, type: :string, json_name: "labelFilters"

  field :business_name_filter, 2,
    proto3_optional: true,
    type: Google.Ads.Googleads.V19.Common.BusinessProfileBusinessNameFilter,
    json_name: "businessNameFilter"

  field :listing_id_filters, 3, repeated: true, type: :int64, json_name: "listingIdFilters"
end

defmodule Google.Ads.Googleads.V19.Common.BusinessProfileBusinessNameFilter do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :business_name, 1, type: :string, json_name: "businessName"

  field :filter_type, 2,
    type: Google.Ads.Googleads.V19.Enums.LocationStringFilterTypeEnum.LocationStringFilterType,
    json_name: "filterType",
    enum: true
end

defmodule Google.Ads.Googleads.V19.Common.ChainLocationGroup do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dynamic_chain_location_group_filters, 1,
    repeated: true,
    type: Google.Ads.Googleads.V19.Common.ChainFilter,
    json_name: "dynamicChainLocationGroupFilters"
end
