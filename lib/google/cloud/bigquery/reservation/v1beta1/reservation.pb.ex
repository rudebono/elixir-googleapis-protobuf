defmodule Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment.CommitmentPlan do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :COMMITMENT_PLAN_UNSPECIFIED, 0
  field :FLEX, 3
  field :TRIAL, 5
  field :MONTHLY, 2
  field :ANNUAL, 4
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
  field :FAILED, 3
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.Assignment.JobType do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :JOB_TYPE_UNSPECIFIED, 0
  field :PIPELINE, 1
  field :QUERY, 2
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.Assignment.State do
  @moduledoc false
  use Protobuf, enum: true, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :PENDING, 1
  field :ACTIVE, 2
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.Reservation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string
  field :slot_capacity, 2, type: :int64, json_name: "slotCapacity"
  field :ignore_idle_slots, 4, type: :bool, json_name: "ignoreIdleSlots"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :slot_count, 2, type: :int64, json_name: "slotCount"

  field :plan, 3,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment.CommitmentPlan,
    enum: true

  field :state, 4,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment.State,
    enum: true,
    deprecated: false

  field :commitment_end_time, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "commitmentEndTime",
    deprecated: false

  field :failure_status, 7, type: Google.Rpc.Status, json_name: "failureStatus", deprecated: false

  field :renewal_plan, 8,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment.CommitmentPlan,
    json_name: "renewalPlan",
    enum: true
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.CreateReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :reservation_id, 2, type: :string, json_name: "reservationId"
  field :reservation, 3, type: Google.Cloud.Bigquery.Reservation.V1beta1.Reservation
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ListReservationsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ListReservationsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reservations, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.Reservation

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.GetReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.DeleteReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.UpdateReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reservation, 1, type: Google.Cloud.Bigquery.Reservation.V1beta1.Reservation
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.CreateCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :capacity_commitment, 2,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment,
    json_name: "capacityCommitment"

  field :enforce_single_admin_project_per_org, 4,
    type: :bool,
    json_name: "enforceSingleAdminProjectPerOrg"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ListCapacityCommitmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ListCapacityCommitmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :capacity_commitments, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment,
    json_name: "capacityCommitments"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.GetCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.DeleteCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.UpdateCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :capacity_commitment, 1,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment,
    json_name: "capacityCommitment"

  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.SplitCapacityCommitmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :slot_count, 2, type: :int64, json_name: "slotCount"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.SplitCapacityCommitmentResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :first, 1, type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment
  field :second, 2, type: Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.MergeCapacityCommitmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :capacity_commitment_ids, 2,
    repeated: true,
    type: :string,
    json_name: "capacityCommitmentIds"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.Assignment do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :assignee, 4, type: :string

  field :job_type, 3,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.Assignment.JobType,
    json_name: "jobType",
    enum: true

  field :state, 6,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.Assignment.State,
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.CreateAssignmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :assignment, 2, type: Google.Cloud.Bigquery.Reservation.V1beta1.Assignment
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ListAssignmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ListAssignmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :assignments, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.Assignment

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.DeleteAssignmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.SearchAssignmentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string
  field :page_size, 3, type: :int32, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.SearchAssignmentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :assignments, 1,
    repeated: true,
    type: Google.Cloud.Bigquery.Reservation.V1beta1.Assignment

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.MoveAssignmentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :destination_id, 3, type: :string, json_name: "destinationId", deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.BiReservation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :size, 4, type: :int64
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.GetBiReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.UpdateBiReservationRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :reservation, 1, type: Google.Cloud.Bigquery.Reservation.V1beta1.BiReservation
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ReservationService.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.bigquery.reservation.v1beta1.ReservationService",
    protoc_gen_elixir_version: "0.11.0"

  rpc :CreateReservation,
      Google.Cloud.Bigquery.Reservation.V1beta1.CreateReservationRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.Reservation

  rpc :ListReservations,
      Google.Cloud.Bigquery.Reservation.V1beta1.ListReservationsRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.ListReservationsResponse

  rpc :GetReservation,
      Google.Cloud.Bigquery.Reservation.V1beta1.GetReservationRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.Reservation

  rpc :DeleteReservation,
      Google.Cloud.Bigquery.Reservation.V1beta1.DeleteReservationRequest,
      Google.Protobuf.Empty

  rpc :UpdateReservation,
      Google.Cloud.Bigquery.Reservation.V1beta1.UpdateReservationRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.Reservation

  rpc :CreateCapacityCommitment,
      Google.Cloud.Bigquery.Reservation.V1beta1.CreateCapacityCommitmentRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment

  rpc :ListCapacityCommitments,
      Google.Cloud.Bigquery.Reservation.V1beta1.ListCapacityCommitmentsRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.ListCapacityCommitmentsResponse

  rpc :GetCapacityCommitment,
      Google.Cloud.Bigquery.Reservation.V1beta1.GetCapacityCommitmentRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment

  rpc :DeleteCapacityCommitment,
      Google.Cloud.Bigquery.Reservation.V1beta1.DeleteCapacityCommitmentRequest,
      Google.Protobuf.Empty

  rpc :UpdateCapacityCommitment,
      Google.Cloud.Bigquery.Reservation.V1beta1.UpdateCapacityCommitmentRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment

  rpc :SplitCapacityCommitment,
      Google.Cloud.Bigquery.Reservation.V1beta1.SplitCapacityCommitmentRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.SplitCapacityCommitmentResponse

  rpc :MergeCapacityCommitments,
      Google.Cloud.Bigquery.Reservation.V1beta1.MergeCapacityCommitmentsRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.CapacityCommitment

  rpc :CreateAssignment,
      Google.Cloud.Bigquery.Reservation.V1beta1.CreateAssignmentRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.Assignment

  rpc :ListAssignments,
      Google.Cloud.Bigquery.Reservation.V1beta1.ListAssignmentsRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.ListAssignmentsResponse

  rpc :DeleteAssignment,
      Google.Cloud.Bigquery.Reservation.V1beta1.DeleteAssignmentRequest,
      Google.Protobuf.Empty

  rpc :SearchAssignments,
      Google.Cloud.Bigquery.Reservation.V1beta1.SearchAssignmentsRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.SearchAssignmentsResponse

  rpc :MoveAssignment,
      Google.Cloud.Bigquery.Reservation.V1beta1.MoveAssignmentRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.Assignment

  rpc :GetBiReservation,
      Google.Cloud.Bigquery.Reservation.V1beta1.GetBiReservationRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.BiReservation

  rpc :UpdateBiReservation,
      Google.Cloud.Bigquery.Reservation.V1beta1.UpdateBiReservationRequest,
      Google.Cloud.Bigquery.Reservation.V1beta1.BiReservation
end

defmodule Google.Cloud.Bigquery.Reservation.V1beta1.ReservationService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Bigquery.Reservation.V1beta1.ReservationService.Service
end