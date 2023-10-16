defmodule Google.Robotics.Developer.Modelserving.V1.Tensor do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :values, 1, repeated: true, type: :float
end

defmodule Google.Robotics.Developer.Modelserving.V1.ExtraInputs.ItemsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule Google.Robotics.Developer.Modelserving.V1.ExtraInputs.TensorsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Robotics.Developer.Modelserving.V1.Tensor
end

defmodule Google.Robotics.Developer.Modelserving.V1.ExtraInputs.StringsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Robotics.Developer.Modelserving.V1.ExtraInputs do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :items, 1,
    repeated: true,
    type: Google.Robotics.Developer.Modelserving.V1.ExtraInputs.ItemsEntry,
    map: true

  field :tensors, 2,
    repeated: true,
    type: Google.Robotics.Developer.Modelserving.V1.ExtraInputs.TensorsEntry,
    map: true

  field :strings, 3,
    repeated: true,
    type: Google.Robotics.Developer.Modelserving.V1.ExtraInputs.StringsEntry,
    map: true
end