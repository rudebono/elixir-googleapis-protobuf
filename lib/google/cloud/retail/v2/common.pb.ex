defmodule Google.Cloud.Retail.V2.CustomAttribute do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          text: [String.t()],
          numbers: [float | :infinity | :negative_infinity | :nan]
        }

  defstruct [:text, :numbers]

  field :text, 1, repeated: true, type: :string
  field :numbers, 2, repeated: true, type: :double
end

defmodule Google.Cloud.Retail.V2.Image do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t(),
          height: integer,
          width: integer
        }

  defstruct [:uri, :height, :width]

  field :uri, 1, type: :string
  field :height, 2, type: :int32
  field :width, 3, type: :int32
end

defmodule Google.Cloud.Retail.V2.PriceInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          currency_code: String.t(),
          price: float | :infinity | :negative_infinity | :nan,
          original_price: float | :infinity | :negative_infinity | :nan,
          cost: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:currency_code, :price, :original_price, :cost]

  field :currency_code, 1, type: :string
  field :price, 2, type: :float
  field :original_price, 3, type: :float
  field :cost, 4, type: :float
end

defmodule Google.Cloud.Retail.V2.UserInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          user_id: String.t(),
          ip_address: String.t(),
          user_agent: String.t(),
          direct_user_request: boolean
        }

  defstruct [:user_id, :ip_address, :user_agent, :direct_user_request]

  field :user_id, 1, type: :string
  field :ip_address, 2, type: :string
  field :user_agent, 3, type: :string
  field :direct_user_request, 4, type: :bool
end
