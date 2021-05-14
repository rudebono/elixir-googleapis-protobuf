defmodule Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata.LabelsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          asset_type: String.t(),
          project: String.t(),
          display_name: String.t(),
          description: String.t(),
          additional_attributes: [String.t()],
          location: String.t(),
          labels: %{String.t() => String.t()},
          network_tags: [String.t()]
        }

  defstruct [
    :name,
    :asset_type,
    :project,
    :display_name,
    :description,
    :additional_attributes,
    :location,
    :labels,
    :network_tags
  ]

  field :name, 1, type: :string
  field :asset_type, 2, type: :string
  field :project, 3, type: :string
  field :display_name, 4, type: :string
  field :description, 5, type: :string
  field :additional_attributes, 10, repeated: true, type: :string
  field :location, 11, type: :string

  field :labels, 12,
    repeated: true,
    type: Google.Cloud.Asset.V1p1beta1.StandardResourceMetadata.LabelsEntry,
    map: true

  field :network_tags, 13, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Asset.V1p1beta1.Permissions.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Asset.V1p1beta1.Permissions
end

defmodule Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matched_permissions: %{String.t() => Google.Cloud.Asset.V1p1beta1.Permissions.t() | nil}
        }

  defstruct [:matched_permissions]

  field :matched_permissions, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry,
    map: true
end

defmodule Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          project: String.t(),
          policy: Google.Iam.V1.Policy.t() | nil,
          explanation: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation.t() | nil
        }

  defstruct [:resource, :project, :policy, :explanation]

  field :resource, 1, type: :string
  field :project, 3, type: :string
  field :policy, 4, type: Google.Iam.V1.Policy
  field :explanation, 5, type: Google.Cloud.Asset.V1p1beta1.IamPolicySearchResult.Explanation
end

defmodule Google.Cloud.Asset.V1p1beta1.Permissions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          permissions: [String.t()]
        }

  defstruct [:permissions]

  field :permissions, 1, repeated: true, type: :string
end
