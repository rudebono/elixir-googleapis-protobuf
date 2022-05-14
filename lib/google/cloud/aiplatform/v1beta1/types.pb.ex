defmodule Google.Cloud.Aiplatform.V1beta1.BoolArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :values, 1, repeated: true, type: :bool
end
defmodule Google.Cloud.Aiplatform.V1beta1.DoubleArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :values, 1, repeated: true, type: :double
end
defmodule Google.Cloud.Aiplatform.V1beta1.Int64Array do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :values, 1, repeated: true, type: :int64
end
defmodule Google.Cloud.Aiplatform.V1beta1.StringArray do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :values, 1, repeated: true, type: :string
end
