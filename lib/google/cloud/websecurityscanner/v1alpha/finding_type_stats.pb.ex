defmodule Google.Cloud.Websecurityscanner.V1alpha.FindingTypeStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          finding_type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType.t(),
          finding_count: integer
        }

  defstruct finding_type: :FINDING_TYPE_UNSPECIFIED,
            finding_count: 0

  field :finding_type, 1,
    type: Google.Cloud.Websecurityscanner.V1alpha.Finding.FindingType,
    json_name: "findingType",
    enum: true

  field :finding_count, 2, type: :int32, json_name: "findingCount"
end
