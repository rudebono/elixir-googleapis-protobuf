defmodule Google.Cloud.Run.V2.Condition.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :CONDITION_PENDING
          | :CONDITION_RECONCILING
          | :CONDITION_FAILED
          | :CONDITION_SUCCEEDED

  field :STATE_UNSPECIFIED, 0
  field :CONDITION_PENDING, 1
  field :CONDITION_RECONCILING, 2
  field :CONDITION_FAILED, 3
  field :CONDITION_SUCCEEDED, 4
end
defmodule Google.Cloud.Run.V2.Condition.Severity do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :SEVERITY_UNSPECIFIED | :ERROR | :WARNING | :INFO

  field :SEVERITY_UNSPECIFIED, 0
  field :ERROR, 1
  field :WARNING, 2
  field :INFO, 3
end
defmodule Google.Cloud.Run.V2.Condition.CommonReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :COMMON_REASON_UNDEFINED
          | :UNKNOWN
          | :ROUTE_MISSING
          | :REVISION_FAILED
          | :PROGRESS_DEADLINE_EXCEEDED
          | :BUILD_STEP_FAILED
          | :CONTAINER_MISSING
          | :CONTAINER_PERMISSION_DENIED
          | :CONTAINER_IMAGE_UNAUTHORIZED
          | :CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED
          | :ENCRYPTION_KEY_PERMISSION_DENIED
          | :ENCRYPTION_KEY_CHECK_FAILED
          | :SECRETS_ACCESS_CHECK_FAILED
          | :WAITING_FOR_OPERATION
          | :IMMEDIATE_RETRY
          | :POSTPONED_RETRY

  field :COMMON_REASON_UNDEFINED, 0
  field :UNKNOWN, 1
  field :ROUTE_MISSING, 2
  field :REVISION_FAILED, 3
  field :PROGRESS_DEADLINE_EXCEEDED, 4
  field :BUILD_STEP_FAILED, 5
  field :CONTAINER_MISSING, 6
  field :CONTAINER_PERMISSION_DENIED, 7
  field :CONTAINER_IMAGE_UNAUTHORIZED, 8
  field :CONTAINER_IMAGE_AUTHORIZATION_CHECK_FAILED, 9
  field :ENCRYPTION_KEY_PERMISSION_DENIED, 10
  field :ENCRYPTION_KEY_CHECK_FAILED, 11
  field :SECRETS_ACCESS_CHECK_FAILED, 12
  field :WAITING_FOR_OPERATION, 13
  field :IMMEDIATE_RETRY, 14
  field :POSTPONED_RETRY, 15
end
defmodule Google.Cloud.Run.V2.Condition.InternalReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :INTERNAL_REASON_UNDEFINED
          | :CONFLICTING_REVISION_NAME
          | :REVISION_MISSING
          | :CONFIGURATION_MISSING
          | :ASSIGNING_TRAFFIC
          | :UPDATING_INGRESS_TRAFFIC_ALLOWED
          | :REVISION_ORG_POLICY_VIOLATION
          | :ENABLING_GCFV2_URI_SUPPORT

  field :INTERNAL_REASON_UNDEFINED, 0
  field :CONFLICTING_REVISION_NAME, 1
  field :REVISION_MISSING, 2
  field :CONFIGURATION_MISSING, 3
  field :ASSIGNING_TRAFFIC, 4
  field :UPDATING_INGRESS_TRAFFIC_ALLOWED, 5
  field :REVISION_ORG_POLICY_VIOLATION, 6
  field :ENABLING_GCFV2_URI_SUPPORT, 7
end
defmodule Google.Cloud.Run.V2.Condition.DomainMappingReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :DOMAIN_MAPPING_REASON_UNDEFINED
          | :ROUTE_NOT_READY
          | :PERMISSION_DENIED
          | :CERTIFICATE_ALREADY_EXISTS
          | :MAPPING_ALREADY_EXISTS
          | :CERTIFICATE_PENDING
          | :CERTIFICATE_FAILED

  field :DOMAIN_MAPPING_REASON_UNDEFINED, 0
  field :ROUTE_NOT_READY, 1
  field :PERMISSION_DENIED, 2
  field :CERTIFICATE_ALREADY_EXISTS, 3
  field :MAPPING_ALREADY_EXISTS, 4
  field :CERTIFICATE_PENDING, 5
  field :CERTIFICATE_FAILED, 6
