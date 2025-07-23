defmodule Google.Api.Cloudquotas.V1.QuotaSafetyCheck do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :QUOTA_SAFETY_CHECK_UNSPECIFIED, 0
  field :QUOTA_DECREASE_BELOW_USAGE, 1
  field :QUOTA_DECREASE_PERCENTAGE_TOO_HIGH, 2
end

defmodule Google.Api.Cloudquotas.V1.QuotaInfo.ContainerType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :CONTAINER_TYPE_UNSPECIFIED, 0
  field :PROJECT, 1
  field :FOLDER, 2
  field :ORGANIZATION, 3
end

defmodule Google.Api.Cloudquotas.V1.QuotaIncreaseEligibility.IneligibilityReason do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :INELIGIBILITY_REASON_UNSPECIFIED, 0
  field :NO_VALID_BILLING_ACCOUNT, 1
  field :NOT_SUPPORTED, 3
  field :NOT_ENOUGH_USAGE_HISTORY, 4
  field :OTHER, 2
end

defmodule Google.Api.Cloudquotas.V1.QuotaConfig.Origin do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ORIGIN_UNSPECIFIED, 0
  field :CLOUD_CONSOLE, 1
  field :AUTO_ADJUSTER, 2
end

defmodule Google.Api.Cloudquotas.V1.QuotaInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :quota_id, 2, type: :string, json_name: "quotaId"
  field :metric, 3, type: :string
  field :service, 4, type: :string
  field :is_precise, 5, type: :bool, json_name: "isPrecise"
  field :refresh_interval, 6, type: :string, json_name: "refreshInterval"

  field :container_type, 7,
    type: Google.Api.Cloudquotas.V1.QuotaInfo.ContainerType,
    json_name: "containerType",
    enum: true

  field :dimensions, 8, repeated: true, type: :string
  field :metric_display_name, 9, type: :string, json_name: "metricDisplayName"
  field :quota_display_name, 10, type: :string, json_name: "quotaDisplayName"
  field :metric_unit, 11, type: :string, json_name: "metricUnit"

  field :quota_increase_eligibility, 12,
    type: Google.Api.Cloudquotas.V1.QuotaIncreaseEligibility,
    json_name: "quotaIncreaseEligibility"

  field :is_fixed, 13, type: :bool, json_name: "isFixed"

  field :dimensions_infos, 14,
    repeated: true,
    type: Google.Api.Cloudquotas.V1.DimensionsInfo,
    json_name: "dimensionsInfos"

  field :is_concurrent, 15, type: :bool, json_name: "isConcurrent"
  field :service_request_quota_uri, 17, type: :string, json_name: "serviceRequestQuotaUri"
end

defmodule Google.Api.Cloudquotas.V1.QuotaIncreaseEligibility do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :is_eligible, 1, type: :bool, json_name: "isEligible"

  field :ineligibility_reason, 2,
    type: Google.Api.Cloudquotas.V1.QuotaIncreaseEligibility.IneligibilityReason,
    json_name: "ineligibilityReason",
    enum: true
end

defmodule Google.Api.Cloudquotas.V1.QuotaPreference.DimensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Cloudquotas.V1.QuotaPreference do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string

  field :dimensions, 2,
    repeated: true,
    type: Google.Api.Cloudquotas.V1.QuotaPreference.DimensionsEntry,
    map: true,
    deprecated: false

  field :quota_config, 3,
    type: Google.Api.Cloudquotas.V1.QuotaConfig,
    json_name: "quotaConfig",
    deprecated: false

  field :etag, 4, type: :string, deprecated: false

  field :create_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :service, 7, type: :string, deprecated: false
  field :quota_id, 8, type: :string, json_name: "quotaId", deprecated: false
  field :reconciling, 10, type: :bool, deprecated: false
  field :justification, 11, type: :string
  field :contact_email, 12, type: :string, json_name: "contactEmail", deprecated: false
end

defmodule Google.Api.Cloudquotas.V1.QuotaConfig.AnnotationsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Cloudquotas.V1.QuotaConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :preferred_value, 1, type: :int64, json_name: "preferredValue", deprecated: false
  field :state_detail, 2, type: :string, json_name: "stateDetail", deprecated: false

  field :granted_value, 3,
    type: Google.Protobuf.Int64Value,
    json_name: "grantedValue",
    deprecated: false

  field :trace_id, 4, type: :string, json_name: "traceId", deprecated: false

  field :annotations, 5,
    repeated: true,
    type: Google.Api.Cloudquotas.V1.QuotaConfig.AnnotationsEntry,
    map: true,
    deprecated: false

  field :request_origin, 6,
    type: Google.Api.Cloudquotas.V1.QuotaConfig.Origin,
    json_name: "requestOrigin",
    enum: true,
    deprecated: false
end

defmodule Google.Api.Cloudquotas.V1.DimensionsInfo.DimensionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Api.Cloudquotas.V1.DimensionsInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :dimensions, 1,
    repeated: true,
    type: Google.Api.Cloudquotas.V1.DimensionsInfo.DimensionsEntry,
    map: true

  field :details, 2, type: Google.Api.Cloudquotas.V1.QuotaDetails
  field :applicable_locations, 3, repeated: true, type: :string, json_name: "applicableLocations"
end

defmodule Google.Api.Cloudquotas.V1.QuotaDetails do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :value, 1, type: :int64
  field :rollout_info, 3, type: Google.Api.Cloudquotas.V1.RolloutInfo, json_name: "rolloutInfo"
end

defmodule Google.Api.Cloudquotas.V1.RolloutInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :ongoing_rollout, 1, type: :bool, json_name: "ongoingRollout"
end
