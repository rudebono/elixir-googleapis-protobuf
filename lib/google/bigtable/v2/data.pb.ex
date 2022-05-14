defmodule Google.Bigtable.V2.Row do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :key, 1, type: :bytes
  field :families, 2, repeated: true, type: Google.Bigtable.V2.Family
end
defmodule Google.Bigtable.V2.Family do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :columns, 2, repeated: true, type: Google.Bigtable.V2.Column
end
defmodule Google.Bigtable.V2.Column do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :qualifier, 1, type: :bytes
  field :cells, 2, repeated: true, type: Google.Bigtable.V2.Cell
end
defmodule Google.Bigtable.V2.Cell do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :timestamp_micros, 1, type: :int64, json_name: "timestampMicros"
  field :value, 2, type: :bytes
  field :labels, 3, repeated: true, type: :string
end
defmodule Google.Bigtable.V2.RowRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :start_key, 0
  oneof :end_key, 1

  field :start_key_closed, 1, type: :bytes, json_name: "startKeyClosed", oneof: 0
  field :start_key_open, 2, type: :bytes, json_name: "startKeyOpen", oneof: 0
  field :end_key_open, 3, type: :bytes, json_name: "endKeyOpen", oneof: 1
  field :end_key_closed, 4, type: :bytes, json_name: "endKeyClosed", oneof: 1
end
defmodule Google.Bigtable.V2.RowSet do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :row_keys, 1, repeated: true, type: :bytes, json_name: "rowKeys"
  field :row_ranges, 2, repeated: true, type: Google.Bigtable.V2.RowRange, json_name: "rowRanges"
end
defmodule Google.Bigtable.V2.ColumnRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :start_qualifier, 0
  oneof :end_qualifier, 1

  field :family_name, 1, type: :string, json_name: "familyName"
  field :start_qualifier_closed, 2, type: :bytes, json_name: "startQualifierClosed", oneof: 0
  field :start_qualifier_open, 3, type: :bytes, json_name: "startQualifierOpen", oneof: 0
  field :end_qualifier_closed, 4, type: :bytes, json_name: "endQualifierClosed", oneof: 1
  field :end_qualifier_open, 5, type: :bytes, json_name: "endQualifierOpen", oneof: 1
end
defmodule Google.Bigtable.V2.TimestampRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :start_timestamp_micros, 1, type: :int64, json_name: "startTimestampMicros"
  field :end_timestamp_micros, 2, type: :int64, json_name: "endTimestampMicros"
end
defmodule Google.Bigtable.V2.ValueRange do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :start_value, 0
  oneof :end_value, 1

  field :start_value_closed, 1, type: :bytes, json_name: "startValueClosed", oneof: 0
  field :start_value_open, 2, type: :bytes, json_name: "startValueOpen", oneof: 0
  field :end_value_closed, 3, type: :bytes, json_name: "endValueClosed", oneof: 1
  field :end_value_open, 4, type: :bytes, json_name: "endValueOpen", oneof: 1
end
defmodule Google.Bigtable.V2.RowFilter.Chain do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :filters, 1, repeated: true, type: Google.Bigtable.V2.RowFilter
end
defmodule Google.Bigtable.V2.RowFilter.Interleave do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :filters, 1, repeated: true, type: Google.Bigtable.V2.RowFilter
end
defmodule Google.Bigtable.V2.RowFilter.Condition do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :predicate_filter, 1, type: Google.Bigtable.V2.RowFilter, json_name: "predicateFilter"
  field :true_filter, 2, type: Google.Bigtable.V2.RowFilter, json_name: "trueFilter"
  field :false_filter, 3, type: Google.Bigtable.V2.RowFilter, json_name: "falseFilter"