end
defmodule Google.Cloud.Run.V2.Condition.RevisionReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :REVISION_REASON_UNDEFINED
          | :PENDING
          | :RESERVE
          | :RETIRED
          | :RETIRING
          | :RECREATING
          | :HEALTH_CHECK_CONTAINER_ERROR
          | :CUSTOMIZED_PATH_RESPONSE_PENDING
          | :MIN_INSTANCES_NOT_PROVISIONED
          | :ACTIVE_REVISION_LIMIT_REACHED
          | :NO_DEPLOYMENT
          | :HEALTH_CHECK_SKIPPED

  field :REVISION_REASON_UNDEFINED, 0
  field :PENDING, 1
  field :RESERVE, 2
  field :RETIRED, 3
  field :RETIRING, 4
  field :RECREATING, 5
  field :HEALTH_CHECK_CONTAINER_ERROR, 6
  field :CUSTOMIZED_PATH_RESPONSE_PENDING, 7
  field :MIN_INSTANCES_NOT_PROVISIONED, 8
  field :ACTIVE_REVISION_LIMIT_REACHED, 9
  field :NO_DEPLOYMENT, 10
  field :HEALTH_CHECK_SKIPPED, 11
end
defmodule Google.Cloud.Run.V2.Condition.ExecutionReason do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :EXECUTION_REASON_UNDEFINED
          | :JOB_STATUS_SERVICE_POLLING_ERROR
          | :NON_ZERO_EXIT_CODE

  field :EXECUTION_REASON_UNDEFINED, 0
  field :JOB_STATUS_SERVICE_POLLING_ERROR, 1
  field :NON_ZERO_EXIT_CODE, 2
end
defmodule Google.Cloud.Run.V2.Condition do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reasons:
            {:reason, Google.Cloud.Run.V2.Condition.CommonReason.t()}
            | {:internal_reason, Google.Cloud.Run.V2.Condition.InternalReason.t()}
            | {:domain_mapping_reason, Google.Cloud.Run.V2.Condition.DomainMappingReason.t()}
            | {:revision_reason, Google.Cloud.Run.V2.Condition.RevisionReason.t()}
            | {:execution_reason, Google.Cloud.Run.V2.Condition.ExecutionReason.t()},
          type: String.t(),
          state: Google.Cloud.Run.V2.Condition.State.t(),
          message: String.t(),
          last_transition_time: Google.Protobuf.Timestamp.t() | nil,
          severity: Google.Cloud.Run.V2.Condition.Severity.t()
        }

  defstruct reasons: nil,
            type: "",
            state: :STATE_UNSPECIFIED,
            message: "",
            last_transition_time: nil,
            severity: :SEVERITY_UNSPECIFIED

  oneof :reasons, 0

  field :type, 1, type: :string
  field :state, 2, type: Google.Cloud.Run.V2.Condition.State, enum: true
  field :message, 3, type: :string
  field :last_transition_time, 4, type: Google.Protobuf.Timestamp, json_name: "lastTransitionTime"
  field :severity, 5, type: Google.Cloud.Run.V2.Condition.Severity, enum: true
  field :reason, 6, type: Google.Cloud.Run.V2.Condition.CommonReason, enum: true, oneof: 0

  field :internal_reason, 7,
    type: Google.Cloud.Run.V2.Condition.InternalReason,
    json_name: "internalReason",
    enum: true,
    oneof: 0

  field :domain_mapping_reason, 8,
    type: Google.Cloud.Run.V2.Condition.DomainMappingReason,
    json_name: "domainMappingReason",
    enum: true,
    oneof: 0

  field :revision_reason, 9,
    type: Google.Cloud.Run.V2.Condition.RevisionReason,
    json_name: "revisionReason",
    enum: true,
    oneof: 0

  field :execution_reason, 11,
    type: Google.Cloud.Run.V2.Condition.ExecutionReason,
    json_name: "executionReason",
    enum: true,
    oneof: 0
end
