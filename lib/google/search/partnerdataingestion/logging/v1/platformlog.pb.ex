defmodule Google.Search.Partnerdataingestion.Logging.V1.IngestDetailsLog do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ingestion_tracking_id: String.t(),
          content: String.t()
        }

  defstruct [:ingestion_tracking_id, :content]

  field :ingestion_tracking_id, 1, type: :string
  field :content, 2, type: :string
end
