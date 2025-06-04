defmodule Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ModType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :MOD_TYPE_UNSPECIFIED, 0
  field :INSERT, 10
  field :UPDATE, 20
  field :DELETE, 30
end

defmodule Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ValueCaptureType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :VALUE_CAPTURE_TYPE_UNSPECIFIED, 0
  field :OLD_AND_NEW_VALUES, 10
  field :NEW_VALUES, 20
  field :NEW_ROW, 30
  field :NEW_ROW_AND_OLD_VALUES, 40
end

defmodule Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ColumnMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Spanner.V1.Type
  field :is_primary_key, 3, type: :bool, json_name: "isPrimaryKey"
  field :ordinal_position, 4, type: :int64, json_name: "ordinalPosition"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ModValue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :column_metadata_index, 1, type: :int32, json_name: "columnMetadataIndex"
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.Mod do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :keys, 1,
    repeated: true,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ModValue

  field :old_values, 2,
    repeated: true,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ModValue,
    json_name: "oldValues"

  field :new_values, 3,
    repeated: true,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ModValue,
    json_name: "newValues"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :commit_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "commitTimestamp"
  field :record_sequence, 2, type: :string, json_name: "recordSequence"
  field :server_transaction_id, 3, type: :string, json_name: "serverTransactionId"

  field :is_last_record_in_transaction_in_partition, 4,
    type: :bool,
    json_name: "isLastRecordInTransactionInPartition"

  field :table, 5, type: :string

  field :column_metadata, 6,
    repeated: true,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ColumnMetadata,
    json_name: "columnMetadata"

  field :mods, 7, repeated: true, type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.Mod

  field :mod_type, 8,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ModType,
    json_name: "modType",
    enum: true

  field :value_capture_type, 9,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord.ValueCaptureType,
    json_name: "valueCaptureType",
    enum: true

  field :number_of_records_in_transaction, 10,
    type: :int32,
    json_name: "numberOfRecordsInTransaction"

  field :number_of_partitions_in_transaction, 11,
    type: :int32,
    json_name: "numberOfPartitionsInTransaction"

  field :transaction_tag, 12, type: :string, json_name: "transactionTag"
  field :is_system_transaction, 13, type: :bool, json_name: "isSystemTransaction"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.HeartbeatRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :timestamp, 1, type: Google.Protobuf.Timestamp
end

defmodule Google.Spanner.V1.ChangeStreamRecord.PartitionStartRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :start_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "startTimestamp"
  field :record_sequence, 2, type: :string, json_name: "recordSequence"
  field :partition_tokens, 3, repeated: true, type: :string, json_name: "partitionTokens"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.PartitionEndRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :end_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "endTimestamp"
  field :record_sequence, 2, type: :string, json_name: "recordSequence"
  field :partition_token, 3, type: :string, json_name: "partitionToken"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.PartitionEventRecord.MoveInEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :source_partition_token, 1, type: :string, json_name: "sourcePartitionToken"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.PartitionEventRecord.MoveOutEvent do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :destination_partition_token, 1, type: :string, json_name: "destinationPartitionToken"
end

defmodule Google.Spanner.V1.ChangeStreamRecord.PartitionEventRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :commit_timestamp, 1, type: Google.Protobuf.Timestamp, json_name: "commitTimestamp"
  field :record_sequence, 2, type: :string, json_name: "recordSequence"
  field :partition_token, 3, type: :string, json_name: "partitionToken"

  field :move_in_events, 4,
    repeated: true,
    type: Google.Spanner.V1.ChangeStreamRecord.PartitionEventRecord.MoveInEvent,
    json_name: "moveInEvents"

  field :move_out_events, 5,
    repeated: true,
    type: Google.Spanner.V1.ChangeStreamRecord.PartitionEventRecord.MoveOutEvent,
    json_name: "moveOutEvents"
end

defmodule Google.Spanner.V1.ChangeStreamRecord do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :record, 0

  field :data_change_record, 1,
    type: Google.Spanner.V1.ChangeStreamRecord.DataChangeRecord,
    json_name: "dataChangeRecord",
    oneof: 0

  field :heartbeat_record, 2,
    type: Google.Spanner.V1.ChangeStreamRecord.HeartbeatRecord,
    json_name: "heartbeatRecord",
    oneof: 0

  field :partition_start_record, 3,
    type: Google.Spanner.V1.ChangeStreamRecord.PartitionStartRecord,
    json_name: "partitionStartRecord",
    oneof: 0

  field :partition_end_record, 4,
    type: Google.Spanner.V1.ChangeStreamRecord.PartitionEndRecord,
    json_name: "partitionEndRecord",
    oneof: 0

  field :partition_event_record, 5,
    type: Google.Spanner.V1.ChangeStreamRecord.PartitionEventRecord,
    json_name: "partitionEventRecord",
    oneof: 0
end
