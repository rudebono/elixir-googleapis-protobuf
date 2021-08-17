defmodule Google.Cloud.Asset.V1.TemporalAsset.PriorAssetState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :PRIOR_ASSET_STATE_UNSPECIFIED
          | :PRESENT
          | :INVALID
          | :DOES_NOT_EXIST
          | :DELETED

  field :PRIOR_ASSET_STATE_UNSPECIFIED, 0

  field :PRESENT, 1

  field :INVALID, 2

  field :DOES_NOT_EXIST, 3

  field :DELETED, 4
end

defmodule Google.Cloud.Asset.V1.ConditionEvaluation.EvaluationValue do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :EVALUATION_VALUE_UNSPECIFIED | :TRUE | :FALSE | :CONDITIONAL

  field :EVALUATION_VALUE_UNSPECIFIED, 0

  field :TRUE, 1

  field :FALSE, 2

  field :CONDITIONAL, 3
end

defmodule Google.Cloud.Asset.V1.TemporalAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          window: Google.Cloud.Asset.V1.TimeWindow.t() | nil,
          deleted: boolean,
          asset: Google.Cloud.Asset.V1.Asset.t() | nil,
          prior_asset_state: Google.Cloud.Asset.V1.TemporalAsset.PriorAssetState.t(),
          prior_asset: Google.Cloud.Asset.V1.Asset.t() | nil
        }

  defstruct [:window, :deleted, :asset, :prior_asset_state, :prior_asset]

  field :window, 1, type: Google.Cloud.Asset.V1.TimeWindow
  field :deleted, 2, type: :bool
  field :asset, 3, type: Google.Cloud.Asset.V1.Asset

  field :prior_asset_state, 4,
    type: Google.Cloud.Asset.V1.TemporalAsset.PriorAssetState,
    enum: true

  field :prior_asset, 5, type: Google.Cloud.Asset.V1.Asset
end

defmodule Google.Cloud.Asset.V1.TimeWindow do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp
  field :end_time, 2, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Asset.V1.Asset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          access_context_policy: {atom, any},
          update_time: Google.Protobuf.Timestamp.t() | nil,
          name: String.t(),
          asset_type: String.t(),
          resource: Google.Cloud.Asset.V1.Resource.t() | nil,
          iam_policy: Google.Iam.V1.Policy.t() | nil,
          org_policy: [Google.Cloud.Orgpolicy.V1.Policy.t()],
          os_inventory: Google.Cloud.Osconfig.V1.Inventory.t() | nil,
          related_assets: Google.Cloud.Asset.V1.RelatedAssets.t() | nil,
          ancestors: [String.t()]
        }

  defstruct [
    :access_context_policy,
    :update_time,
    :name,
    :asset_type,
    :resource,
    :iam_policy,
    :org_policy,
    :os_inventory,
    :related_assets,
    :ancestors
  ]

  oneof :access_context_policy, 0
  field :update_time, 11, type: Google.Protobuf.Timestamp
  field :name, 1, type: :string
  field :asset_type, 2, type: :string
  field :resource, 3, type: Google.Cloud.Asset.V1.Resource
  field :iam_policy, 4, type: Google.Iam.V1.Policy
  field :org_policy, 6, repeated: true, type: Google.Cloud.Orgpolicy.V1.Policy
  field :access_policy, 7, type: Google.Identity.Accesscontextmanager.V1.AccessPolicy, oneof: 0
  field :access_level, 8, type: Google.Identity.Accesscontextmanager.V1.AccessLevel, oneof: 0

  field :service_perimeter, 9,
    type: Google.Identity.Accesscontextmanager.V1.ServicePerimeter,
    oneof: 0

  field :os_inventory, 12, type: Google.Cloud.Osconfig.V1.Inventory
  field :related_assets, 13, type: Google.Cloud.Asset.V1.RelatedAssets
  field :ancestors, 10, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          discovery_document_uri: String.t(),
          discovery_name: String.t(),
          resource_url: String.t(),
          parent: String.t(),
          data: Google.Protobuf.Struct.t() | nil,
          location: String.t()
        }

  defstruct [
    :version,
    :discovery_document_uri,
    :discovery_name,
    :resource_url,
    :parent,
    :data,
    :location
  ]

  field :version, 1, type: :string
  field :discovery_document_uri, 2, type: :string
  field :discovery_name, 3, type: :string
  field :resource_url, 4, type: :string
  field :parent, 5, type: :string
  field :data, 6, type: Google.Protobuf.Struct
  field :location, 8, type: :string
