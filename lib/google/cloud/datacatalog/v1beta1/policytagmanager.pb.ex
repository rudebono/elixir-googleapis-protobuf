defmodule Google.Cloud.Datacatalog.V1beta1.Taxonomy.PolicyType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :POLICY_TYPE_UNSPECIFIED, 0
  field :FINE_GRAINED_ACCESS_CONTROL, 1
end
defmodule Google.Cloud.Datacatalog.V1beta1.Taxonomy do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :activated_policy_types, 6,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.Taxonomy.PolicyType,
    json_name: "activatedPolicyTypes",
    enum: true,
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTag do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string
  field :parent_policy_tag, 4, type: :string, json_name: "parentPolicyTag"

  field :child_policy_tags, 5,
    repeated: true,
    type: :string,
    json_name: "childPolicyTags",
    deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.CreateTaxonomyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :taxonomy, 2, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
end
defmodule Google.Cloud.Datacatalog.V1beta1.DeleteTaxonomyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.UpdateTaxonomyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :taxonomy, 1, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datacatalog.V1beta1.ListTaxonomiesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Datacatalog.V1beta1.ListTaxonomiesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datacatalog.V1beta1.GetTaxonomyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.CreatePolicyTagRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :policy_tag, 2, type: Google.Cloud.Datacatalog.V1beta1.PolicyTag, json_name: "policyTag"
end
defmodule Google.Cloud.Datacatalog.V1beta1.DeletePolicyTagRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.UpdatePolicyTagRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :policy_tag, 1, type: Google.Cloud.Datacatalog.V1beta1.PolicyTag, json_name: "policyTag"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Datacatalog.V1beta1.ListPolicyTagsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Datacatalog.V1beta1.ListPolicyTagsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :policy_tags, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.PolicyTag,
    json_name: "policyTags"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Datacatalog.V1beta1.GetPolicyTagRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTagManager.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.datacatalog.v1beta1.PolicyTagManager",
    protoc_gen_elixir_version: "0.10.0"

  rpc :CreateTaxonomy,
      Google.Cloud.Datacatalog.V1beta1.CreateTaxonomyRequest,
      Google.Cloud.Datacatalog.V1beta1.Taxonomy

  rpc :DeleteTaxonomy,
      Google.Cloud.Datacatalog.V1beta1.DeleteTaxonomyRequest,
      Google.Protobuf.Empty

  rpc :UpdateTaxonomy,
      Google.Cloud.Datacatalog.V1beta1.UpdateTaxonomyRequest,
      Google.Cloud.Datacatalog.V1beta1.Taxonomy

  rpc :ListTaxonomies,
      Google.Cloud.Datacatalog.V1beta1.ListTaxonomiesRequest,
      Google.Cloud.Datacatalog.V1beta1.ListTaxonomiesResponse

  rpc :GetTaxonomy,
      Google.Cloud.Datacatalog.V1beta1.GetTaxonomyRequest,
      Google.Cloud.Datacatalog.V1beta1.Taxonomy

  rpc :CreatePolicyTag,
      Google.Cloud.Datacatalog.V1beta1.CreatePolicyTagRequest,
      Google.Cloud.Datacatalog.V1beta1.PolicyTag

  rpc :DeletePolicyTag,
      Google.Cloud.Datacatalog.V1beta1.DeletePolicyTagRequest,
      Google.Protobuf.Empty

  rpc :UpdatePolicyTag,
      Google.Cloud.Datacatalog.V1beta1.UpdatePolicyTagRequest,
      Google.Cloud.Datacatalog.V1beta1.PolicyTag

  rpc :ListPolicyTags,
      Google.Cloud.Datacatalog.V1beta1.ListPolicyTagsRequest,
      Google.Cloud.Datacatalog.V1beta1.ListPolicyTagsResponse

  rpc :GetPolicyTag,
      Google.Cloud.Datacatalog.V1beta1.GetPolicyTagRequest,
      Google.Cloud.Datacatalog.V1beta1.PolicyTag

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse
end

defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTagManager.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Datacatalog.V1beta1.PolicyTagManager.Service
end
