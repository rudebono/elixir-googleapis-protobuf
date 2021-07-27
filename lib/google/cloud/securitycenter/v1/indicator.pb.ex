defmodule Google.Cloud.Securitycenter.V1.Indicator do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          ip_addresses: [String.t()],
          domains: [String.t()]
        }

  defstruct [:ip_addresses, :domains]

  field :ip_addresses, 1, repeated: true, type: :string
  field :domains, 2, repeated: true, type: :string
end
