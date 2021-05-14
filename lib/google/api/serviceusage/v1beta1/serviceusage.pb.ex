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

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.DisableServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.GetServiceRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

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

  defstruct [:parent, :page_size, :page_token, :filter]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :filter, 4, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.ListServicesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          services: [Google.Api.Serviceusage.V1beta1.Service.t()],
          next_page_token: String.t()
        }

  defstruct [:services, :next_page_token]

  field :services, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.Service
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.BatchEnableServicesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          service_ids: [String.t()]
        }

  defstruct [:parent, :service_ids]

  field :parent, 1, type: :string
  field :service_ids, 2, repeated: true, type: :string
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

  defstruct [:parent, :page_size, :page_token, :view]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
  field :view, 4, type: Google.Api.Serviceusage.V1beta1.QuotaView, enum: true
end

defmodule Google.Api.Serviceusage.V1beta1.ListConsumerQuotaMetricsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          metrics: [Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric.t()],
          next_page_token: String.t()
        }

  defstruct [:metrics, :next_page_token]

  field :metrics, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.GetConsumerQuotaMetricRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          view: Google.Api.Serviceusage.V1beta1.QuotaView.t()
        }

  defstruct [:name, :view]

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

  defstruct [:name, :view]

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
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:parent, :override, :force, :force_only]

  field :parent, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
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
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:name, :override, :force, :update_mask, :force_only]

  field :name, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask

  field :force_only, 5,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    enum: true
end

defmodule Google.Api.Serviceusage.V1beta1.DeleteAdminOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:name, :force, :force_only]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  field :force_only, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
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

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.ListAdminOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()],
          next_page_token: String.t()
        }

  defstruct [:overrides, :next_page_token]

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.BatchCreateAdminOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct [:overrides]

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end

defmodule Google.Api.Serviceusage.V1beta1.ImportAdminOverridesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t(),
          force: boolean,
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:source, :parent, :force, :force_only]

  oneof :source, 0
  field :parent, 1, type: :string
  field :inline_source, 2, type: Google.Api.Serviceusage.V1beta1.OverrideInlineSource, oneof: 0
  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    enum: true
end

defmodule Google.Api.Serviceusage.V1beta1.ImportAdminOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct [:overrides]

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
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:parent, :override, :force, :force_only]

  field :parent, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
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
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:name, :override, :force, :update_mask, :force_only]

  field :name, 1, type: :string
  field :override, 2, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :force, 3, type: :bool
  field :update_mask, 4, type: Google.Protobuf.FieldMask

  field :force_only, 5,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    enum: true
end

defmodule Google.Api.Serviceusage.V1beta1.DeleteConsumerOverrideRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          force: boolean,
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:name, :force, :force_only]

  field :name, 1, type: :string
  field :force, 2, type: :bool

  field :force_only, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
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

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32
  field :page_token, 3, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.ListConsumerOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()],
          next_page_token: String.t()
        }

  defstruct [:overrides, :next_page_token]

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
  field :next_page_token, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.BatchCreateConsumerOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct [:overrides]

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end

defmodule Google.Api.Serviceusage.V1beta1.ImportConsumerOverridesRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          parent: String.t(),
          force: boolean,
          force_only: [[Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck.t()]]
        }

  defstruct [:source, :parent, :force, :force_only]

  oneof :source, 0
  field :parent, 1, type: :string
  field :inline_source, 2, type: Google.Api.Serviceusage.V1beta1.OverrideInlineSource, oneof: 0
  field :force, 3, type: :bool

  field :force_only, 4,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck,
    enum: true
end

defmodule Google.Api.Serviceusage.V1beta1.ImportConsumerOverridesResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct [:overrides]

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

  defstruct [:policies]

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

  defstruct [:parent]

  field :parent, 1, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.GetServiceIdentityResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          identity: Google.Api.Serviceusage.V1beta1.ServiceIdentity.t() | nil,
          state: Google.Api.Serviceusage.V1beta1.GetServiceIdentityResponse.IdentityState.t()
        }

  defstruct [:identity, :state]

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
