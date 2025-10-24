defmodule Google.Ads.Admanager.V1.Targeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :geo_targeting, 2,
    type: Google.Ads.Admanager.V1.GeoTargeting,
    json_name: "geoTargeting",
    deprecated: false

  field :technology_targeting, 3,
    type: Google.Ads.Admanager.V1.TechnologyTargeting,
    json_name: "technologyTargeting",
    deprecated: false

  field :inventory_targeting, 5,
    type: Google.Ads.Admanager.V1.InventoryTargeting,
    json_name: "inventoryTargeting",
    deprecated: false

  field :request_platform_targeting, 6,
    type: Google.Ads.Admanager.V1.RequestPlatformTargeting,
    json_name: "requestPlatformTargeting",
    deprecated: false

  field :custom_targeting, 7,
    type: Google.Ads.Admanager.V1.CustomTargeting,
    json_name: "customTargeting",
    deprecated: false

  field :user_domain_targeting, 10,
    type: Google.Ads.Admanager.V1.UserDomainTargeting,
    json_name: "userDomainTargeting",
    deprecated: false

  field :video_position_targeting, 12,
    type: Google.Ads.Admanager.V1.VideoPositionTargeting,
    json_name: "videoPositionTargeting",
    deprecated: false

  field :data_segment_targeting, 13,
    type: Google.Ads.Admanager.V1.DataSegmentTargeting,
    json_name: "dataSegmentTargeting",
    deprecated: false

  field :content_targeting, 15,
    type: Google.Ads.Admanager.V1.ContentTargeting,
    json_name: "contentTargeting",
    deprecated: false

  field :mobile_application_targeting, 18,
    type: Google.Ads.Admanager.V1.MobileApplicationTargeting,
    json_name: "mobileApplicationTargeting",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.GeoTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_geos, 3,
    repeated: true,
    type: :string,
    json_name: "targetedGeos",
    deprecated: false

  field :excluded_geos, 4,
    repeated: true,
    type: :string,
    json_name: "excludedGeos",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.TechnologyTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :bandwidth_targeting, 3,
    type: Google.Ads.Admanager.V1.BandwidthTargeting,
    json_name: "bandwidthTargeting",
    deprecated: false

  field :browser_targeting, 4,
    type: Google.Ads.Admanager.V1.BrowserTargeting,
    json_name: "browserTargeting",
    deprecated: false

  field :browser_language_targeting, 5,
    type: Google.Ads.Admanager.V1.BrowserLanguageTargeting,
    json_name: "browserLanguageTargeting",
    deprecated: false

  field :device_capability_targeting, 6,
    type: Google.Ads.Admanager.V1.DeviceCapabilityTargeting,
    json_name: "deviceCapabilityTargeting",
    deprecated: false

  field :device_category_targeting, 1,
    type: Google.Ads.Admanager.V1.DeviceCategoryTargeting,
    json_name: "deviceCategoryTargeting",
    deprecated: false

  field :device_manufacturer_targeting, 7,
    type: Google.Ads.Admanager.V1.DeviceManufacturerTargeting,
    json_name: "deviceManufacturerTargeting",
    deprecated: false

  field :mobile_carrier_targeting, 8,
    type: Google.Ads.Admanager.V1.MobileCarrierTargeting,
    json_name: "mobileCarrierTargeting",
    deprecated: false

  field :operating_system_targeting, 2,
    type: Google.Ads.Admanager.V1.OperatingSystemTargeting,
    json_name: "operatingSystemTargeting",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BandwidthTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_bandwidth_groups, 3,
    repeated: true,
    type: :string,
    json_name: "targetedBandwidthGroups",
    deprecated: false

  field :excluded_bandwidth_groups, 4,
    repeated: true,
    type: :string,
    json_name: "excludedBandwidthGroups",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BrowserTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_browsers, 3,
    repeated: true,
    type: :string,
    json_name: "targetedBrowsers",
    deprecated: false

  field :excluded_browsers, 4,
    repeated: true,
    type: :string,
    json_name: "excludedBrowsers",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.BrowserLanguageTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_browser_languages, 3,
    repeated: true,
    type: :string,
    json_name: "targetedBrowserLanguages",
    deprecated: false

  field :excluded_browser_languages, 4,
    repeated: true,
    type: :string,
    json_name: "excludedBrowserLanguages",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.DeviceCategoryTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_categories, 3,
    repeated: true,
    type: :string,
    json_name: "targetedCategories",
    deprecated: false

  field :excluded_categories, 4,
    repeated: true,
    type: :string,
    json_name: "excludedCategories",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.DeviceCapabilityTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_capabilities, 3,
    repeated: true,
    type: :string,
    json_name: "targetedCapabilities",
    deprecated: false

  field :excluded_capabilities, 4,
    repeated: true,
    type: :string,
    json_name: "excludedCapabilities",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.DeviceManufacturerTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_device_manufacturers, 7,
    repeated: true,
    type: :string,
    json_name: "targetedDeviceManufacturers",
    deprecated: false

  field :excluded_device_manufacturers, 8,
    repeated: true,
    type: :string,
    json_name: "excludedDeviceManufacturers",
    deprecated: false

  field :targeted_mobile_devices, 9,
    repeated: true,
    type: :string,
    json_name: "targetedMobileDevices",
    deprecated: false

  field :excluded_mobile_devices, 10,
    repeated: true,
    type: :string,
    json_name: "excludedMobileDevices",
    deprecated: false

  field :targeted_mobile_device_submodels, 11,
    repeated: true,
    type: :string,
    json_name: "targetedMobileDeviceSubmodels",
    deprecated: false

  field :excluded_mobile_device_submodels, 12,
    repeated: true,
    type: :string,
    json_name: "excludedMobileDeviceSubmodels",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.MobileCarrierTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_mobile_carriers, 3,
    repeated: true,
    type: :string,
    json_name: "targetedMobileCarriers",
    deprecated: false

  field :excluded_mobile_carriers, 4,
    repeated: true,
    type: :string,
    json_name: "excludedMobileCarriers",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.OperatingSystemTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_operating_systems, 5,
    repeated: true,
    type: :string,
    json_name: "targetedOperatingSystems",
    deprecated: false

  field :excluded_operating_systems, 6,
    repeated: true,
    type: :string,
    json_name: "excludedOperatingSystems",
    deprecated: false

  field :targeted_operating_system_versions, 7,
    repeated: true,
    type: :string,
    json_name: "targetedOperatingSystemVersions",
    deprecated: false

  field :excluded_operating_system_versions, 8,
    repeated: true,
    type: :string,
    json_name: "excludedOperatingSystemVersions",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.InventoryTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_ad_units, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdUnitTargeting,
    json_name: "targetedAdUnits",
    deprecated: false

  field :excluded_ad_units, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.AdUnitTargeting,
    json_name: "excludedAdUnits",
    deprecated: false

  field :targeted_placements, 5,
    repeated: true,
    type: :string,
    json_name: "targetedPlacements",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.AdUnitTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :include_descendants, 1,
    proto3_optional: true,
    type: :bool,
    json_name: "includeDescendants"

  field :ad_unit, 3, proto3_optional: true, type: :string, json_name: "adUnit", deprecated: false
