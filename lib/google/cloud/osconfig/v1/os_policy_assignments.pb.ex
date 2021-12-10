defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.RolloutState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROLLOUT_STATE_UNSPECIFIED
          | :IN_PROGRESS
          | :CANCELLING
          | :CANCELLED
          | :SUCCEEDED

  field :ROLLOUT_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :CANCELLING, 2
  field :CANCELLED, 3
  field :SUCCEEDED, 4
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.APIMethod do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t :: integer | :API_METHOD_UNSPECIFIED | :CREATE | :UPDATE | :DELETE

  field :API_METHOD_UNSPECIFIED, 0
  field :CREATE, 1
  field :UPDATE, 2
  field :DELETE, 3
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.RolloutState do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :ROLLOUT_STATE_UNSPECIFIED
          | :IN_PROGRESS
          | :CANCELLING
          | :CANCELLED
          | :SUCCEEDED

  field :ROLLOUT_STATE_UNSPECIFIED, 0
  field :IN_PROGRESS, 1
  field :CANCELLING, 2
  field :CANCELLED, 3
  field :SUCCEEDED, 4
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet.LabelsEntry do
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
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()}
        }

  defstruct labels: %{}

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet.LabelsEntry,
    map: true
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter.Inventory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_short_name: String.t(),
          os_version: String.t()
        }

  defstruct os_short_name: "",
            os_version: ""

  field :os_short_name, 1, type: :string, json_name: "osShortName", deprecated: false
  field :os_version, 2, type: :string, json_name: "osVersion"
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          all: boolean,
          inclusion_labels: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet.t()],
          exclusion_labels: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet.t()],
          inventories: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter.Inventory.t()]
        }

  defstruct all: false,
            inclusion_labels: [],
            exclusion_labels: [],
            inventories: []

  field :all, 1, type: :bool

  field :inclusion_labels, 2,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet,
    json_name: "inclusionLabels"

  field :exclusion_labels, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet,
    json_name: "exclusionLabels"

  field :inventories, 4,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter.Inventory
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.Rollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disruption_budget: Google.Cloud.Osconfig.V1.FixedOrPercent.t() | nil,
          min_wait_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct disruption_budget: nil,
            min_wait_duration: nil

  field :disruption_budget, 1,
    type: Google.Cloud.Osconfig.V1.FixedOrPercent,
    json_name: "disruptionBudget",
    deprecated: false

  field :min_wait_duration, 2,
    type: Google.Protobuf.Duration,
    json_name: "minWaitDuration",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          description: String.t(),
          os_policies: [Google.Cloud.Osconfig.V1.OSPolicy.t()],
          instance_filter: Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter.t() | nil,
          rollout: Google.Cloud.Osconfig.V1.OSPolicyAssignment.Rollout.t() | nil,
          revision_id: String.t(),
          revision_create_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t(),
          rollout_state: Google.Cloud.Osconfig.V1.OSPolicyAssignment.RolloutState.t(),
          baseline: boolean,
          deleted: boolean,
          reconciling: boolean,
          uid: String.t()
        }

  defstruct name: "",
            description: "",
            os_policies: [],
            instance_filter: nil,
            rollout: nil,
            revision_id: "",
            revision_create_time: nil,
            etag: "",
            rollout_state: :ROLLOUT_STATE_UNSPECIFIED,
            baseline: false,
            deleted: false,
            reconciling: false,
            uid: ""

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :os_policies, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicy,
    json_name: "osPolicies",
    deprecated: false

  field :instance_filter, 4,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter,
    json_name: "instanceFilter",
    deprecated: false

  field :rollout, 5, type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.Rollout, deprecated: false
  field :revision_id, 6, type: :string, json_name: "revisionId", deprecated: false

  field :revision_create_time, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "revisionCreateTime",
    deprecated: false

  field :etag, 8, type: :string

  field :rollout_state, 9,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.RolloutState,
    json_name: "rolloutState",
    enum: true,
    deprecated: false

  field :baseline, 10, type: :bool, deprecated: false
  field :deleted, 11, type: :bool, deprecated: false
  field :reconciling, 12, type: :bool, deprecated: false
  field :uid, 13, type: :string, deprecated: false
end
defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignment: String.t(),
          api_method: Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.APIMethod.t(),
          rollout_state:
            Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.RolloutState.t(),
          rollout_start_time: Google.Protobuf.Timestamp.t() | nil,
          rollout_update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct os_policy_assignment: "",
            api_method: :API_METHOD_UNSPECIFIED,
            rollout_state: :ROLLOUT_STATE_UNSPECIFIED,
            rollout_start_time: nil,
            rollout_update_time: nil

  field :os_policy_assignment, 1,
    type: :string,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :api_method, 2,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.APIMethod,
    json_name: "apiMethod",
    enum: true

  field :rollout_state, 3,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.RolloutState,
    json_name: "rolloutState",
    enum: true

  field :rollout_start_time, 4, type: Google.Protobuf.Timestamp, json_name: "rolloutStartTime"
  field :rollout_update_time, 5, type: Google.Protobuf.Timestamp, json_name: "rolloutUpdateTime"
end
defmodule Google.Cloud.Osconfig.V1.CreateOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          os_policy_assignment: Google.Cloud.Osconfig.V1.OSPolicyAssignment.t() | nil,
          os_policy_assignment_id: String.t()
        }

  defstruct parent: "",
            os_policy_assignment: nil,
            os_policy_assignment_id: ""

  field :parent, 1, type: :string, deprecated: false

  field :os_policy_assignment, 2,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :os_policy_assignment_id, 3,
    type: :string,
    json_name: "osPolicyAssignmentId",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1.UpdateOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignment: Google.Cloud.Osconfig.V1.OSPolicyAssignment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct os_policy_assignment: nil,
            update_mask: nil

  field :os_policy_assignment, 1,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignment",
    deprecated: false

  field :update_mask, 2,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false
end
defmodule Google.Cloud.Osconfig.V1.GetOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentsRequest do
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

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignments: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.t()],
          next_page_token: String.t()
        }

  defstruct os_policy_assignments: [],
            next_page_token: ""

  field :os_policy_assignments, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentRevisionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct name: "",
            page_size: 0,
            page_token: ""

  field :name, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentRevisionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignments: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.t()],
          next_page_token: String.t()
        }

  defstruct os_policy_assignments: [],
            next_page_token: ""

  field :os_policy_assignments, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Osconfig.V1.DeleteOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