end

defmodule Google.Cloud.Asset.V1.RelatedAssets do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          relationship_attributes: Google.Cloud.Asset.V1.RelationshipAttributes.t() | nil,
          assets: [Google.Cloud.Asset.V1.RelatedAsset.t()]
        }

  defstruct [:relationship_attributes, :assets]

  field :relationship_attributes, 1, type: Google.Cloud.Asset.V1.RelationshipAttributes
  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1.RelatedAsset
end

defmodule Google.Cloud.Asset.V1.RelationshipAttributes do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          type: String.t(),
          source_resource_type: String.t(),
          target_resource_type: String.t(),
          action: String.t()
        }

  defstruct [:type, :source_resource_type, :target_resource_type, :action]

  field :type, 4, type: :string
  field :source_resource_type, 1, type: :string
  field :target_resource_type, 2, type: :string
  field :action, 3, type: :string
end

defmodule Google.Cloud.Asset.V1.RelatedAsset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: String.t(),
          asset_type: String.t(),
          ancestors: [String.t()]
        }

  defstruct [:asset, :asset_type, :ancestors]

  field :asset, 1, type: :string
  field :asset_type, 2, type: :string
  field :ancestors, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1.ResourceSearchResult.LabelsEntry do
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

defmodule Google.Cloud.Asset.V1.ResourceSearchResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          asset_type: String.t(),
          project: String.t(),
          folders: [String.t()],
          organization: String.t(),
          display_name: String.t(),
          description: String.t(),
          location: String.t(),
          labels: %{String.t() => String.t()},
          network_tags: [String.t()],
          kms_key: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          state: String.t(),
          additional_attributes: Google.Protobuf.Struct.t() | nil,
          parent_full_resource_name: String.t(),
          versioned_resources: [Google.Cloud.Asset.V1.VersionedResource.t()],
          attached_resources: [Google.Cloud.Asset.V1.AttachedResource.t()],
          parent_asset_type: String.t()
        }

  defstruct [
    :name,
    :asset_type,
    :project,
    :folders,
    :organization,
    :display_name,
    :description,
    :location,
    :labels,
    :network_tags,
    :kms_key,
    :create_time,
    :update_time,
    :state,
    :additional_attributes,
    :parent_full_resource_name,
    :versioned_resources,
    :attached_resources,
    :parent_asset_type
  ]

  field :name, 1, type: :string
  field :asset_type, 2, type: :string
  field :project, 3, type: :string
  field :folders, 17, repeated: true, type: :string
  field :organization, 18, type: :string
  field :display_name, 4, type: :string
  field :description, 5, type: :string
  field :location, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Asset.V1.ResourceSearchResult.LabelsEntry,
    map: true

  field :network_tags, 8, repeated: true, type: :string
  field :kms_key, 10, type: :string
  field :create_time, 11, type: Google.Protobuf.Timestamp
  field :update_time, 12, type: Google.Protobuf.Timestamp
  field :state, 13, type: :string
  field :additional_attributes, 9, type: Google.Protobuf.Struct
  field :parent_full_resource_name, 19, type: :string
  field :versioned_resources, 16, repeated: true, type: Google.Cloud.Asset.V1.VersionedResource
  field :attached_resources, 20, repeated: true, type: Google.Cloud.Asset.V1.AttachedResource
  field :parent_asset_type, 103, type: :string
end

