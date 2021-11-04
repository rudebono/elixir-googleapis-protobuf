defmodule Google.Cloud.Websecurityscanner.V1alpha.FindingTypeStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding_type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType.t(),
          finding_count: integer
        }

  defstruct [:finding_type, :finding_count]

  field :finding_type, 1,
    type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType,
    enum: true,
    json_name: "findingType"

  field :finding_count, 2, type: :int32, json_name: "findingCount"

  def transform_module(), do: nil
end
