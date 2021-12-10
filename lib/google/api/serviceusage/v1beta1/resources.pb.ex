defmodule Google.Api.Serviceusage.V1beta1.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :STATE_UNSPECIFIED | :DISABLED | :ENABLED

  field :STATE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end
defmodule Google.Api.Serviceusage.V1beta1.QuotaView do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :QUOTA_VIEW_UNSPECIFIED | :BASIC | :FULL

  field :QUOTA_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end
defmodule Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :QUOTA_SAFETY_CHECK_UNSPECIFIED
          | :LIMIT_DECREASE_BELOW_USAGE
          | :LIMIT_DECREASE_PERCENTAGE_TOO_HIGH

  field :QUOTA_SAFETY_CHECK_UNSPECIFIED, 0
  field :LIMIT_DECREASE_BELOW_USAGE, 1
  field :LIMIT_DECREASE_PERCENTAGE_TOO_HIGH, 2
end
defmodule Google.Api.Serviceusage.V1beta1.Service do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          config: Google.Api.Serviceusage.V1beta1.ServiceConfig.t() | nil,
          state: Google.Api.Serviceusage.V1beta1.State.t()
        }

  defstruct name: "",
            parent: "",
            config: nil,
            state: :STATE_UNSPECIFIED

  field :name, 1, type: :string
  field :parent, 5, type: :string
  field :config, 2, type: Google.Api.Serviceusage.V1beta1.ServiceConfig
  field :state, 4, type: Google.Api.Serviceusage.V1beta1.State, enum: true
end
defmodule Google.Api.Serviceusage.V1beta1.ServiceConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          title: String.t(),
          apis: [Google.Protobuf.Api.t()],
          documentation: Google.Api.Documentation.t() | nil,
          quota: Google.Api.Quota.t() | nil,
          authentication: Google.Api.Authentication.t() | nil,
          usage: Google.Api.Usage.t() | nil,
          endpoints: [Google.Api.Endpoint.t()],
          monitored_resources: [Google.Api.MonitoredResourceDescriptor.t()],
          monitoring: Google.Api.Monitoring.t() | nil
        }

  defstruct name: "",
            title: "",
            apis: [],
            documentation: nil,
            quota: nil,
            authentication: nil,
            usage: nil,
            endpoints: [],
            monitored_resources: [],
            monitoring: nil

  field :name, 1, type: :string
  field :title, 2, type: :string
  field :apis, 3, repeated: true, type: Google.Protobuf.Api
  field :documentation, 6, type: Google.Api.Documentation
  field :quota, 10, type: Google.Api.Quota
  field :authentication, 11, type: Google.Api.Authentication
  field :usage, 15, type: Google.Api.Usage
  field :endpoints, 18, repeated: true, type: Google.Api.Endpoint

  field :monitored_resources, 25,
    repeated: true,
    type: Google.Api.MonitoredResourceDescriptor,
    json_name: "monitoredResources"

  field :monitoring, 28, type: Google.Api.Monitoring
end
defmodule Google.Api.Serviceusage.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          resource_names: [String.t()]
        }

  defstruct resource_names: []

  field :resource_names, 2, repeated: true, type: :string, json_name: "resourceNames"