end

defmodule Google.Ads.Admanager.V1.RequestPlatformTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :request_platforms, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.RequestPlatformEnum.RequestPlatform,
    json_name: "requestPlatforms",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CustomTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_targeting_clauses, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingClause,
    json_name: "customTargetingClauses",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CustomTargetingClause do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_targeting_literals, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.CustomTargetingLiteral,
    json_name: "customTargetingLiterals",
    deprecated: false

  field :audience_segment_targetings, 2,
    repeated: true,
    type: Google.Ads.Admanager.V1.AudienceSegmentTargeting,
    json_name: "audienceSegmentTargetings",
    deprecated: false

  field :cms_metadata_targetings, 3,
    repeated: true,
    type: Google.Ads.Admanager.V1.CmsMetadataTargeting,
    json_name: "cmsMetadataTargetings",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CustomTargetingLiteral do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :negative, 1, proto3_optional: true, type: :bool

  field :custom_targeting_key, 4,
    proto3_optional: true,
    type: :string,
    json_name: "customTargetingKey",
    deprecated: false

  field :custom_targeting_values, 5,
    repeated: true,
    type: :string,
    json_name: "customTargetingValues",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.AudienceSegmentTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :negative, 1, proto3_optional: true, type: :bool

  field :audience_segments, 3,
    repeated: true,
    type: :string,
    json_name: "audienceSegments",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.CmsMetadataTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :negative, 1, proto3_optional: true, type: :bool

  field :cms_metadata_values, 3,
    repeated: true,
    type: :string,
    json_name: "cmsMetadataValues",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.UserDomainTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_user_domains, 1,
    repeated: true,
    type: :string,
    json_name: "targetedUserDomains",
    deprecated: false

  field :excluded_user_domains, 2,
    repeated: true,
    type: :string,
    json_name: "excludedUserDomains",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.VideoPositionTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :video_positions, 1,
    repeated: true,
    type: Google.Ads.Admanager.V1.VideoPosition,
    json_name: "videoPositions",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.VideoPosition do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :midroll_index, 1,
    proto3_optional: true,
    type: :int64,
    json_name: "midrollIndex",
    deprecated: false

  field :reverse_midroll_index, 2,
    proto3_optional: true,
    type: :int64,
    json_name: "reverseMidrollIndex",
    deprecated: false

  field :pod_position, 3,
    proto3_optional: true,
    type: :int64,
    json_name: "podPosition",
    deprecated: false

  field :position_type, 5,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.VideoPositionEnum.VideoPosition,
    json_name: "positionType",
    enum: true,
    deprecated: false

  field :bumper_type, 6,
    proto3_optional: true,
    type: Google.Ads.Admanager.V1.TargetedVideoBumperTypeEnum.TargetedVideoBumperType,
    json_name: "bumperType",
    enum: true,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.DataSegmentTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :has_data_segment_targeting, 2,
    type: :bool,
    json_name: "hasDataSegmentTargeting",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.ContentTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_content, 5,
    repeated: true,
    type: :string,
    json_name: "targetedContent",
    deprecated: false

  field :excluded_content, 6,
    repeated: true,
    type: :string,
    json_name: "excludedContent",
    deprecated: false

  field :targeted_content_bundles, 7,
    repeated: true,
    type: :string,
    json_name: "targetedContentBundles",
    deprecated: false

  field :excluded_content_bundles, 8,
    repeated: true,
    type: :string,
    json_name: "excludedContentBundles",
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.MobileApplicationTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :targeting, 0

  field :first_party_targeting, 1,
    type: Google.Ads.Admanager.V1.FirstPartyMobileApplicationTargeting,
    json_name: "firstPartyTargeting",
    oneof: 0,
    deprecated: false
end

defmodule Google.Ads.Admanager.V1.FirstPartyMobileApplicationTargeting do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :targeted_applications, 3,
    repeated: true,
    type: :string,
    json_name: "targetedApplications",
    deprecated: false

  field :excluded_applications, 4,
    repeated: true,
    type: :string,
    json_name: "excludedApplications",
    deprecated: false
end
