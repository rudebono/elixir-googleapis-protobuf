defmodule Google.Devtools.Resultstore.V2.TargetType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TARGET_TYPE_UNSPECIFIED, 0
  field :APPLICATION, 1
  field :BINARY, 2
  field :LIBRARY, 3
  field :PACKAGE, 4
  field :TEST, 5
end

defmodule Google.Devtools.Resultstore.V2.TestSize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TEST_SIZE_UNSPECIFIED, 0
  field :SMALL, 1
  field :MEDIUM, 2
  field :LARGE, 3
  field :ENORMOUS, 4
  field :OTHER_SIZE, 5
end

defmodule Google.Devtools.Resultstore.V2.Target.Id do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :invocation_id, 1, type: :string, json_name: "invocationId"
  field :target_id, 2, type: :string, json_name: "targetId"
end

defmodule Google.Devtools.Resultstore.V2.Target do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: Google.Devtools.Resultstore.V2.Target.Id

  field :status_attributes, 3,
    type: Google.Devtools.Resultstore.V2.StatusAttributes,
    json_name: "statusAttributes",
    deprecated: true

  field :timing, 4, type: Google.Devtools.Resultstore.V2.Timing

  field :target_attributes, 5,
    type: Google.Devtools.Resultstore.V2.TargetAttributes,
    json_name: "targetAttributes"

  field :test_attributes, 6,
    type: Google.Devtools.Resultstore.V2.TestAttributes,
    json_name: "testAttributes"

  field :properties, 7, repeated: true, type: Google.Devtools.Resultstore.V2.Property
  field :files, 8, repeated: true, type: Google.Devtools.Resultstore.V2.File
  field :visible, 10, type: :bool
end

defmodule Google.Devtools.Resultstore.V2.TargetAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :type, 1, type: Google.Devtools.Resultstore.V2.TargetType, enum: true
  field :language, 2, type: Google.Devtools.Resultstore.V2.Language, enum: true
  field :tags, 3, repeated: true, type: :string
end

defmodule Google.Devtools.Resultstore.V2.TestAttributes do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :size, 1, type: Google.Devtools.Resultstore.V2.TestSize, enum: true
end