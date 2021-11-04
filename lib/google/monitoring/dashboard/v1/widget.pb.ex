defmodule Google.Monitoring.Dashboard.V1.Widget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content:
            {:xy_chart, Google.Monitoring.Dashboard.V1.XyChart.t() | nil}
            | {:scorecard, Google.Monitoring.Dashboard.V1.Scorecard.t() | nil}
            | {:text, Google.Monitoring.Dashboard.V1.Text.t() | nil}
            | {:blank, Google.Protobuf.Empty.t() | nil}
            | {:alert_chart, Google.Monitoring.Dashboard.V1.AlertChart.t() | nil},
          title: String.t()
        }

  defstruct [:content, :title]

  oneof :content, 0

  field :title, 1, type: :string
  field :xy_chart, 2, type: Google.Monitoring.Dashboard.V1.XyChart, json_name: "xyChart", oneof: 0
  field :scorecard, 3, type: Google.Monitoring.Dashboard.V1.Scorecard, oneof: 0
  field :text, 4, type: Google.Monitoring.Dashboard.V1.Text, oneof: 0
  field :blank, 5, type: Google.Protobuf.Empty, oneof: 0

  field :alert_chart, 7,
    type: Google.Monitoring.Dashboard.V1.AlertChart,
    json_name: "alertChart",
    oneof: 0

  def transform_module(), do: nil
end
