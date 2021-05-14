defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.StateChange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNUSED | :ADDED | :REMOVED | :ACTIVE

  field :UNUSED, 0

  field :ADDED, 1

  field :REMOVED, 2

  field :ACTIVE, 3
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.StateChange do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :UNUSED | :CHANGED | :UNCHANGED | :ADDED | :REMOVED

  field :UNUSED, 0

  field :CHANGED, 1

  field :UNCHANGED, 2

  field :ADDED, 3

  field :REMOVED, 4
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.CreateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          finding_id: String.t(),
          finding: Google.Cloud.Securitycenter.V1p1beta1.Finding.t() | nil
        }

  defstruct [:parent, :finding_id, :finding]

  field :parent, 1, type: :string
  field :finding_id, 2, type: :string
  field :finding, 3, type: Google.Cloud.Securitycenter.V1p1beta1.Finding
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.CreateNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          config_id: String.t(),
          notification_config: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.t() | nil
        }

  defstruct [:parent, :config_id, :notification_config]

  field :parent, 1, type: :string
  field :config_id, 2, type: :string
  field :notification_config, 3, type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.CreateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          source: Google.Cloud.Securitycenter.V1p1beta1.Source.t() | nil
        }

  defstruct [:parent, :source]

  field :parent, 1, type: :string
  field :source, 2, type: Google.Cloud.Securitycenter.V1p1beta1.Source
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.DeleteNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GetNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GetOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GetSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsRequest do
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

  defstruct [:parent, :filter, :group_by, :compare_duration, :read_time, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :group_by, 3, type: :string
  field :compare_duration, 4, type: Google.Protobuf.Duration
  field :read_time, 5, type: Google.Protobuf.Timestamp
  field :page_token, 7, type: :string
  field :page_size, 8, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1p1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:group_by_results, :read_time, :next_page_token, :total_size]

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.GroupResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          filter: String.t(),
          group_by: String.t(),
          read_time: Google.Protobuf.Timestamp.t() | nil,
          compare_duration: Google.Protobuf.Duration.t() | nil,
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :filter, :group_by, :read_time, :compare_duration, :page_token, :page_size]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :group_by, 3, type: :string
  field :read_time, 4, type: Google.Protobuf.Timestamp
  field :compare_duration, 5, type: Google.Protobuf.Duration
  field :page_token, 7, type: :string
  field :page_size, 8, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          group_by_results: [Google.Cloud.Securitycenter.V1p1beta1.GroupResult.t()],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:group_by_results, :read_time, :next_page_token, :total_size]

  field :group_by_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.GroupResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupResult.PropertiesEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: Google.Protobuf.Value.t() | nil
        }

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.GroupResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          properties: %{String.t() => Google.Protobuf.Value.t() | nil},
          count: integer
        }

  defstruct [:properties, :count]

  field :properties, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.GroupResult.PropertiesEntry,
    map: true

  field :count, 2, type: :int64
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 3, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_configs: [Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.t()],
          next_page_token: String.t()
        }

  defstruct [:notification_configs, :next_page_token]

  field :notification_configs, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListSourcesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_token: String.t(),
          page_size: integer
        }

  defstruct [:parent, :page_token, :page_size]

  field :parent, 1, type: :string
  field :page_token, 2, type: :string
  field :page_size, 7, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListSourcesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sources: [Google.Cloud.Securitycenter.V1p1beta1.Source.t()],
          next_page_token: String.t()
        }

  defstruct [:sources, :next_page_token]

  field :sources, 1, repeated: true, type: Google.Cloud.Securitycenter.V1p1beta1.Source
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsRequest do
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

  defstruct [
    :parent,
    :filter,
    :order_by,
    :read_time,
    :compare_duration,
    :field_mask,
    :page_token,
    :page_size
  ]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :order_by, 3, type: :string
  field :read_time, 4, type: Google.Protobuf.Timestamp
  field :compare_duration, 5, type: Google.Protobuf.Duration
  field :field_mask, 7, type: Google.Protobuf.FieldMask
  field :page_token, 8, type: :string
  field :page_size, 9, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          asset: Google.Cloud.Securitycenter.V1p1beta1.Asset.t() | nil,
          state_change:
            Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.StateChange.t()
        }

  defstruct [:asset, :state_change]

  field :asset, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Asset

  field :state_change, 2,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.StateChange,
    enum: true
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_assets_results: [
            Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult.t()
          ],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:list_assets_results, :read_time, :next_page_token, :total_size]

  field :list_assets_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse.ListAssetsResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsRequest do
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

  defstruct [
    :parent,
    :filter,
    :order_by,
    :read_time,
    :compare_duration,
    :field_mask,
    :page_token,
    :page_size
  ]

  field :parent, 1, type: :string
  field :filter, 2, type: :string
  field :order_by, 3, type: :string
  field :read_time, 4, type: Google.Protobuf.Timestamp
  field :compare_duration, 5, type: Google.Protobuf.Duration
  field :field_mask, 7, type: Google.Protobuf.FieldMask
  field :page_token, 8, type: :string
  field :page_size, 9, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.Resource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          project_name: String.t(),
          project_display_name: String.t(),
          parent_name: String.t(),
          parent_display_name: String.t(),
          folders: [Google.Cloud.Securitycenter.V1p1beta1.Folder.t()]
        }

  defstruct [
    :name,
    :project_name,
    :project_display_name,
    :parent_name,
    :parent_display_name,
    :folders
  ]

  field :name, 1, type: :string
  field :project_name, 2, type: :string
  field :project_display_name, 3, type: :string
  field :parent_name, 4, type: :string
  field :parent_display_name, 5, type: :string
  field :folders, 10, repeated: true, type: Google.Cloud.Securitycenter.V1p1beta1.Folder
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding: Google.Cloud.Securitycenter.V1p1beta1.Finding.t() | nil,
          state_change:
            Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.StateChange.t(),
          resource:
            Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.Resource.t()
            | nil
        }

  defstruct [:finding, :state_change, :resource]

  field :finding, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Finding

  field :state_change, 2,
    type:
      Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.StateChange,
    enum: true

  field :resource, 3,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.Resource
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          list_findings_results: [
            Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult.t()
          ],
          read_time: Google.Protobuf.Timestamp.t() | nil,
          next_page_token: String.t(),
          total_size: integer
        }

  defstruct [:list_findings_results, :read_time, :next_page_token, :total_size]

  field :list_findings_results, 1,
    repeated: true,
    type: Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse.ListFindingsResult

  field :read_time, 2, type: Google.Protobuf.Timestamp
  field :next_page_token, 3, type: :string
  field :total_size, 4, type: :int32
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.SetFindingStateRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          state: Google.Cloud.Securitycenter.V1p1beta1.Finding.State.t(),
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:name, :state, :start_time]

  field :name, 1, type: :string
  field :state, 2, type: Google.Cloud.Securitycenter.V1p1beta1.Finding.State, enum: true
  field :start_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.RunAssetDiscoveryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateFindingRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding: Google.Cloud.Securitycenter.V1p1beta1.Finding.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:finding, :update_mask]

  field :finding, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Finding
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateNotificationConfigRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          notification_config: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:notification_config, :update_mask]

  field :notification_config, 1, type: Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateOrganizationSettingsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          organization_settings:
            Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:organization_settings, :update_mask]

  field :organization_settings, 1,
    type: Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings

  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateSourceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: Google.Cloud.Securitycenter.V1p1beta1.Source.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:source, :update_mask]

  field :source, 1, type: Google.Cloud.Securitycenter.V1p1beta1.Source
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.UpdateSecurityMarksRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          security_marks: Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          start_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:security_marks, :update_mask, :start_time]

  field :security_marks, 1, type: Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks
  field :update_mask, 2, type: Google.Protobuf.FieldMask
  field :start_time, 3, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.SecurityCenter.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.securitycenter.v1p1beta1.SecurityCenter"

  rpc :CreateSource,
      Google.Cloud.Securitycenter.V1p1beta1.CreateSourceRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Source

  rpc :CreateFinding,
      Google.Cloud.Securitycenter.V1p1beta1.CreateFindingRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Finding

  rpc :CreateNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.CreateNotificationConfigRequest,
      Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  rpc :DeleteNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.DeleteNotificationConfigRequest,
      Google.Protobuf.Empty

  rpc :GetIamPolicy, Google.Iam.V1.GetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :GetNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.GetNotificationConfigRequest,
      Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  rpc :GetOrganizationSettings,
      Google.Cloud.Securitycenter.V1p1beta1.GetOrganizationSettingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings

  rpc :GetSource,
      Google.Cloud.Securitycenter.V1p1beta1.GetSourceRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Source

  rpc :GroupAssets,
      Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.GroupAssetsResponse

  rpc :GroupFindings,
      Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.GroupFindingsResponse

  rpc :ListAssets,
      Google.Cloud.Securitycenter.V1p1beta1.ListAssetsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListAssetsResponse

  rpc :ListFindings,
      Google.Cloud.Securitycenter.V1p1beta1.ListFindingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListFindingsResponse

  rpc :ListNotificationConfigs,
      Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListNotificationConfigsResponse

  rpc :ListSources,
      Google.Cloud.Securitycenter.V1p1beta1.ListSourcesRequest,
      Google.Cloud.Securitycenter.V1p1beta1.ListSourcesResponse

  rpc :RunAssetDiscovery,
      Google.Cloud.Securitycenter.V1p1beta1.RunAssetDiscoveryRequest,
      Google.Longrunning.Operation

  rpc :SetFindingState,
      Google.Cloud.Securitycenter.V1p1beta1.SetFindingStateRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Finding

  rpc :SetIamPolicy, Google.Iam.V1.SetIamPolicyRequest, Google.Iam.V1.Policy

  rpc :TestIamPermissions,
      Google.Iam.V1.TestIamPermissionsRequest,
      Google.Iam.V1.TestIamPermissionsResponse

  rpc :UpdateFinding,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateFindingRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Finding

  rpc :UpdateNotificationConfig,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateNotificationConfigRequest,
      Google.Cloud.Securitycenter.V1p1beta1.NotificationConfig

  rpc :UpdateOrganizationSettings,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateOrganizationSettingsRequest,
      Google.Cloud.Securitycenter.V1p1beta1.OrganizationSettings

  rpc :UpdateSource,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateSourceRequest,
      Google.Cloud.Securitycenter.V1p1beta1.Source

  rpc :UpdateSecurityMarks,
      Google.Cloud.Securitycenter.V1p1beta1.UpdateSecurityMarksRequest,
      Google.Cloud.Securitycenter.V1p1beta1.SecurityMarks
end

defmodule Google.Cloud.Securitycenter.V1p1beta1.SecurityCenter.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Securitycenter.V1p1beta1.SecurityCenter.Service
end
