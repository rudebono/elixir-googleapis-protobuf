defmodule Google.Cloud.Aiplatform.V1beta1.CompletionStats do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          successful_count: integer,
          failed_count: integer,
          incomplete_count: integer
        }

  defstruct [:successful_count, :failed_count, :incomplete_count]

  field :successful_count, 1, type: :int64
  field :failed_count, 2, type: :int64
  field :incomplete_count, 3, type: :int64
end
