defmodule Google.Cloud.Policysimulator.V1.PreviewState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PREVIEW_STATE_UNSPECIFIED, 0
  field :PREVIEW_PENDING, 1
  field :PREVIEW_RUNNING, 2
  field :PREVIEW_SUCCEEDED, 3
  field :PREVIEW_FAILED, 4
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreview.ResourceCounts do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :scanned, 1, type: :int32, deprecated: false
  field :noncompliant, 2, type: :int32, deprecated: false
  field :compliant, 3, type: :int32, deprecated: false
  field :unenforced, 4, type: :int32, deprecated: false
  field :errors, 5, type: :int32, deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreview do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Policysimulator.V1.PreviewState,
    enum: true,
    deprecated: false

  field :overlay, 3, type: Google.Cloud.Policysimulator.V1.OrgPolicyOverlay, deprecated: false
  field :violations_count, 4, type: :int32, json_name: "violationsCount", deprecated: false

  field :resource_counts, 5,
    type: Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreview.ResourceCounts,
    json_name: "resourceCounts",
    deprecated: false

  field :custom_constraints, 6,
    repeated: true,
    type: :string,
    json_name: "customConstraints",
    deprecated: false

  field :create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyViolation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :resource, 2, type: Google.Cloud.Policysimulator.V1.ResourceContext

  field :custom_constraint, 3,
    type: Google.Cloud.Orgpolicy.V2.CustomConstraint,
    json_name: "customConstraint"

  field :error, 4, type: Google.Rpc.Status
end

defmodule Google.Cloud.Policysimulator.V1.ResourceContext do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :resource, 1, type: :string
  field :asset_type, 2, type: :string, json_name: "assetType"
  field :ancestors, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyOverlay.PolicyOverlay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policy_parent, 1, type: :string, json_name: "policyParent", deprecated: false
  field :policy, 2, type: Google.Cloud.Orgpolicy.V2.Policy, deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyOverlay.CustomConstraintOverlay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :custom_constraint_parent, 1,
    type: :string,
    json_name: "customConstraintParent",
    deprecated: false

  field :custom_constraint, 2,
    type: Google.Cloud.Orgpolicy.V2.CustomConstraint,
    json_name: "customConstraint",
    deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyOverlay do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :policies, 1,
    repeated: true,
    type: Google.Cloud.Policysimulator.V1.OrgPolicyOverlay.PolicyOverlay,
    deprecated: false

  field :custom_constraints, 2,
    repeated: true,
    type: Google.Cloud.Policysimulator.V1.OrgPolicyOverlay.CustomConstraintOverlay,
    json_name: "customConstraints",
    deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.CreateOrgPolicyViolationsPreviewOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :request_time, 1, type: Google.Protobuf.Timestamp, json_name: "requestTime"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"

  field :state, 3,
    type: Google.Cloud.Policysimulator.V1.PreviewState,
    enum: true,
    deprecated: false

  field :resources_found, 4, type: :int32, json_name: "resourcesFound"
  field :resources_scanned, 5, type: :int32, json_name: "resourcesScanned"
  field :resources_pending, 6, type: :int32, json_name: "resourcesPending"
end

defmodule Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsPreviewsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsPreviewsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :org_policy_violations_previews, 1,
    repeated: true,
    type: Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreview,
    json_name: "orgPolicyViolationsPreviews"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Policysimulator.V1.GetOrgPolicyViolationsPreviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.CreateOrgPolicyViolationsPreviewRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :org_policy_violations_preview, 2,
    type: Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreview,
    json_name: "orgPolicyViolationsPreview",
    deprecated: false

  field :org_policy_violations_preview_id, 3,
    type: :string,
    json_name: "orgPolicyViolationsPreviewId",
    deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :org_policy_violations, 1,
    repeated: true,
    type: Google.Cloud.Policysimulator.V1.OrgPolicyViolation,
    json_name: "orgPolicyViolations"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreviewService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.policysimulator.v1.OrgPolicyViolationsPreviewService",
    protoc_gen_elixir_version: "0.15.0"

  rpc :ListOrgPolicyViolationsPreviews,
      Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsPreviewsRequest,
      Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsPreviewsResponse

  rpc :GetOrgPolicyViolationsPreview,
      Google.Cloud.Policysimulator.V1.GetOrgPolicyViolationsPreviewRequest,
      Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreview

  rpc :CreateOrgPolicyViolationsPreview,
      Google.Cloud.Policysimulator.V1.CreateOrgPolicyViolationsPreviewRequest,
      Google.Longrunning.Operation

  rpc :ListOrgPolicyViolations,
      Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsRequest,
      Google.Cloud.Policysimulator.V1.ListOrgPolicyViolationsResponse
end

defmodule Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreviewService.Stub do
  @moduledoc false

  use GRPC.Stub,
    service: Google.Cloud.Policysimulator.V1.OrgPolicyViolationsPreviewService.Service
end
