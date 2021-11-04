defmodule Google.Bigtable.Admin.V2.StorageType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :STORAGE_TYPE_UNSPECIFIED | :SSD | :HDD

  field :STORAGE_TYPE_UNSPECIFIED, 0
  field :SSD, 1
  field :HDD, 2
end

defmodule Google.Bigtable.Admin.V2.OperationProgress do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          progress_percent: integer,
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:progress_percent, :start_time, :end_time]

  field :progress_percent, 1, type: :int32, json_name: "progressPercent"
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end
