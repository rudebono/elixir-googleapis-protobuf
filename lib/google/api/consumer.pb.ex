defmodule Google.Api.Property.PropertyType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :UNSPECIFIED, 0
  field :INT64, 1
  field :BOOL, 2
  field :STRING, 3
  field :DOUBLE, 4
end

defmodule Google.Api.ProjectProperties do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :properties, 1, repeated: true, type: Google.Api.Property
end

defmodule Google.Api.Property do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Google.Api.Property.PropertyType, enum: true
  field :description, 3, type: :string
end
