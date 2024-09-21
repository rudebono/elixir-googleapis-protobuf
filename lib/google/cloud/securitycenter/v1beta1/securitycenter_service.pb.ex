defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :UNUSED, 1
  field :ADDED, 2
  field :REMOVED, 3
  field :ACTIVE, 4
end

defmodule Google.Cloud.Securitycenter.V1beta1.CreateFindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :finding_id, 2, type: :string, json_name: "findingId", deprecated: false
  field :finding, 3, type: Google.Cloud.Securitycenter.V1beta1.Finding, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V1beta1.CreateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :source, 2, type: Google.Cloud.Securitycenter.V1beta1.Source, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V1beta1.GetOrganizationSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V1beta1.GetSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :compare_duration, 4, type: Google.Protobuf.Duration, json_name: "compareDuration"
  field :read_time, 5, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :page_size, 8, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult,
    json_name: "groupByResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupFindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :page_size, 6, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupFindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult,
    json_name: "groupByResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupResult.PropertiesEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V1beta1.GroupResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult.PropertiesEntry,
    map: true

  field :count, 2, type: :int64
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListSourcesRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 7, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListSourcesResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V1beta1.Source
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :compare_duration, 5, type: Google.Protobuf.Duration, json_name: "compareDuration"
  field :field_mask, 7, type: Google.Protobuf.FieldMask, json_name: "fieldMask", deprecated: false
  field :page_token, 8, type: :string, json_name: "pageToken"
  field :page_size, 9, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :asset, 1, type: Google.Cloud.Securitycenter.V1beta1.Asset

  field :state, 2,
    type: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State,
    enum: true
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :list_assets_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult,
    json_name: "listAssetsResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListFindingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :order_by, 3, type: :string, json_name: "orderBy"
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :field_mask, 5, type: Google.Protobuf.FieldMask, json_name: "fieldMask", deprecated: false
  field :page_token, 6, type: :string, json_name: "pageToken"
  field :page_size, 7, type: :int32, json_name: "pageSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.ListFindingsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :findings, 1, repeated: true, type: Google.Cloud.Securitycenter.V1beta1.Finding
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end

defmodule Google.Cloud.Securitycenter.V1beta1.SetFindingStateRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Securitycenter.V1beta1.Finding.State,
    enum: true,
    deprecated: false

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
end

defmodule Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateFindingRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :finding, 1, type: Google.Cloud.Securitycenter.V1beta1.Finding, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateOrganizationSettingsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :organization_settings, 1,
    type: Google.Cloud.Securitycenter.V1beta1.OrganizationSettings,
    json_name: "organizationSettings",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateSourceRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :source, 1, type: Google.Cloud.Securitycenter.V1beta1.Source, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Securitycenter.V1beta1.UpdateSecurityMarksRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :security_marks, 1,
    type: Google.Cloud.Securitycenter.V1beta1.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
end

defmodule Google.Cloud.Securitycenter.V1beta1.SecurityCenter.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.securitycenter.v1beta1.SecurityCenter",
    protoc_gen_elixir_version: "0.13.0"

  rpc :CreateSource,
      Google.Cloud.Securitycenter.V1beta1.CreateSourceRequest,
      Google.Cloud.Securitycenter.V1beta1.Source

  rpc :CreateFinding,
      Google.Cloud.Securitycenter.V1beta1.CreateFindingRequest,
      Google.Cloud.Securitycenter.V1beta1.Finding

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetOrganizationSettings,
      Google.Cloud.Securitycenter.V1beta1.GetOrganizationSettingsRequest,
      Google.Cloud.Securitycenter.V1beta1.OrganizationSettings

  rpc :GetSource,
      Google.Cloud.Securitycenter.V1beta1.GetSourceRequest,
      Google.Cloud.Securitycenter.V1beta1.Source

  rpc :GroupAssets,
      Google.Cloud.Securitycenter.V1beta1.GroupAssetsRequest,
      Google.Cloud.Securitycenter.V1beta1.GroupAssetsResponse

  rpc :GroupFindings,
      Google.Cloud.Securitycenter.V1beta1.GroupFindingsRequest,
      Google.Cloud.Securitycenter.V1beta1.GroupFindingsResponse

  rpc :ListAssets,
      Google.Cloud.Securitycenter.V1beta1.ListAssetsRequest,
      Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse

  rpc :ListFindings,
      Google.Cloud.Securitycenter.V1beta1.ListFindingsRequest,
      Google.Cloud.Securitycenter.V1beta1.ListFindingsResponse

  rpc :ListSources,
      Google.Cloud.Securitycenter.V1beta1.ListSourcesRequest,
      Google.Cloud.Securitycenter.V1beta1.ListSourcesResponse

  rpc :RunAssetDiscovery,
      Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryRequest,
      Google.Longrunning.Operation

  rpc :SetFindingState,
      Google.Cloud.Securitycenter.V1beta1.SetFindingStateRequest,
      Google.Cloud.Securitycenter.V1beta1.Finding

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :UpdateFinding,
      Google.Cloud.Securitycenter.V1beta1.UpdateFindingRequest,
      Google.Cloud.Securitycenter.V1beta1.Finding

  rpc :UpdateOrganizationSettings,
      Google.Cloud.Securitycenter.V1beta1.UpdateOrganizationSettingsRequest,
      Google.Cloud.Securitycenter.V1beta1.OrganizationSettings

  rpc :UpdateSource,
      Google.Cloud.Securitycenter.V1beta1.UpdateSourceRequest,
      Google.Cloud.Securitycenter.V1beta1.Source

  rpc :UpdateSecurityMarks,
      Google.Cloud.Securitycenter.V1beta1.UpdateSecurityMarksRequest,
      Google.Cloud.Securitycenter.V1beta1.SecurityMarks
end

defmodule Google.Cloud.Securitycenter.V1beta1.SecurityCenter.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Securitycenter.V1beta1.SecurityCenter.Service
end