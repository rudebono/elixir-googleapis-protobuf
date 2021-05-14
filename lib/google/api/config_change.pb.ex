defmodule Google.Api.ChangeType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :CHANGE_TYPE_UNSPECIFIED | :ADDED | :REMOVED | :MODIFIED

  field :CHANGE_TYPE_UNSPECIFIED, 0

  field :ADDED, 1

  field :REMOVED, 2

  field :MODIFIED, 3
end

defmodule Google.Api.ConfigChange do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          element: String.t(),
          old_value: String.t(),
          new_value: String.t(),
          change_type: Google.Api.ChangeType.t(),
          advices: [Google.Api.Advice.t()]
        }

  defstruct [:element, :old_value, :new_value, :change_type, :advices]

  field :element, 1, type: :string
  field :old_value, 2, type: :string
  field :new_value, 3, type: :string
  field :change_type, 4, type: Google.Api.ChangeType, enum: true
  field :advices, 5, repeated: true, type: Google.Api.Advice
end

defmodule Google.Api.Advice do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          description: String.t()
        }

  defstruct [:description]

  field :description, 2, type: :string
end
