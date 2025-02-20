defmodule Google.Cloud.Asset.V1p2beta1.TemporalAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :window, 1, type: Google.Cloud.Asset.V1p2beta1.TimeWindow
  field :deleted, 2, type: :bool
  field :asset, 3, type: Google.Cloud.Asset.V1p2beta1.Asset
end

defmodule Google.Cloud.Asset.V1p2beta1.TimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Asset.V1p2beta1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :access_context_policy, 0

  field :name, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :resource, 3, type: Google.Cloud.Asset.V1p2beta1.Resource
  field :iam_policy, 4, type: Google.Iam.V1.Policy, json_name: "iamPolicy"
  field :ancestors, 6, repeated: true, type: :string

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

  field :org_policy, 10,
    repeated: true,
    type: Google.Cloud.Orgpolicy.V1.Policy,
    json_name: "orgPolicy"
end

defmodule Google.Cloud.Asset.V1p2beta1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :version, 1, type: :string
  field :discovery_document_uri, 2, type: :string, json_name: "discoveryDocumentUri"
  field :discovery_name, 3, type: :string, json_name: "discoveryName"
  field :resource_url, 4, type: :string, json_name: "resourceUrl"
  field :parent, 5, type: :string
  field :data, 6, type: Google.Protobuf.Struct
end
