defmodule Google.Cloud.Securitycenter.Settings.V1beta1.SinkSettings do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          logging_sink_project: String.t()
        }

  defstruct logging_sink_project: ""

  field :logging_sink_project, 1, type: :string, json_name: "loggingSinkProject"
end
