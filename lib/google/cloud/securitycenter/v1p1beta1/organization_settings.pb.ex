defmodule Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :INCLUSION_MODE_UNSPECIFIED, 0
  field :INCLUDE_ONLY, 1
  field :EXCLUDE, 2
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings.AssetDiscoveryConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :project_ids, 1, repeated: true, type: :string, json_name: "projectIds"

  field :inclusion_mode, 2,
    type:
      Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings.AssetDiscoveryConfig.InclusionMode,
    json_name: "inclusionMode",
    enum: true

  field :folder_ids, 3, repeated: true, type: :string, json_name: "folderIds"
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :enable_asset_discovery, 2, type: :bool, json_name: "enableAssetDiscovery"

  field :asset_discovery_config, 3,
    type: Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings.AssetDiscoveryConfig,
    json_name: "assetDiscoveryConfig"
end
