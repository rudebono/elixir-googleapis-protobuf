defmodule Google.Cloud.Asset.V1p5beta1.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_context_policy: {atom, any},
          name: String.t(),
          asset_type: String.t(),
          resource: Google.Cloud.Asset.V1p5beta1.Resource.t() | nil,
          iam_policy: Google.Iam.V1.Policy.t() | nil,
          org_policy: [Google.Cloud.Orgpolicy.V1.Policy.t()],
          ancestors: [String.t()]
        }

  defstruct [
    :access_context_policy,
    :name,
    :asset_type,
    :resource,
    :iam_policy,
    :org_policy,
    :ancestors
  ]

  oneof :access_context_policy, 0
  field :name, 1, type: :string
  field :asset_type, 2, type: :string
  field :resource, 3, type: Google.Cloud.Asset.V1p5beta1.Resource
  field :iam_policy, 4, type: Google.Iam.V1.Policy
  field :org_policy, 6, repeated: true, type: Google.Cloud.Orgpolicy.V1.Policy
  field :access_policy, 7, type: Google.Identity.Accesscontextmanager.V1.AccessPolicy, oneof: 0
  field :access_level, 8, type: Google.Identity.Accesscontextmanager.V1.AccessLevel, oneof: 0

  field :service_perimeter, 9,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    oneof: 0

  field :ancestors, 10, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p5beta1.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          discovery_document_uri: String.t(),
          discovery_name: String.t(),
          resource_url: String.t(),
          parent: String.t(),
          data: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:version, :discovery_document_uri, :discovery_name, :resource_url, :parent, :data]

  field :version, 1, type: :string
  field :discovery_document_uri, 2, type: :string
  field :discovery_name, 3, type: :string
  field :resource_url, 4, type: :string
  field :parent, 5, type: :string
  field :data, 6, type: Google.Protobuf.Struct
end
