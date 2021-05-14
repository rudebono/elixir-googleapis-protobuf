defmodule Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.CommitmentPlan do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMMITMENT_PLAN_UNSPECIFIED | :FLEX | :TRIAL | :MONTHLY | :ANNUAL

  field :COMMITMENT_PLAN_UNSPECIFIED, 0

  field :FLEX, 3

  field :TRIAL, 5

  field :MONTHLY, 2

  field :ANNUAL, 4
end

defmodule Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :ACTIVE | :FAILED

  field :STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :ACTIVE, 2

  field :FAILED, 3
end

defmodule Google.Cloud.Bigquery.Reservation.V1.Assignment.JobType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :JOB_TYPE_UNSPECIFIED | :PIPELINE | :QUERY

  field :JOB_TYPE_UNSPECIFIED, 0

  field :PIPELINE, 1

  field :QUERY, 2
end

defmodule Google.Cloud.Bigquery.Reservation.V1.Assignment.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STATE_UNSPECIFIED | :PENDING | :ACTIVE

  field :STATE_UNSPECIFIED, 0

  field :PENDING, 1

  field :ACTIVE, 2
end

defmodule Google.Cloud.Bigquery.Reservation.V1.Reservation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_capacity: integer,
          ignore_idle_slots: boolean
        }

  defstruct [:name, :slot_capacity, :ignore_idle_slots]

  field :name, 1, type: :string
  field :slot_capacity, 2, type: :int64
  field :ignore_idle_slots, 4, type: :bool
end

defmodule Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_count: integer,
          plan: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.CommitmentPlan.t(),
          state: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.State.t(),
          commitment_end_time: Google.Protobuf.Timestamp.t() | nil,
          failure_status: Google.Rpc.Status.t() | nil,
          renewal_plan: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.CommitmentPlan.t()
        }

  defstruct [
    :name,
    :slot_count,
    :plan,
    :state,
    :commitment_end_time,
    :failure_status,
    :renewal_plan
  ]

  field :name, 1, type: :string
  field :slot_count, 2, type: :int64

  field :plan, 3,
    type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.CommitmentPlan,
    enum: true

  field :state, 4, type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.State, enum: true
  field :commitment_end_time, 5, type: Google.Protobuf.Timestamp
  field :failure_status, 7, type: Google.Rpc.Status

  field :renewal_plan, 8,
    type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.CommitmentPlan,
    enum: true
end

defmodule Google.Cloud.Bigquery.Reservation.V1.CreateReservationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          reservation_id: String.t(),
          reservation: Google.Cloud.Bigquery.Reservation.V1.Reservation.t() | nil
        }

  defstruct [:parent, :reservation_id, :reservation]

  field :parent, 1, type: :string
  field :reservation_id, 2, type: :string
  field :reservation, 3, type: Google.Cloud.Bigquery.Reservation.V1.Reservation
end

defmodule Google.Cloud.Bigquery.Reservation.V1.ListReservationsRequest do
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

defmodule Google.Cloud.Bigquery.Reservation.V1.ListReservationsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reservations: [Google.Cloud.Bigquery.Reservation.V1.Reservation.t()],
          next_page_token: String.t()
        }

  defstruct [:reservations, :next_page_token]

  field :reservations, 1, repeated: true, type: Google.Cloud.Bigquery.Reservation.V1.Reservation
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.GetReservationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.DeleteReservationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.UpdateReservationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          reservation: Google.Cloud.Bigquery.Reservation.V1.Reservation.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:reservation, :update_mask]

  field :reservation, 1, type: Google.Cloud.Bigquery.Reservation.V1.Reservation
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Bigquery.Reservation.V1.CreateCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          capacity_commitment: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.t() | nil,
          enforce_single_admin_project_per_org: boolean
        }

  defstruct [:parent, :capacity_commitment, :enforce_single_admin_project_per_org]

  field :parent, 1, type: :string
  field :capacity_commitment, 2, type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment
  field :enforce_single_admin_project_per_org, 4, type: :bool
end

defmodule Google.Cloud.Bigquery.Reservation.V1.ListCapacityCommitmentsRequest do
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