end
defmodule Google.Bigtable.V2.RowFilter do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :filter, 0

  field :chain, 1, type: Google.Bigtable.V2.RowFilter.Chain, oneof: 0
  field :interleave, 2, type: Google.Bigtable.V2.RowFilter.Interleave, oneof: 0
  field :condition, 3, type: Google.Bigtable.V2.RowFilter.Condition, oneof: 0
  field :sink, 16, type: :bool, oneof: 0
  field :pass_all_filter, 17, type: :bool, json_name: "passAllFilter", oneof: 0
  field :block_all_filter, 18, type: :bool, json_name: "blockAllFilter", oneof: 0
  field :row_key_regex_filter, 4, type: :bytes, json_name: "rowKeyRegexFilter", oneof: 0
  field :row_sample_filter, 14, type: :double, json_name: "rowSampleFilter", oneof: 0
  field :family_name_regex_filter, 5, type: :string, json_name: "familyNameRegexFilter", oneof: 0

  field :column_qualifier_regex_filter, 6,
    type: :bytes,
    json_name: "columnQualifierRegexFilter",
    oneof: 0

  field :column_range_filter, 7,
    type: Google.Bigtable.V2.ColumnRange,
    json_name: "columnRangeFilter",
    oneof: 0

  field :timestamp_range_filter, 8,
    type: Google.Bigtable.V2.TimestampRange,
    json_name: "timestampRangeFilter",
    oneof: 0

  field :value_regex_filter, 9, type: :bytes, json_name: "valueRegexFilter", oneof: 0

  field :value_range_filter, 15,
    type: Google.Bigtable.V2.ValueRange,
    json_name: "valueRangeFilter",
    oneof: 0

  field :cells_per_row_offset_filter, 10,
    type: :int32,
    json_name: "cellsPerRowOffsetFilter",
    oneof: 0

  field :cells_per_row_limit_filter, 11,
    type: :int32,
    json_name: "cellsPerRowLimitFilter",
    oneof: 0

  field :cells_per_column_limit_filter, 12,
    type: :int32,
    json_name: "cellsPerColumnLimitFilter",
    oneof: 0

  field :strip_value_transformer, 13, type: :bool, json_name: "stripValueTransformer", oneof: 0
  field :apply_label_transformer, 19, type: :string, json_name: "applyLabelTransformer", oneof: 0
end
defmodule Google.Bigtable.V2.Mutation.SetCell do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :family_name, 1, type: :string, json_name: "familyName"
  field :column_qualifier, 2, type: :bytes, json_name: "columnQualifier"
  field :timestamp_micros, 3, type: :int64, json_name: "timestampMicros"
  field :value, 4, type: :bytes
end
defmodule Google.Bigtable.V2.Mutation.DeleteFromColumn do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :family_name, 1, type: :string, json_name: "familyName"
  field :column_qualifier, 2, type: :bytes, json_name: "columnQualifier"
  field :time_range, 3, type: Google.Bigtable.V2.TimestampRange, json_name: "timeRange"
end
defmodule Google.Bigtable.V2.Mutation.DeleteFromFamily do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :family_name, 1, type: :string, json_name: "familyName"
end
defmodule Google.Bigtable.V2.Mutation.DeleteFromRow do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Bigtable.V2.Mutation do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :mutation, 0

  field :set_cell, 1, type: Google.Bigtable.V2.Mutation.SetCell, json_name: "setCell", oneof: 0

  field :delete_from_column, 2,
    type: Google.Bigtable.V2.Mutation.DeleteFromColumn,
    json_name: "deleteFromColumn",
    oneof: 0

  field :delete_from_family, 3,
    type: Google.Bigtable.V2.Mutation.DeleteFromFamily,
    json_name: "deleteFromFamily",
    oneof: 0

  field :delete_from_row, 4,
    type: Google.Bigtable.V2.Mutation.DeleteFromRow,
    json_name: "deleteFromRow",
    oneof: 0
end
defmodule Google.Bigtable.V2.ReadModifyWriteRule do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :rule, 0

  field :family_name, 1, type: :string, json_name: "familyName"
  field :column_qualifier, 2, type: :bytes, json_name: "columnQualifier"
  field :append_value, 3, type: :bytes, json_name: "appendValue", oneof: 0
  field :increment_amount, 4, type: :int64, json_name: "incrementAmount", oneof: 0
end
