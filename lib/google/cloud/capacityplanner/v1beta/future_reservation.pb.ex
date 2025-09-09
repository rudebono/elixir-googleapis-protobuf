defmodule Google.Cloud.Capacityplanner.V1beta.FutureReservation.Status.ProcurementStatus do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :PROCUREMENT_STATUS_UNSPECIFIED, 0
  field :PENDING_APPROVAL, 1
  field :APPROVED, 2
  field :COMMITTED, 3
  field :DECLINED, 4
  field :CANCELLED, 5
  field :PROCURING, 6
  field :PROVISIONING, 7
  field :FULFILLED, 8
  field :FAILED, 9
  field :FAILED_PARTIALLY_FULFILLED, 10
  field :DRAFTING, 11
  field :PENDING_AMENDMENT_APPROVAL, 12
end

defmodule Google.Cloud.Capacityplanner.V1beta.FutureReservation.SpecificSKUProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :instance_properties, 1,
    type:
      Google.Cloud.Capacityplanner.V1beta.Allocation.SpecificSKUAllocation.AllocatedInstanceProperties,
    json_name: "instanceProperties"

  field :total_count, 2, type: :int64, json_name: "totalCount"
end

defmodule Google.Cloud.Capacityplanner.V1beta.FutureReservation.TimeWindow do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Google.Cloud.Capacityplanner.V1beta.FutureReservation.Status do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :procurement_status, 1,
    type: Google.Cloud.Capacityplanner.V1beta.FutureReservation.Status.ProcurementStatus,
    json_name: "procurementStatus",
    enum: true

  field :lock_time, 2, type: Google.Protobuf.Timestamp, json_name: "lockTime"

  field :auto_created_reservations, 3,
    repeated: true,
    type: :string,
    json_name: "autoCreatedReservations"

  field :fulfilled_count, 4, type: :int64, json_name: "fulfilledCount"
end

defmodule Google.Cloud.Capacityplanner.V1beta.FutureReservation do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :type, 0

  field :specific_sku_properties, 8,
    type: Google.Cloud.Capacityplanner.V1beta.FutureReservation.SpecificSKUProperties,
    json_name: "specificSkuProperties",
    oneof: 0

  field :id, 1, type: :int64
  field :create_time, 2, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :zone, 5, type: :string
  field :description, 6, type: :string
  field :future_reservation, 7, type: :string, json_name: "futureReservation"
  field :owner_project_id, 15, type: :string, json_name: "ownerProjectId"

  field :time_window, 9,
    type: Google.Cloud.Capacityplanner.V1beta.FutureReservation.TimeWindow,
    json_name: "timeWindow"

  field :share_settings, 10,
    type: Google.Cloud.Capacityplanner.V1beta.Allocation.ShareSettings,
    json_name: "shareSettings"

  field :name_prefix, 11, type: :string, json_name: "namePrefix"
  field :status, 12, type: Google.Cloud.Capacityplanner.V1beta.FutureReservation.Status

  field :auto_created_reservations_delete_time, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "autoCreatedReservationsDeleteTime"

  field :auto_delete_auto_created_reservations, 14,
    type: :bool,
    json_name: "autoDeleteAutoCreatedReservations"
end