end
defmodule Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metric: String.t(),
          display_name: String.t(),
          consumer_quota_limits: [Google.Api.Serviceusage.V1beta1.ConsumerQuotaLimit.t()],
          descendant_consumer_quota_limits: [
            Google.Api.Serviceusage.V1beta1.ConsumerQuotaLimit.t()
          ],
          unit: String.t()
        }

  defstruct name: "",
            metric: "",
            display_name: "",
            consumer_quota_limits: [],
            descendant_consumer_quota_limits: [],
            unit: ""

  field :name, 1, type: :string
  field :metric, 4, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"

  field :consumer_quota_limits, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.ConsumerQuotaLimit,
    json_name: "consumerQuotaLimits"

  field :descendant_consumer_quota_limits, 6,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.ConsumerQuotaLimit,
    json_name: "descendantConsumerQuotaLimits"

  field :unit, 5, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.ConsumerQuotaLimit do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          metric: String.t(),
          unit: String.t(),
          is_precise: boolean,
          allows_admin_overrides: boolean,
          quota_buckets: [Google.Api.Serviceusage.V1beta1.QuotaBucket.t()]
        }

  defstruct name: "",
            metric: "",
            unit: "",
            is_precise: false,
            allows_admin_overrides: false,
            quota_buckets: []

  field :name, 1, type: :string
  field :metric, 8, type: :string
  field :unit, 2, type: :string
  field :is_precise, 3, type: :bool, json_name: "isPrecise"
  field :allows_admin_overrides, 7, type: :bool, json_name: "allowsAdminOverrides"

  field :quota_buckets, 9,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaBucket,
    json_name: "quotaBuckets"
end
defmodule Google.Api.Serviceusage.V1beta1.QuotaBucket.DimensionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.QuotaBucket do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          effective_limit: integer,
          default_limit: integer,
          producer_override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          consumer_override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          admin_override: Google.Api.Serviceusage.V1beta1.QuotaOverride.t() | nil,
          dimensions: %{String.t() => String.t()}
        }

  defstruct effective_limit: 0,
            default_limit: 0,
            producer_override: nil,
            consumer_override: nil,
            admin_override: nil,
            dimensions: %{}

  field :effective_limit, 1, type: :int64, json_name: "effectiveLimit"
  field :default_limit, 2, type: :int64, json_name: "defaultLimit"

  field :producer_override, 3,
    type: Google.Api.Serviceusage.V1beta1.QuotaOverride,
    json_name: "producerOverride"

  field :consumer_override, 4,
    type: Google.Api.Serviceusage.V1beta1.QuotaOverride,
    json_name: "consumerOverride"

  field :admin_override, 5,
    type: Google.Api.Serviceusage.V1beta1.QuotaOverride,
    json_name: "adminOverride"

  field :dimensions, 6,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaBucket.DimensionsEntry,
    map: true
end
defmodule Google.Api.Serviceusage.V1beta1.QuotaOverride.DimensionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.QuotaOverride do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          override_value: integer,
          dimensions: %{String.t() => String.t()},
          metric: String.t(),
          unit: String.t(),
          admin_override_ancestor: String.t()
        }

  defstruct name: "",
            override_value: 0,
            dimensions: %{},
            metric: "",
            unit: "",
            admin_override_ancestor: ""

  field :name, 1, type: :string
  field :override_value, 2, type: :int64, json_name: "overrideValue"

  field :dimensions, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaOverride.DimensionsEntry,
    map: true

  field :metric, 4, type: :string
  field :unit, 5, type: :string
  field :admin_override_ancestor, 6, type: :string, json_name: "adminOverrideAncestor"
end
defmodule Google.Api.Serviceusage.V1beta1.OverrideInlineSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          overrides: [Google.Api.Serviceusage.V1beta1.QuotaOverride.t()]
        }

  defstruct overrides: []

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end
defmodule Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy.DimensionsEntry do
  @moduledoc false
  use Protobuf, map: true, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          policy_value: integer,
          dimensions: %{String.t() => String.t()},
          metric: String.t(),
          unit: String.t(),
          container: String.t()
        }

  defstruct name: "",
            policy_value: 0,
            dimensions: %{},
            metric: "",
            unit: "",
            container: ""

  field :name, 1, type: :string
  field :policy_value, 2, type: :int64, json_name: "policyValue"

  field :dimensions, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy.DimensionsEntry,
    map: true

  field :metric, 4, type: :string
  field :unit, 5, type: :string
  field :container, 6, type: :string
end
defmodule Google.Api.Serviceusage.V1beta1.ServiceIdentity do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          unique_id: String.t()
        }

  defstruct email: "",
            unique_id: ""

  field :email, 1, type: :string
  field :unique_id, 2, type: :string, json_name: "uniqueId"
end
