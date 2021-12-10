defmodule Google.Api.Serviceusage.V1beta1.GetServiceIdentityResponse.IdentityState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :IDENTITY_STATE_UNSPECIFIED | :ACTIVE

  field :IDENTITY_STATE_UNSPECIFIED, 0
  field :ACTIVE, 1
end
defmodule Google.Api.Serviceusage.V1beta1.EnableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.DisableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.ListServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          filter: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            filter: ""

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Serviceusage.V1beta1.Service.t()],
          next_page_token: String.t()
        }

  defstruct services: [],
            next_page_token: ""

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.Service
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Serviceusage.V1beta1.BatchEnableServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_ids: [String.t()]
        }

  defstruct parent: "",
            service_ids: []

  field :parent, 1, type: :string
  field :service_ids, 2, repeated: true, type: :string, json_name: "serviceIds"
end
defmodule Google.Api.Serviceusage.V1beta1.ListConsumerQuotaMetricsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t(),
          view: Google.Api.Serviceusage.V1beta1.QuotaView.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: "",
            view: :QUOTA_VIEW_UNSPECIFIED

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :view, 4, type: Google.Api.Serviceusage.V1beta1.QuotaView, enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.ListConsumerQuotaMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: [Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric.t()],
          next_page_token: String.t()
        }

  defstruct metrics: [],
            next_page_token: ""

  field :metrics, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Serviceusage.V1beta1.GetConsumerQuotaMetricRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Api.Serviceusage.V1beta1.QuotaView.t()
        }

  defstruct name: "",
            view: :QUOTA_VIEW_UNSPECIFIED

  field :name, 1, type: :string
  field :view, 2, type: Google.Api.Serviceusage.V1beta1.QuotaView, enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.GetConsumerQuotaLimitRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Api.Serviceusage.V1beta1.QuotaView.t()
        }

  defstruct name: "",
            view: :QUOTA_VIEW_UNSPECIFIED

  field :name, 1, type: :string
  field :view, 2, type: Google.Api.Serviceusage.V1beta1.QuotaView, enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.CreateAdminOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          force: boolean,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct parent: "",
            override: nil,
            force: false,
            force_only: []

  field :parent, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.UpdateAdminOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          force: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct name: "",
            override: nil,
            force: false,
            update_mask: nil,
            force_only: []

  field :name, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :force_only, 5,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.DeleteAdminOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct name: "",
            force: false,
            force_only: []

  field :name, 1, type: :string
  field :force, 2, type: :bool

  field :force_only, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.ListAdminOverridesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Api.Serviceusage.V1beta1.ListAdminOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()],
          next_page_token: String.t()
        }

  defstruct overrides: [],
            next_page_token: ""

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Serviceusage.V1beta1.BatchCreateAdminOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct overrides: []

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end
defmodule Google.Api.Serviceusage.V1beta1.ImportAdminOverridesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:inline_source, Google.Api.Serviceusage.V1beta1.OverrideInlineSource.t() | nil},
          parent: String.t(),
          force: boolean,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct source: nil,
            parent: "",
            force: false,
            force_only: []

  oneof :source, 0

  field :parent, 1, type: :string

  field :inline_source, 2,
    type: Google.Api.Serviceusage.V1beta1.OverrideInlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.ImportAdminOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct overrides: []

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end
defmodule Google.Api.Serviceusage.V1beta1.ImportAdminOverridesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.CreateConsumerOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          force: boolean,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct parent: "",
            override: nil,
            force: false,
            force_only: []

  field :parent, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.UpdateConsumerOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          force: boolean,
          update_mask: Google.Protobuf.FieldMask.t() | nil,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct name: "",
            override: nil,
            force: false,
            update_mask: nil,
            force_only: []

  field :name, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  field :force_only, 5,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.DeleteConsumerOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct name: "",
            force: false,
            force_only: []

  field :name, 1, type: :string
  field :force, 2, type: :bool

  field :force_only, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.ListConsumerOverridesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Api.Serviceusage.V1beta1.ListConsumerOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()],
          next_page_token: String.t()
        }

  defstruct overrides: [],
            next_page_token: ""

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Api.Serviceusage.V1beta1.BatchCreateConsumerOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct overrides: []

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end
defmodule Google.Api.Serviceusage.V1beta1.ImportConsumerOverridesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:inline_source, Google.Api.Serviceusage.V1beta1.OverrideInlineSource.t() | nil},
          parent: String.t(),
          force: boolean,
          force_only: [Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]
        }

  defstruct source: nil,
            parent: "",
            force: false,
            force_only: []

  oneof :source, 0

  field :parent, 1, type: :string

  field :inline_source, 2,
    type: Google.Api.Serviceusage.V1beta1.OverrideInlineSource,
    json_name: "inlineSource",
    oneof: 0

  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    json_name: "forceOnly",
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.ImportConsumerOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct overrides: []

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end
defmodule Google.Api.Serviceusage.V1beta1.ImportConsumerOverridesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.ImportAdminQuotaPoliciesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          policies: [Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy.t()]
        }

  defstruct policies: []

  field :policies, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy
end
defmodule Google.Api.Serviceusage.V1beta1.ImportAdminQuotaPoliciesMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.CreateAdminQuotaPolicyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.UpdateAdminQuotaPolicyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.DeleteAdminQuotaPolicyMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.GenerateServiceIdentityRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t()
        }

  defstruct parent: ""

  field :parent, 1, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.GetServiceIdentityResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: Google.Api.Serviceusage.V1beta1.ServiceIdentity.t() | nil,
          state: Google.Api.Serviceusage.V1beta1.GetServiceIdentityResponse.IdentityState.t()
        }

  defstruct identity: nil,
            state: :IDENTITY_STATE_UNSPECIFIED

  field :identity, 1, type: Google.Api.Serviceusage.V1beta1.ServiceIdentity

  field :state, 2,
    type: Google.Api.Serviceusage.V1beta1.GetServiceIdentityResponse.IdentityState,
    enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.GetServiceIdentityMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Api.Serviceusage.V1beta1.ServiceUsage.Service do
  @moduledoc false
  use GRPC.Service, name: "google.api.serviceusage.v1beta1.ServiceUsage"

  rpc :EnableService,
      Google.Api.Serviceusage.V1beta1.EnableServiceRequest,
      Google.Longrunning.Operation

  rpc :DisableService,
      Google.Api.Serviceusage.V1beta1.DisableServiceRequest,
      Google.Longrunning.Operation

  rpc :GetService,
      Google.Api.Serviceusage.V1beta1.GetServiceRequest,
      Google.Api.Serviceusage.V1beta1.Service

  rpc :ListServices,
      Google.Api.Serviceusage.V1beta1.ListServicesRequest,
      Google.Api.Serviceusage.V1beta1.ListServicesResponse

  rpc :BatchEnableServices,
      Google.Api.Serviceusage.V1beta1.BatchEnableServicesRequest,
      Google.Longrunning.Operation

  rpc :ListConsumerQuotaMetrics,
      Google.Api.Serviceusage.V1beta1.ListConsumerQuotaMetricsRequest,
      Google.Api.Serviceusage.V1beta1.ListConsumerQuotaMetricsResponse

  rpc :GetConsumerQuotaMetric,
      Google.Api.Serviceusage.V1beta1.GetConsumerQuotaMetricRequest,
      Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric

  rpc :GetConsumerQuotaLimit,
      Google.Api.Serviceusage.V1beta1.GetConsumerQuotaLimitRequest,
      Google.Api.Serviceusage.V1beta1.ConsumerQuotaLimit

  rpc :CreateAdminOverride,
      Google.Api.Serviceusage.V1beta1.CreateAdminOverrideRequest,
      Google.Longrunning.Operation

  rpc :UpdateAdminOverride,
      Google.Api.Serviceusage.V1beta1.UpdateAdminOverrideRequest,
      Google.Longrunning.Operation

  rpc :DeleteAdminOverride,
      Google.Api.Serviceusage.V1beta1.DeleteAdminOverrideRequest,
      Google.Longrunning.Operation

  rpc :ListAdminOverrides,
      Google.Api.Serviceusage.V1beta1.ListAdminOverridesRequest,
      Google.Api.Serviceusage.V1beta1.ListAdminOverridesResponse

  rpc :ImportAdminOverrides,
      Google.Api.Serviceusage.V1beta1.ImportAdminOverridesRequest,
      Google.Longrunning.Operation

  rpc :CreateConsumerOverride,
      Google.Api.Serviceusage.V1beta1.CreateConsumerOverrideRequest,
      Google.Longrunning.Operation

  rpc :UpdateConsumerOverride,
      Google.Api.Serviceusage.V1beta1.UpdateConsumerOverrideRequest,
      Google.Longrunning.Operation

  rpc :DeleteConsumerOverride,
      Google.Api.Serviceusage.V1beta1.DeleteConsumerOverrideRequest,
      Google.Longrunning.Operation

  rpc :ListConsumerOverrides,
      Google.Api.Serviceusage.V1beta1.ListConsumerOverridesRequest,
      Google.Api.Serviceusage.V1beta1.ListConsumerOverridesResponse

  rpc :ImportConsumerOverrides,
      Google.Api.Serviceusage.V1beta1.ImportConsumerOverridesRequest,
      Google.Longrunning.Operation

  rpc :GenerateServiceIdentity,
      Google.Api.Serviceusage.V1beta1.GenerateServiceIdentityRequest,
      Google.Longrunning.Operation
end

defmodule Google.Api.Serviceusage.V1beta1.ServiceUsage.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Api.Serviceusage.V1beta1.ServiceUsage.Service
end
