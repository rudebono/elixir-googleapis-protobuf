defmodule Google.Api.Serviceusage.V1beta1.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :DISABLED, 1
  field :ENABLED, 2
end

defmodule Google.Api.Serviceusage.V1beta1.QuotaView do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :QUOTA_VIEW_UNSPECIFIED, 0
  field :BASIC, 1
  field :FULL, 2
end

defmodule Google.Api.Serviceusage.V1beta1.QuotaSafetyCheck do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :QUOTA_SAFETY_CHECK_UNSPECIFIED, 0
  field :LIMIT_DECREASE_BELOW_USAGE, 1
  field :LIMIT_DECREASE_PERCENTAGE_TOO_HIGH, 2
end

defmodule Google.Api.Serviceusage.V1beta1.Service do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :parent, 5, type: :string
  field :config, 2, type: Google.Api.Serviceusage.V1beta1.ServiceConfig
  field :state, 4, type: Google.Api.Serviceusage.V1beta1.State, enum: true
end

defmodule Google.Api.Serviceusage.V1beta1.ServiceConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :resource_names, 2, repeated: true, type: :string, json_name: "resourceNames"
end

defmodule Google.Api.Serviceusage.V1beta1.ConsumerQuotaMetric do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :metric, 8, type: :string
  field :unit, 2, type: :string
  field :is_precise, 3, type: :bool, json_name: "isPrecise"
  field :allows_admin_overrides, 7, type: :bool, json_name: "allowsAdminOverrides"

  field :quota_buckets, 9,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaBucket,
    json_name: "quotaBuckets"

  field :supported_locations, 11, repeated: true, type: :string, json_name: "supportedLocations"
end

defmodule Google.Api.Serviceusage.V1beta1.QuotaBucket.DimensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.QuotaBucket do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :producer_quota_policy, 7,
    type: Google.Api.Serviceusage.V1beta1.ProducerQuotaPolicy,
    json_name: "producerQuotaPolicy"

  field :dimensions, 6,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.QuotaBucket.DimensionsEntry,
    map: true
end

defmodule Google.Api.Serviceusage.V1beta1.QuotaOverride.DimensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.QuotaOverride do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :overrides, 1, repeated: true, type: Google.Api.Serviceusage.V1beta1.QuotaOverride
end

defmodule Google.Api.Serviceusage.V1beta1.ProducerQuotaPolicy.DimensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.ProducerQuotaPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :policy_value, 2, type: :int64, json_name: "policyValue"

  field :dimensions, 3,
    repeated: true,
    type: Google.Api.Serviceusage.V1beta1.ProducerQuotaPolicy.DimensionsEntry,
    map: true

  field :metric, 4, type: :string
  field :unit, 5, type: :string
  field :container, 6, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy.DimensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Serviceusage.V1beta1.AdminQuotaPolicy do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :email, 1, type: :string
  field :unique_id, 2, type: :string, json_name: "uniqueId"
end
