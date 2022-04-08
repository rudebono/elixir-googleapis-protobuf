defmodule Google.Monitoring.Dashboard.V1.TableDisplayOptions do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          shown_columns: [String.t()]
        }

  defstruct shown_columns: []

  field :shown_columns, 1,
    repeated: true,
    type: :string,
    json_name: "shownColumns",
    deprecated: false
end
