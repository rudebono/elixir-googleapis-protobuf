defmodule Google.Cloud.Websecurityscanner.V1.FindingTypeStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding_type: String.t(),
          finding_count: integer
        }

  defstruct finding_type: "",
            finding_count: 0

  field :finding_type, 1, type: :string, json_name: "findingType"
  field :finding_count, 2, type: :int32, json_name: "findingCount"
end
