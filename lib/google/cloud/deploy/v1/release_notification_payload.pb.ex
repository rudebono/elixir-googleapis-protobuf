defmodule Google.Cloud.Deploy.V1.ReleaseNotificationEvent do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          message: String.t(),
          release: String.t(),
          type: Google.Cloud.Deploy.V1.Type.t()
        }

  defstruct message: "",
            release: "",
            type: :TYPE_UNSPECIFIED

  field :message, 1, type: :string
  field :release, 2, type: :string
  field :type, 3, type: Google.Cloud.Deploy.V1.Type, enum: true
end
