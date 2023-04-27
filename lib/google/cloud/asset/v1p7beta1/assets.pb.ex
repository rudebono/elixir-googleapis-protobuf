defmodule Google.Cloud.Asset.V1p7beta1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  oneof :access_context_policy, 0

  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :name, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :resource, 3, type: Google.Cloud.Asset.V1p7beta1.Resource
  field :iam_policy, 4, type: Google.Iam.V1.Policy, json_name: "iamPolicy"

  field :org_policy, 6,
    repeated: true,
    type: Google.Cloud.Orgpolicy.V1.Policy,
    json_name: "orgPolicy"

  field :access_policy, 7,
    type: Google.Identity.Accesscontextmanager.V1.AccessPolicy,
    json_name: "accessPolicy",
    oneof: 0

  field :access_level, 8,
    type: Google.Identity.Accesscontextmanager.V1.AccessLevel,
    json_name: "accessLevel",
    oneof: 0

  field :service_perimeter, 9,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    json_name: "servicePerimeter",
    oneof: 0

  field :related_assets, 13,
    type: Google.Cloud.Asset.V1p7beta1.RelatedAssets,
    json_name: "relatedAssets"

  field :ancestors, 10, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p7beta1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :version, 1, type: :string
  field :discovery_document_uri, 2, type: :string, json_name: "discoveryDocumentUri"
  field :discovery_name, 3, type: :string, json_name: "discoveryName"
  field :resource_url, 4, type: :string, json_name: "resourceUrl"
  field :parent, 5, type: :string
  field :data, 6, type: Google.Protobuf.Struct
  field :location, 8, type: :string
end

defmodule Google.Cloud.Asset.V1p7beta1.RelatedAssets do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :relationship_attributes, 1,
    type: Google.Cloud.Asset.V1p7beta1.RelationshipAttributes,
    json_name: "relationshipAttributes"

  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1p7beta1.RelatedAsset
end

defmodule Google.Cloud.Asset.V1p7beta1.RelationshipAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 4, type: :string
  field :source_resource_type, 1, type: :string, json_name: "sourceResourceType"
  field :target_resource_type, 2, type: :string, json_name: "targetResourceType"
  field :action, 3, type: :string
end

defmodule Google.Cloud.Asset.V1p7beta1.RelatedAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :asset, 1, type: :string, deprecated: false
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :ancestors, 3, repeated: true, type: :string
end