defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :UNUSED | :ADDED | :REMOVED | :ACTIVE

  field :STATE_UNSPECIFIED, 0
  field :UNUSED, 1
  field :ADDED, 2
  field :REMOVED, 3
  field :ACTIVE, 4
end
defmodule Google.Cloud.Securitycenter.V1beta1.CreateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          finding_id: String.t(),
          finding: Google.Cloud.Securitycenter.V1beta1.Finding.t() | nil
        }

  defstruct parent: "",
            finding_id: "",
            finding: nil

  field :parent, 1, type: :string, deprecated: false
  field :finding_id, 2, type: :string, json_name: "findingId", deprecated: false
  field :finding, 3, type: Google.Cloud.Securitycenter.V1beta1.Finding, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1beta1.CreateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source: Google.Cloud.Securitycenter.V1beta1.Source.t() | nil
        }

  defstruct parent: "",
            source: nil

  field :parent, 1, type: :string, deprecated: false
  field :source, 2, type: Google.Cloud.Securitycenter.V1beta1.Source, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1beta1.GetOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1beta1.GetSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1beta1.GroupAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          compare_duration: Google.Protobuf.Duration.t() | nil,
          read_time: Google.Protobuf.Timestamp.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            group_by: "",
            compare_duration: nil,
            read_time: nil,
            page_token: "",
            page_size: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t()
        }

  defstruct group_by_results: [],
            read_time: nil,
            next_page_token: ""

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult,
    json_name: "groupByResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Securitycenter.V1beta1.GroupFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            group_by: "",
            read_time: nil,
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :filter, 2, type: :string
  field :group_by, 3, type: :string, json_name: "groupBy", deprecated: false
  field :read_time, 4, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :page_token, 5, type: :string, json_name: "pageToken"
  field :page_size, 6, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1beta1.GroupFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t()
        }

  defstruct group_by_results: [],
            read_time: nil,
            next_page_token: ""

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult,
    json_name: "groupByResults"

  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Securitycenter.V1beta1.GroupResult.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct key: "",
            value: nil

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end
defmodule Google.Cloud.Securitycenter.V1beta1.GroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          count: integer
        }

  defstruct properties: %{},
            count: 0

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1beta1.GroupResult.PropertiesEntry,
    map: true

  field :count, 2, type: :int64
end
defmodule Google.Cloud.Securitycenter.V1beta1.ListSourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            page_token: "",
            page_size: 0

  field :parent, 1, type: :string, deprecated: false
  field :page_token, 2, type: :string, json_name: "pageToken"
  field :page_size, 7, type: :int32, json_name: "pageSize"
end
defmodule Google.Cloud.Securitycenter.V1beta1.ListSourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [Google.Cloud.Securitycenter.V1beta1.Source.t()],
          next_page_token: String.t()
        }

  defstruct sources: [],
            next_page_token: ""

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V1beta1.Source
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          compare_duration: Google.Protobuf.Duration.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            order_by: "",
            read_time: nil,
            compare_duration: nil,
            field_mask: nil,
            page_token: "",
            page_size: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Cloud.Securitycenter.V1beta1.Asset.t() | nil,
          state: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State.t()
        }

  defstruct asset: nil,
            state: :STATE_UNSPECIFIED

  field :asset, 1, type: Google.Cloud.Securitycenter.V1beta1.Asset

  field :state, 2,
    type: Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.State,
    enum: true
end
defmodule Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_assets_results: [
            Google.Cloud.Securitycenter.V1beta1.ListAssetsResponse.ListAssetsResult.t()
          ],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct list_assets_results: [],
            read_time: nil,
            next_page_token: "",
            total_size: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          order_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          field_mask: Google.Protobuf.FieldMask.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct parent: "",
            filter: "",
            order_by: "",
            read_time: nil,
            field_mask: nil,
            page_token: "",
            page_size: 0

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          findings: [Google.Cloud.Securitycenter.V1beta1.Finding.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct findings: [],
            read_time: nil,
            next_page_token: "",
            total_size: 0

  field :findings, 1, repeated: true, type: Google.Cloud.Securitycenter.V1beta1.Finding
  field :read_time, 2, type: Google.Protobuf.Timestamp, json_name: "readTime"
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
  field :total_size, 4, type: :int32, json_name: "totalSize"
end
defmodule Google.Cloud.Securitycenter.V1beta1.SetFindingStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Securitycenter.V1beta1.Finding.State.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct name: "",
            state: :STATE_UNSPECIFIED,
            start_time: nil

  field :name, 1, type: :string, deprecated: false

  field :state, 2,
    type: Google.Cloud.Securitycenter.V1beta1.Finding.State,
    enum: true,
    deprecated: false

  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime", deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1beta1.RunAssetDiscoveryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Securitycenter.V1beta1.UpdateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding: Google.Cloud.Securitycenter.V1beta1.Finding.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct finding: nil,
            update_mask: nil

  field :finding, 1, type: Google.Cloud.Securitycenter.V1beta1.Finding, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1beta1.UpdateOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organization_settings:
            Google.Cloud.Securitycenter.V1beta1.OrganizationSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct organization_settings: nil,
            update_mask: nil

  field :organization_settings, 1,
    type: Google.Cloud.Securitycenter.V1beta1.OrganizationSettings,
    json_name: "organizationSettings",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1beta1.UpdateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Securitycenter.V1beta1.Source.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct source: nil,
            update_mask: nil

  field :source, 1, type: Google.Cloud.Securitycenter.V1beta1.Source, deprecated: false
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Securitycenter.V1beta1.UpdateSecurityMarksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security_marks: Google.Cloud.Securitycenter.V1beta1.SecurityMarks.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct security_marks: nil,
            update_mask: nil,
            start_time: nil

  field :security_marks, 1,
    type: Google.Cloud.Securitycenter.V1beta1.SecurityMarks,
    json_name: "securityMarks",
    deprecated: false

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
  field :start_time, 3, type: Google.Protobuf.Timestamp, json_name: "startTime"
end
defmodule Google.Cloud.Securitycenter.V1beta1.SecurityCenter.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.securitycenter.v1beta1.SecurityCenter"

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
