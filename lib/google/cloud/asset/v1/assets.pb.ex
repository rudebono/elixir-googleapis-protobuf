defmodule Google.Cloud.Asset.V1.TemporalAsset.PriorAssetState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :PRIOR_ASSET_STATE_UNSPECIFIED, 0
  field :PRESENT, 1
  field :INVALID, 2
  field :DOES_NOT_EXIST, 3
  field :DELETED, 4
end

defmodule Google.Cloud.Asset.V1.ConditionEvaluation.EvaluationValue do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :EVALUATION_VALUE_UNSPECIFIED, 0
  field :TRUE, 1
  field :FALSE, 2
  field :CONDITIONAL, 3
end

defmodule Google.Cloud.Asset.V1.TemporalAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :window, 1, type: Google.Cloud.Asset.V1.TimeWindow
  field :deleted, 2, type: :bool
  field :asset, 3, type: Google.Cloud.Asset.V1.Asset

  field :prior_asset_state, 4,
    type: Google.Cloud.Asset.V1.TemporalAsset.PriorAssetState,
    json_name: "priorAssetState",
    enum: true

  field :prior_asset, 5, type: Google.Cloud.Asset.V1.Asset, json_name: "priorAsset"
end

defmodule Google.Cloud.Asset.V1.TimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Asset.V1.Asset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :access_context_policy, 0

  field :update_time, 11, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :name, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :resource, 3, type: Google.Cloud.Asset.V1.Resource
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

  field :os_inventory, 12, type: Google.Cloud.Osconfig.V1.Inventory, json_name: "osInventory"

  field :related_assets, 13,
    type: Google.Cloud.Asset.V1.RelatedAssets,
    json_name: "relatedAssets",
    deprecated: true

  field :related_asset, 15, type: Google.Cloud.Asset.V1.RelatedAsset, json_name: "relatedAsset"
  field :ancestors, 10, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :string
  field :discovery_document_uri, 2, type: :string, json_name: "discoveryDocumentUri"
  field :discovery_name, 3, type: :string, json_name: "discoveryName"
  field :resource_url, 4, type: :string, json_name: "resourceUrl"
  field :parent, 5, type: :string
  field :data, 6, type: Google.Protobuf.Struct
  field :location, 8, type: :string
end

defmodule Google.Cloud.Asset.V1.RelatedAssets do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :relationship_attributes, 1,
    type: Google.Cloud.Asset.V1.RelationshipAttributes,
    json_name: "relationshipAttributes"

  field :assets, 2, repeated: true, type: Google.Cloud.Asset.V1.RelatedAsset
end

defmodule Google.Cloud.Asset.V1.RelationshipAttributes do
  @moduledoc false

  use Protobuf, deprecated: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :type, 4, type: :string
  field :source_resource_type, 1, type: :string, json_name: "sourceResourceType"
  field :target_resource_type, 2, type: :string, json_name: "targetResourceType"
  field :action, 3, type: :string
end

defmodule Google.Cloud.Asset.V1.RelatedAsset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :asset, 1, type: :string, deprecated: false
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :ancestors, 3, repeated: true, type: :string
  field :relationship_type, 4, type: :string, json_name: "relationshipType"
end

defmodule Google.Cloud.Asset.V1.Tag do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :tag_key, 1, proto3_optional: true, type: :string, json_name: "tagKey"
  field :tag_key_id, 2, proto3_optional: true, type: :string, json_name: "tagKeyId"
  field :tag_value, 3, proto3_optional: true, type: :string, json_name: "tagValue"
  field :tag_value_id, 4, proto3_optional: true, type: :string, json_name: "tagValueId"
end

defmodule Google.Cloud.Asset.V1.EffectiveTagDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :attached_resource, 1, proto3_optional: true, type: :string, json_name: "attachedResource"

  field :effective_tags, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.Tag,
    json_name: "effectiveTags"
end

defmodule Google.Cloud.Asset.V1.ResourceSearchResult.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Asset.V1.ResourceSearchResult.RelationshipsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Asset.V1.RelatedResources
end

