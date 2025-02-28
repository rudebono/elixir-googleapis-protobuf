defmodule Google.Cloud.Financialservices.V1.BacktestResult.State do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :CREATING, 1
  field :ACTIVE, 2
  field :UPDATING, 3
  field :DELETING, 4
end

defmodule Google.Cloud.Financialservices.V1.BacktestResult.PerformanceTarget do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :party_investigations_per_period_hint, 1,
    type: :int64,
    json_name: "partyInvestigationsPerPeriodHint",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.BacktestResult.LabelsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Financialservices.V1.BacktestResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :create_time, 2,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :update_time, 3,
    type: Google.Protobuf.Timestamp,
    json_name: "updateTime",
    deprecated: false

  field :labels, 4,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.BacktestResult.LabelsEntry,
    map: true

  field :state, 5,
    type: Google.Cloud.Financialservices.V1.BacktestResult.State,
    enum: true,
    deprecated: false

  field :dataset, 6, type: :string, deprecated: false
  field :model, 7, type: :string, deprecated: false
  field :end_time, 9, type: Google.Protobuf.Timestamp, json_name: "endTime", deprecated: false
  field :backtest_periods, 10, type: :int32, json_name: "backtestPeriods"

  field :performance_target, 11,
    type: Google.Cloud.Financialservices.V1.BacktestResult.PerformanceTarget,
    json_name: "performanceTarget",
    deprecated: false

  field :line_of_business, 12,
    type: Google.Cloud.Financialservices.V1.LineOfBusiness,
    json_name: "lineOfBusiness",
    enum: true,
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ListBacktestResultsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
  field :filter, 4, type: :string
  field :order_by, 5, type: :string, json_name: "orderBy"
end

defmodule Google.Cloud.Financialservices.V1.ListBacktestResultsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backtest_results, 1,
    repeated: true,
    type: Google.Cloud.Financialservices.V1.BacktestResult,
    json_name: "backtestResults"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
  field :unreachable, 3, repeated: true, type: :string
end

defmodule Google.Cloud.Financialservices.V1.GetBacktestResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.CreateBacktestResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :backtest_result_id, 2, type: :string, json_name: "backtestResultId", deprecated: false

  field :backtest_result, 3,
    type: Google.Cloud.Financialservices.V1.BacktestResult,
    json_name: "backtestResult",
    deprecated: false

  field :request_id, 4, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.UpdateBacktestResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :update_mask, 1,
    type: Google.Protobuf.FieldMask,
    json_name: "updateMask",
    deprecated: false

  field :backtest_result, 2,
    type: Google.Cloud.Financialservices.V1.BacktestResult,
    json_name: "backtestResult",
    deprecated: false

  field :request_id, 3, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.DeleteBacktestResultRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :request_id, 2, type: :string, json_name: "requestId", deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportBacktestResultMetadataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :backtest_result, 1, type: :string, json_name: "backtestResult", deprecated: false

  field :structured_metadata_destination, 2,
    type: Google.Cloud.Financialservices.V1.BigQueryDestination,
    json_name: "structuredMetadataDestination",
    deprecated: false
end

defmodule Google.Cloud.Financialservices.V1.ExportBacktestResultMetadataResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end
