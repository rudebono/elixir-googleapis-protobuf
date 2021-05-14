defmodule Google.Monitoring.Dashboard.V1.Widget do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: {atom, any},
          title: String.t()
        }

  defstruct [:content, :title]

  oneof :content, 0
  field :title, 1, type: :string
  field :xy_chart, 2, type: Google.Monitoring.Dashboard.V1.XyChart, oneof: 0
  field :scorecard, 3, type: Google.Monitoring.Dashboard.V1.Scorecard, oneof: 0
  field :text, 4, type: Google.Monitoring.Dashboard.V1.Text, oneof: 0
  field :blank, 5, type: Google.Protobuf.Empty, oneof: 0
end
