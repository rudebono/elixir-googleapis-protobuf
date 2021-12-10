defmodule Google.Cloud.Aiplatform.V1beta1.CompletionStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          successful_count: integer,
          failed_count: integer,
          incomplete_count: integer
        }

  defstruct successful_count: 0,
            failed_count: 0,
            incomplete_count: 0

  field :successful_count, 1, type: :int64, json_name: "successfulCount", deprecated: false
  field :failed_count, 2, type: :int64, json_name: "failedCount", deprecated: false
  field :incomplete_count, 3, type: :int64, json_name: "incompleteCount", deprecated: false
end