defmodule Google.Cloud.Bigquery.Reservation.V1.ListCapacityCommitmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          capacity_commitments: [Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.t()],
          next_page_token: String.t()
        }

  defstruct [:capacity_commitments, :next_page_token]

  field :capacity_commitments, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment

  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.GetCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.DeleteCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.UpdateCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          capacity_commitment: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:capacity_commitment, :update_mask]

  field :capacity_commitment, 1, type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end

defmodule Google.Cloud.Bigquery.Reservation.V1.SplitCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          slot_count: integer
        }

  defstruct [:name, :slot_count]

  field :name, 1, type: :string
  field :slot_count, 2, type: :int64
end

defmodule Google.Cloud.Bigquery.Reservation.V1.SplitCapacityCommitmentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          first: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.t() | nil,
          second: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment.t() | nil
        }

  defstruct [:first, :second]

  field :first, 1, type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment
  field :second, 2, type: Google.Cloud.Bigquery.Reservation.V1.CapacityCommitment
end

defmodule Google.Cloud.Bigquery.Reservation.V1.MergeCapacityCommitmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          capacity_commitment_ids: [String.t()]
        }

  defstruct [:parent, :capacity_commitment_ids]

  field :parent, 1, type: :string
  field :capacity_commitment_ids, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.Assignment do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          assignee: String.t(),
          job_type: Google.Cloud.Bigquery.Reservation.V1.Assignment.JobType.t(),
          state: Google.Cloud.Bigquery.Reservation.V1.Assignment.State.t()
        }

  defstruct [:name, :assignee, :job_type, :state]

  field :name, 1, type: :string
  field :assignee, 4, type: :string
  field :job_type, 3, type: Google.Cloud.Bigquery.Reservation.V1.Assignment.JobType, enum: true
  field :state, 6, type: Google.Cloud.Bigquery.Reservation.V1.Assignment.State, enum: true
end

defmodule Google.Cloud.Bigquery.Reservation.V1.CreateAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          assignment: Google.Cloud.Bigquery.Reservation.V1.Assignment.t() | nil
        }

  defstruct [:parent, :assignment]

  field :parent, 1, type: :string
  field :assignment, 2, type: Google.Cloud.Bigquery.Reservation.V1.Assignment
end

defmodule Google.Cloud.Bigquery.Reservation.V1.ListAssignmentsRequest do
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

defmodule Google.Cloud.Bigquery.Reservation.V1.ListAssignmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          assignments: [Google.Cloud.Bigquery.Reservation.V1.Assignment.t()],
          next_page_token: String.t()
        }

  defstruct [:assignments, :next_page_token]

  field :assignments, 1, repeated: true, type: Google.Cloud.Bigquery.Reservation.V1.Assignment
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.DeleteAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.SearchAssignmentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          query: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct [:parent, :query, :page_size, :page_token]

  field :parent, 1, type: :string
  field :query, 2, type: :string
  field :page_size, 3, type: :int32
  field :page_token, 4, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.SearchAssignmentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          assignments: [Google.Cloud.Bigquery.Reservation.V1.Assignment.t()],
          next_page_token: String.t()
        }

  defstruct [:assignments, :next_page_token]

  field :assignments, 1, repeated: true, type: Google.Cloud.Bigquery.Reservation.V1.Assignment
  field :next_page_token, 2, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.MoveAssignmentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          destination_id: String.t()
        }

  defstruct [:name, :destination_id]

  field :name, 1, type: :string
  field :destination_id, 3, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.BiReservation do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          update_time: Google.Protobuf.Timestamp.t() | nil,
          size: integer
        }

  defstruct [:name, :update_time, :size]

  field :name, 1, type: :string
  field :update_time, 3, type: Google.Protobuf.Timestamp
  field :size, 4, type: :int64
end

defmodule Google.Cloud.Bigquery.Reservation.V1.GetBiReservationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct [:name]

  field :name, 1, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1.UpdateBiReservationRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          bi_reservation: Google.Cloud.Bigquery.Reservation.V1.BiReservation.t() | nil,
          update_mask: Google.Protobuf.FieldMask.t() | nil
        }

  defstruct [:bi_reservation, :update_mask]

  field :bi_reservation, 1, type: Google.Cloud.Bigquery.Reservation.V1.BiReservation
  field :update_mask, 2, type: Google.Protobuf.FieldMask
end
