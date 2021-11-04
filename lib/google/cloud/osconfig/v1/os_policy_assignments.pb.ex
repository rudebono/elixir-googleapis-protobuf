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

  defstruct [:key, :value]

  field :key, 1, type: :string
  field :value, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          labels: %{String.t() => String.t()}
        }

  defstruct [:labels]

  field :labels, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.LabelSet.LabelsEntry,
    map: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter.Inventory do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_short_name: String.t(),
          os_version: String.t()
        }

  defstruct [:os_short_name, :os_version]

  field :os_short_name, 1, type: :string, json_name: "osShortName"
  field :os_version, 2, type: :string, json_name: "osVersion"

  def transform_module(), do: nil
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

  defstruct [:all, :inclusion_labels, :exclusion_labels, :inventories]

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

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.OSPolicyAssignment.Rollout do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          disruption_budget: Google.Cloud.Osconfig.V1.FixedOrPercent.t() | nil,
          min_wait_duration: Google.Protobuf.Duration.t() | nil
        }

  defstruct [:disruption_budget, :min_wait_duration]

  field :disruption_budget, 1,
    type: Google.Cloud.Osconfig.V1.FixedOrPercent,
    json_name: "disruptionBudget"

  field :min_wait_duration, 2, type: Google.Protobuf.Duration, json_name: "minWaitDuration"

  def transform_module(), do: nil
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

  defstruct [
    :name,
    :description,
    :os_policies,
    :instance_filter,
    :rollout,
    :revision_id,
    :revision_create_time,
    :etag,
    :rollout_state,
    :baseline,
    :deleted,
    :reconciling,
    :uid
  ]

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :os_policies, 3,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicy,
    json_name: "osPolicies"

  field :instance_filter, 4,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.InstanceFilter,
    json_name: "instanceFilter"

  field :rollout, 5, type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.Rollout
  field :revision_id, 6, type: :string, json_name: "revisionId"
  field :revision_create_time, 7, type: Google.Protobuf.Timestamp, json_name: "revisionCreateTime"
  field :etag, 8, type: :string

  field :rollout_state, 9,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment.RolloutState,
    enum: true,
    json_name: "rolloutState"

  field :baseline, 10, type: :bool
  field :deleted, 11, type: :bool
  field :reconciling, 12, type: :bool
  field :uid, 13, type: :string

  def transform_module(), do: nil
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

  defstruct [
    :os_policy_assignment,
    :api_method,
    :rollout_state,
    :rollout_start_time,
    :rollout_update_time
  ]

  field :os_policy_assignment, 1, type: :string, json_name: "osPolicyAssignment"

  field :api_method, 2,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.APIMethod,
    enum: true,
    json_name: "apiMethod"

  field :rollout_state, 3,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignmentOperationMetadata.RolloutState,
    enum: true,
    json_name: "rolloutState"

  field :rollout_start_time, 4, type: Google.Protobuf.Timestamp, json_name: "rolloutStartTime"
  field :rollout_update_time, 5, type: Google.Protobuf.Timestamp, json_name: "rolloutUpdateTime"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.CreateOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          os_policy_assignment: Google.Cloud.Osconfig.V1.OSPolicyAssignment.t() | nil,
          os_policy_assignment_id: String.t()
        }

  defstruct [:parent, :os_policy_assignment, :os_policy_assignment_id]

  field :parent, 1, type: :string

  field :os_policy_assignment, 2,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignment"

  field :os_policy_assignment_id, 3, type: :string, json_name: "osPolicyAssignmentId"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.UpdateOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignment: Google.Cloud.Osconfig.V1.OSPolicyAssignment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:os_policy_assignment, :update_mask]

  field :os_policy_assignment, 1,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignment"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.GetOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :page_size, :page_token]

  field :parent, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignments: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.t()],
          next_page_token: String.t()
        }

  defstruct [:os_policy_assignments, :next_page_token]

  field :os_policy_assignments, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentRevisionsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:name, :page_size, :page_token]

  field :name, 1, type: :string
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.ListOSPolicyAssignmentRevisionsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          os_policy_assignments: [Google.Cloud.Osconfig.V1.OSPolicyAssignment.t()],
          next_page_token: String.t()
        }

  defstruct [:os_policy_assignments, :next_page_token]

  field :os_policy_assignments, 1,
    repeated: true,
    type: Google.Cloud.Osconfig.V1.OSPolicyAssignment,
    json_name: "osPolicyAssignments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Osconfig.V1.DeleteOSPolicyAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string

  def transform_module(), do: nil
end
