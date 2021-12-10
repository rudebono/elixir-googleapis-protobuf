defmodule Google.Devtools.Remoteworkers.V1test2.Worker.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Remoteworkers.V1test2.Worker.Config do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Remoteworkers.V1test2.Worker do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          devices: [Google.Devtools.Remoteworkers.V1test2.Device.t()],
          properties: [Google.Devtools.Remoteworkers.V1test2.Worker.Property.t()],
          configs: [Google.Devtools.Remoteworkers.V1test2.Worker.Config.t()]
        }

  defstruct devices: [],
            properties: [],
            configs: []

  field :devices, 1, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.Device

  field :properties, 2,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.Worker.Property

  field :configs, 3, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.Worker.Config
end
defmodule Google.Devtools.Remoteworkers.V1test2.Device.Property do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value: String.t()
        }

  defstruct key: "",
            value: ""

  field :key, 1, type: :string
  field :value, 2, type: :string
end
defmodule Google.Devtools.Remoteworkers.V1test2.Device do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          handle: String.t(),
          properties: [Google.Devtools.Remoteworkers.V1test2.Device.Property.t()]
        }

  defstruct handle: "",
            properties: []

  field :handle, 1, type: :string

  field :properties, 2,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.Device.Property
end
