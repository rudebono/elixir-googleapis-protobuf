defmodule Google.Type.PhoneNumber.ShortCode do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          region_code: String.t(),
          number: String.t()
        }

  defstruct [:region_code, :number]

  field :region_code, 1, type: :string
  field :number, 2, type: :string
end

defmodule Google.Type.PhoneNumber do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          kind: {atom, any},
          extension: String.t()
        }

  defstruct [:kind, :extension]

  oneof :kind, 0
  field :e164_number, 1, type: :string, oneof: 0
  field :short_code, 2, type: Google.Type.PhoneNumber.ShortCode, oneof: 0
  field :extension, 3, type: :string
end
