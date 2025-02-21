defmodule Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :project, 3, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string

  field :additional_attributes, 10,
    repeated: true,
    type: :string,
    json_name: "additionalAttributes"

  field :location, 11, type: :string

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata.LabelsEntry,
    map: true

  field :network_tags, 13, repeated: true, type: :string, json_name: "networkTags"
end

defmodule Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Asset.V1p1beta1.Permissions
end

defmodule Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :matched_permissions, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry,
    json_name: "matchedPermissions",
    map: true
end

defmodule Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource, 1, type: :string
  field :project, 3, type: :string
  field :policy, 4, type: Google.Iam.V1.Policy
  field :explanation, 5, type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation
end

defmodule Google.Cloud.Asset.V1p1beta1.Permissions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :permissions, 1, repeated: true, type: :string
end
