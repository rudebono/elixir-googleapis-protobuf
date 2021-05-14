defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMPLIANCE_REGIME_UNSPECIFIED
          | :IL4
          | :CJIS
          | :FEDRAMP_HIGH
          | :FEDRAMP_MODERATE
          | :US_REGIONAL_ACCESS
          | :HIPAA
          | :HITRUST

  field :COMPLIANCE_REGIME_UNSPECIFIED, 0

  field :IL4, 1

  field :CJIS, 2

  field :FEDRAMP_HIGH, 3

  field :FEDRAMP_MODERATE, 4

  field :US_REGIONAL_ACCESS, 5

  field :HIPAA, 6

  field :HITRUST, 7
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :RESOURCE_TYPE_UNSPECIFIED | :CONSUMER_PROJECT | :ENCRYPTION_KEYS_PROJECT

  field :RESOURCE_TYPE_UNSPECIFIED, 0

  field :CONSUMER_PROJECT, 1

  field :ENCRYPTION_KEYS_PROJECT, 2
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.CreateWorkloadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          workload: Google.Cloud.Assuredworkloads.V1beta1.Workload.t() | nil,
          external_id: String.t()
        }

  defstruct [:parent, :workload, :external_id]

  field :parent, 1, type: :string
  field :workload, 2, type: Google.Cloud.Assuredworkloads.V1beta1.Workload
  field :external_id, 3, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.UpdateWorkloadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workload: Google.Cloud.Assuredworkloads.V1beta1.Workload.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:workload, :update_mask]

  field :workload, 1, type: Google.Cloud.Assuredworkloads.V1beta1.Workload
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.DeleteWorkloadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          etag: String.t()
        }

  defstruct [:name, :etag]

  field :name, 1, type: :string
  field :etag, 2, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.GetWorkloadRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          workloads: [Google.Cloud.Assuredworkloads.V1beta1.Workload.t()],
          next_page_token: String.t()
        }

  defstruct [:workloads, :next_page_token]

  field :workloads, 1, repeated: true, type: Google.Cloud.Assuredworkloads.V1beta1.Workload
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_id: integer,
          resource_type:
            Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType.t()
        }

  defstruct [:resource_id, :resource_type]

  field :resource_id, 1, type: :int64

  field :resource_type, 2,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType,
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          next_rotation_time: Google.Protobuf.Timestamp.t() | nil,
          rotation_period: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:next_rotation_time, :rotation_period]

  field :next_rotation_time, 1, type: Google.Protobuf.Timestamp
  field :rotation_period, 2, type: Google.Protobuf.Duration
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.IL4Settings do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          kms_settings: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings.t() | nil
        }

  defstruct [:kms_settings]

  field :kms_settings, 1, type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.CJISSettings do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          kms_settings: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings.t() | nil
        }

  defstruct [:kms_settings]

  field :kms_settings, 1, type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampHighSettings do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          kms_settings: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings.t() | nil
        }

  defstruct [:kms_settings]

  field :kms_settings, 1, type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampModerateSettings do
  @moduledoc false
  use Protobuf, deprecated: true, syntax: :proto3

  @type t :: %__MODULE__{
          kms_settings: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings.t() | nil
        }

  defstruct [:kms_settings]

  field :kms_settings, 1, type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_id: String.t(),
          resource_type:
            Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType.t()
        }

  defstruct [:resource_id, :resource_type]

  field :resource_id, 1, type: :string

  field :resource_type, 2,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.ResourceType,
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload.LabelsEntry do
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

defmodule Google.Cloud.Assuredworkloads.V1beta1.Workload do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          compliance_regime_settings: {atom, any},
          name: String.t(),
          display_name: String.t(),
          resources: [Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo.t()],
          compliance_regime: Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          billing_account: String.t(),
          etag: String.t(),
          labels: %{String.t() => String.t()},
          provisioned_resources_parent: String.t(),
          kms_settings: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings.t() | nil,
          resource_settings: [Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceSettings.t()]
        }

  defstruct [
    :compliance_regime_settings,
    :name,
    :display_name,
    :resources,
    :compliance_regime,
    :create_time,
    :billing_account,
    :etag,
    :labels,
    :provisioned_resources_parent,
    :kms_settings,
    :resource_settings
  ]

  oneof :compliance_regime_settings, 0
  field :name, 1, type: :string
  field :display_name, 2, type: :string

  field :resources, 3,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceInfo

  field :compliance_regime, 4,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime,
    enum: true

  field :create_time, 5, type: Google.Protobuf.Timestamp
  field :billing_account, 6, type: :string

  field :il4_settings, 7,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.IL4Settings,
    deprecated: true,
    oneof: 0

  field :cjis_settings, 8,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.CJISSettings,
    deprecated: true,
    oneof: 0

  field :fedramp_high_settings, 11,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampHighSettings,
    deprecated: true,
    oneof: 0

  field :fedramp_moderate_settings, 12,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.FedrampModerateSettings,
    deprecated: true,
    oneof: 0

  field :etag, 9, type: :string

  field :labels, 10,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.LabelsEntry,
    map: true

  field :provisioned_resources_parent, 13, type: :string
  field :kms_settings, 14, type: Google.Cloud.Assuredworkloads.V1beta1.Workload.KMSSettings

  field :resource_settings, 15,
    repeated: true,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ResourceSettings
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.CreateWorkloadOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          create_time: Google.Protobuf.Timestamp.t() | nil,
          display_name: String.t(),
          parent: String.t(),
          compliance_regime: Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime.t()
        }

  defstruct [:create_time, :display_name, :parent, :compliance_regime]

  field :create_time, 1, type: Google.Protobuf.Timestamp
  field :display_name, 2, type: :string
  field :parent, 3, type: :string

  field :compliance_regime, 4,
    type: Google.Cloud.Assuredworkloads.V1beta1.Workload.ComplianceRegime,
    enum: true
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.AssuredWorkloadsService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.assuredworkloads.v1beta1.AssuredWorkloadsService"

  rpc :CreateWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.CreateWorkloadRequest,
      Google.Longrunning.Operation

  rpc :UpdateWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.UpdateWorkloadRequest,
      Google.Cloud.Assuredworkloads.V1beta1.Workload

  rpc :DeleteWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.DeleteWorkloadRequest,
      Google.Protobuf.Empty

  rpc :GetWorkload,
      Google.Cloud.Assuredworkloads.V1beta1.GetWorkloadRequest,
      Google.Cloud.Assuredworkloads.V1beta1.Workload

  rpc :ListWorkloads,
      Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsRequest,
      Google.Cloud.Assuredworkloads.V1beta1.ListWorkloadsResponse
end

defmodule Google.Cloud.Assuredworkloads.V1beta1.AssuredWorkloadsService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Assuredworkloads.V1beta1.AssuredWorkloadsService.Service
end