defmodule Google.Cloud.Asset.V1.ResourceSearchResult.SccSecurityMarksEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Asset.V1.ResourceSearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :project, 3, type: :string
  field :folders, 17, repeated: true, type: :string
  field :organization, 18, type: :string
  field :display_name, 4, type: :string, json_name: "displayName"
  field :description, 5, type: :string
  field :location, 6, type: :string

  field :labels, 7,
    repeated: true,
    type: Google.Cloud.Asset.V1.ResourceSearchResult.LabelsEntry,
    map: true

  field :network_tags, 8, repeated: true, type: :string, json_name: "networkTags"
  field :kms_key, 10, type: :string, json_name: "kmsKey", deprecated: true
  field :kms_keys, 28, repeated: true, type: :string, json_name: "kmsKeys"
  field :create_time, 11, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 12, type: Google.Protobuf.Timestamp, json_name: "updateTime"
  field :state, 13, type: :string
  field :additional_attributes, 9, type: Google.Protobuf.Struct, json_name: "additionalAttributes"
  field :parent_full_resource_name, 19, type: :string, json_name: "parentFullResourceName"

  field :versioned_resources, 16,
    repeated: true,
    type: Google.Cloud.Asset.V1.VersionedResource,
    json_name: "versionedResources"

  field :attached_resources, 20,
    repeated: true,
    type: Google.Cloud.Asset.V1.AttachedResource,
    json_name: "attachedResources"

  field :relationships, 21,
    repeated: true,
    type: Google.Cloud.Asset.V1.ResourceSearchResult.RelationshipsEntry,
    map: true

  field :tag_keys, 23, repeated: true, type: :string, json_name: "tagKeys", deprecated: true
  field :tag_values, 25, repeated: true, type: :string, json_name: "tagValues", deprecated: true

  field :tag_value_ids, 26,
    repeated: true,
    type: :string,
    json_name: "tagValueIds",
    deprecated: true

  field :tags, 29, repeated: true, type: Google.Cloud.Asset.V1.Tag

  field :effective_tags, 30,
    repeated: true,
    type: Google.Cloud.Asset.V1.EffectiveTagDetails,
    json_name: "effectiveTags"

  field :parent_asset_type, 103, type: :string, json_name: "parentAssetType"

  field :scc_security_marks, 32,
    repeated: true,
    type: Google.Cloud.Asset.V1.ResourceSearchResult.SccSecurityMarksEntry,
    json_name: "sccSecurityMarks",
    map: true
end

defmodule Google.Cloud.Asset.V1.VersionedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :version, 1, type: :string
  field :resource, 2, type: Google.Protobuf.Struct
end

defmodule Google.Cloud.Asset.V1.AttachedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :asset_type, 1, type: :string, json_name: "assetType"

  field :versioned_resources, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1.VersionedResource,
    json_name: "versionedResources"
end

defmodule Google.Cloud.Asset.V1.RelatedResources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :related_resources, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.RelatedResource,
    json_name: "relatedResources"
end

defmodule Google.Cloud.Asset.V1.RelatedResource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :asset_type, 1, type: :string, json_name: "assetType"
  field :full_resource_name, 2, type: :string, json_name: "fullResourceName"
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.Permissions do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :permissions, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.Permissions
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :matched_permissions, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation.MatchedPermissionsEntry,
    json_name: "matchedPermissions",
    map: true
end

defmodule Google.Cloud.Asset.V1.IamPolicySearchResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resource, 1, type: :string
  field :asset_type, 5, type: :string, json_name: "assetType"
  field :project, 2, type: :string
  field :folders, 6, repeated: true, type: :string
  field :organization, 7, type: :string
  field :policy, 3, type: Google.Iam.V1.Policy
  field :explanation, 4, type: Google.Cloud.Asset.V1.IamPolicySearchResult.Explanation
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisState do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :code, 1, type: Google.Rpc.Code, enum: true
  field :cause, 2, type: :string
end

defmodule Google.Cloud.Asset.V1.ConditionEvaluation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :evaluation_value, 1,
    type: Google.Cloud.Asset.V1.ConditionEvaluation.EvaluationValue,
    json_name: "evaluationValue",
    enum: true
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Resource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :full_resource_name, 1, type: :string, json_name: "fullResourceName"

  field :analysis_state, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisState,
    json_name: "analysisState"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Access do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :oneof_access, 0

  field :role, 1, type: :string, oneof: 0
  field :permission, 2, type: :string, oneof: 0

  field :analysis_state, 3,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisState,
    json_name: "analysisState"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Identity do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :name, 1, type: :string

  field :analysis_state, 2,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisState,
    json_name: "analysisState"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source_node, 1, type: :string, json_name: "sourceNode"
  field :target_node, 2, type: :string, json_name: "targetNode"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.AccessControlList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :resources, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Resource

  field :accesses, 2, repeated: true, type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Access

  field :resource_edges, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge,
    json_name: "resourceEdges"

  field :condition_evaluation, 4,
    type: Google.Cloud.Asset.V1.ConditionEvaluation,
    json_name: "conditionEvaluation"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult.IdentityList do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :identities, 1,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Identity

  field :group_edges, 2,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.Edge,
    json_name: "groupEdges"
end

defmodule Google.Cloud.Asset.V1.IamPolicyAnalysisResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :attached_resource_full_name, 1, type: :string, json_name: "attachedResourceFullName"
  field :iam_binding, 2, type: Google.Iam.V1.Binding, json_name: "iamBinding"

  field :access_control_lists, 3,
    repeated: true,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.AccessControlList,
    json_name: "accessControlLists"

  field :identity_list, 4,
    type: Google.Cloud.Asset.V1.IamPolicyAnalysisResult.IdentityList,
    json_name: "identityList"

  field :fully_explored, 5, type: :bool, json_name: "fullyExplored"
end
