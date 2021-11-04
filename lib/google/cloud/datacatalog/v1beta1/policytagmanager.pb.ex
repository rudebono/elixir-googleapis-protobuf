defmodule Google.Cloud.Datacatalog.V1beta1.Taxonomy.PolicyType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :POLICY_TYPE_UNSPECIFIED | :FINE_GRAINED_ACCESS_CONTROL

  field :POLICY_TYPE_UNSPECIFIED, 0
  field :FINE_GRAINED_ACCESS_CONTROL, 1
end

defmodule Google.Cloud.Datacatalog.V1beta1.Taxonomy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          activated_policy_types: [Google.Cloud.Datacatalog.V1beta1.Taxonomy.PolicyType.t()]
        }

  defstruct [:name, :display_name, :description, :activated_policy_types]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string

  field :activated_policy_types, 6,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.Taxonomy.PolicyType,
    enum: true,
    json_name: "activatedPolicyTypes"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTag do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          parent_policy_tag: String.t(),
          child_policy_tags: [String.t()]
        }

  defstruct [:name, :display_name, :description, :parent_policy_tag, :child_policy_tags]

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
  field :parent_policy_tag, 4, type: :string, json_name: "parentPolicyTag"
  field :child_policy_tags, 5, repeated: true, type: :string, json_name: "childPolicyTags"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreateTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          taxonomy: Google.Cloud.Datacatalog.V1beta1.Taxonomy.t() | nil
        }

  defstruct [:parent, :taxonomy]

  field :parent, 1, type: :string
  field :taxonomy, 2, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeleteTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdateTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomy: Google.Cloud.Datacatalog.V1beta1.Taxonomy.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:taxonomy, :update_mask]

  field :taxonomy, 1, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListTaxonomiesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListTaxonomiesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          taxonomies: [Google.Cloud.Datacatalog.V1beta1.Taxonomy.t()],
          next_page_token: String.t()
        }

  defstruct [:taxonomies, :next_page_token]

  field :taxonomies, 1, repeated: true, type: Google.Cloud.Datacatalog.V1beta1.Taxonomy
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetTaxonomyRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.CreatePolicyTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          policy_tag: Google.Cloud.Datacatalog.V1beta1.PolicyTag.t() | nil
        }

  defstruct [:parent, :policy_tag]

  field :parent, 1, type: :string
  field :policy_tag, 2, type: Google.Cloud.Datacatalog.V1beta1.PolicyTag, json_name: "policyTag"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.DeletePolicyTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.UpdatePolicyTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_tag: Google.Cloud.Datacatalog.V1beta1.PolicyTag.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:policy_tag, :update_mask]

  field :policy_tag, 1, type: Google.Cloud.Datacatalog.V1beta1.PolicyTag, json_name: "policyTag"
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListPolicyTagsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.ListPolicyTagsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policy_tags: [Google.Cloud.Datacatalog.V1beta1.PolicyTag.t()],
          next_page_token: String.t()
        }

  defstruct [:policy_tags, :next_page_token]

  field :policy_tags, 1,
    repeated: true,
    type: Google.Cloud.Datacatalog.V1beta1.PolicyTag,
    json_name: "policyTags"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.GetPolicyTagRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Datacatalog.V1beta1.PolicyTagManager.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.datacatalog.v1beta1.PolicyTagManager"

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
