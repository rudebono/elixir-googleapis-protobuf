defmodule Google.Devtools.Remoteworkers.V1test2.Worker.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Remoteworkers.V1test2.Worker.Config do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Remoteworkers.V1test2.Worker do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :devices, 1, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.Device

  field :properties, 2,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.Worker.Property

  field :configs, 3, repeated: true, type: Google.Devtools.Remoteworkers.V1test2.Worker.Config
end

defmodule Google.Devtools.Remoteworkers.V1test2.Device.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Devtools.Remoteworkers.V1test2.Device do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :handle, 1, type: :string

  field :properties, 2,
    repeated: true,
    type: Google.Devtools.Remoteworkers.V1test2.Device.Property
end