defmodule Google.Monitoring.Dashboard.V1.Text.Format do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :FORMAT_UNSPECIFIED | :MARKDOWN | :RAW

  field :FORMAT_UNSPECIFIED, 0

  field :MARKDOWN, 1

  field :RAW, 2
end

defmodule Google.Monitoring.Dashboard.V1.Text do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: String.t(),
          format: Google.Monitoring.Dashboard.V1.Text.Format.t()
        }

  defstruct [:content, :format]

  field :content, 1, type: :string
  field :format, 2, type: Google.Monitoring.Dashboard.V1.Text.Format, enum: true
end