defmodule Google.Cloud.Asset.V1.VersionedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          version: String.t(),
          resource: Google.Protobuf.Struct.t() | nil
        }

  defstruct [:version, :resource]

  field :version, 1, type: :string
  field :resource, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Asset.V1.AttachedResource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset_type: String.t(),
          versioned_resources: [Google.Cloud.Asset.V1.VersionedResource.t()]
        }

  defstruct [:asset_type, :versioned_resources]

  field :asset_type, 1, type: :string
  field :versioned_resources, 3, repeated: true, type: Google.Cloud.Asset.V1.VersionedResource
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.Permissions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          permissions: [String.t()]
        }

  defstruct [:permissions]

  field :permissions, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.Permissions.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.Permissions
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          matched_permissions: %{
            String.t() =>
              Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.Permissions.t() | nil
          }
        }

  defstruct [:matched_permissions]

  field :matched_permissions, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry,
    map: true
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource: String.t(),
          asset_type: String.t(),
          project: String.t(),
          folders: [String.t()],
          organization: String.t(),
          policy: Google.Iam.V1.Policy.t() | nil,
          explanation: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.t() | nil
        }

  defstruct [:resource, :asset_type, :project, :folders, :organization, :policy, :explanation]

  field :resource, 1, type: :string
  field :asset_type, 5, type: :string
  field :project, 2, type: :string
  field :folders, 6, repeated: true, type: :string
  field :organization, 7, type: :string
  field :policy, 3, type: Google.Iam.V1.Policy
  field :explanation, 4, type: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisState do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          code: Google.Rpc.Code.t(),
          cause: String.t()
        }

  defstruct [:code, :cause]

  field :code, 1, type: Google.Rpc.Code, enum: true
  field :cause, 2, type: :string
end

defmodule Google.Cloud.Asset.V1.ConditionEvaluation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          evaluation_value: Google.Cloud.Asset.V1.ConditionEvaluation.EvaluationValue.t()
        }

  defstruct [:evaluation_value]

  field :evaluation_value, 1,
    type: Google.Cloud.Asset.V1.ConditionEvaluation.EvaluationValue,
    enum: true
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          full_resource_name: String.t(),
          analysis_state: Google.Cloud.Asset.V1.IamPolicyAnalysisState.t() | nil
        }

  defstruct [:full_resource_name, :analysis_state]

  field :full_resource_name, 1, type: :string
  field :analysis_state, 2, type: Google.Cloud.Asset.V1.IamPolicyAnalysisState
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Access do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          oneof_access: {atom, any},
          analysis_state: Google.Cloud.Asset.V1.IamPolicyAnalysisState.t() | nil
        }

  defstruct [:oneof_access, :analysis_state]

  oneof :oneof_access, 0
  field :role, 1, type: :string, oneof: 0
  field :permission, 2, type: :string, oneof: 0
  field :analysis_state, 3, type: Google.Cloud.Asset.V1.IamPolicyAnalysisState
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Identity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          analysis_state: Google.Cloud.Asset.V1.IamPolicyAnalysisState.t() | nil
        }

  defstruct [:name, :analysis_state]

  field :name, 1, type: :string
  field :analysis_state, 2, type: Google.Cloud.Asset.V1.IamPolicyAnalysisState
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source_node: String.t(),
          target_node: String.t()
        }

  defstruct [:source_node, :target_node]

  field :source_node, 1, type: :string
  field :target_node, 2, type: :string
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.AccessControlList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resources: [Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Resource.t()],
          accesses: [Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Access.t()],
          resource_edges: [Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge.t()],
          condition_evaluation: Google.Cloud.Asset.V1.ConditionEvaluation.t() | nil
        }

  defstruct [:resources, :accesses, :resource_edges, :condition_evaluation]

  field :resources, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Resource

  field :accesses, 2, repeated: true, type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Access

  field :resource_edges, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge

  field :condition_evaluation, 4, type: Google.Cloud.Asset.V1.ConditionEvaluation
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.IdentityList do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identities: [Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Identity.t()],
          group_edges: [Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge.t()]
        }

  defstruct [:identities, :group_edges]

  field :identities, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Identity

  field :group_edges, 2, repeated: true, type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          attached_resource_full_name: String.t(),
          iam_binding: Google.Iam.V1.Binding.t() | nil,
          access_control_lists: [
            Google.Cloud.Asset.V1.IamPolicyAnalysisResult.AccessControlList.t()
          ],
          identity_list: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.IdentityList.t() | nil,
          fully_explored: boolean
        }

  defstruct [
    :attached_resource_full_name,
    :iam_binding,
    :access_control_lists,
    :identity_list,
    :fully_explored
  ]

  field :attached_resource_full_name, 1, type: :string
  field :iam_binding, 2, type: Google.Iam.V1.Binding

  field :access_control_lists, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.AccessControlList

  field :identity_list, 4, type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.IdentityList
  field :fully_explored, 5, type: :bool
end
