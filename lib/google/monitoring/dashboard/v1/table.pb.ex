defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          time_series_query: Google.Monitoring.Dashboard.V1.TimeSeriesQuery.t() | nil,
          table_template: String.t(),
          min_alignment_period: Google.Protobuf.Duration.t() | nil,
          table_display_options: Google.Monitoring.Dashboard.V1.TableDisplayOptions.t() | nil
        }

  defstruct time_series_query: nil,
            table_template: "",
            min_alignment_period: nil,
            table_display_options: nil

  field :time_series_query, 1,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesQuery,
    json_name: "timeSeriesQuery",
    deprecated: false

  field :table_template, 2, type: :string, json_name: "tableTemplate", deprecated: false

  field :min_alignment_period, 3,
    type: Google.Protobuf.Duration,
    json_name: "minAlignmentPeriod",
    deprecated: false

  field :table_display_options, 4,
    type: Google.Monitoring.Dashboard.V1.TableDisplayOptions,
    json_name: "tableDisplayOptions",
    deprecated: false
end
defmodule Google.Monitoring.Dashboard.V1.TimeSeriesTable do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          data_sets: [Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet.t()]
        }

  defstruct data_sets: []

  field :data_sets, 1,
    repeated: true,
    type: Google.Monitoring.Dashboard.V1.TimeSeriesTable.TableDataSet,
    json_name: "dataSets",
    deprecated: false
end
