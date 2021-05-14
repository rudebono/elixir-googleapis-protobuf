defmodule Google.Identity.Accesscontextmanager.V1.AccessPolicy do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          parent: String.t(),
          title: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil,
          etag: String.t()
        }

  defstruct [:name, :parent, :title, :create_time, :update_time, :etag]

  field :name, 1, type: :string
  field :parent, 2, type: :string
  field :title, 3, type: :string
  field :create_time, 4, type: Google.Protobuf.Timestamp
  field :update_time, 5, type: Google.Protobuf.Timestamp
  field :etag, 6, type: :string
end
