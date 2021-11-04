defmodule Google.Apps.Drive.Activity.V2.TimeRange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          start_time: Google.Protobuf.Timestamp.t() | nil,
          end_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:start_time, :end_time]

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.Group do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          email: String.t(),
          title: String.t()
        }

  defstruct [:email, :title]

  field :email, 1, type: :string
  field :title, 2, type: :string

  def transform_module(), do: nil
end

defmodule Google.Apps.Drive.Activity.V2.Domain do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          legacy_id: String.t()
        }

  defstruct [:name, :legacy_id]

  field :name, 1, type: :string
  field :legacy_id, 3, type: :string, json_name: "legacyId"

  def transform_module(), do: nil
end
