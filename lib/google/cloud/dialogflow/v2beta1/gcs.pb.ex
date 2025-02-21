defmodule Google.Cloud.Dialogflow.V2beta1.GcsSources do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uris, 2, repeated: true, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2beta1.GcsSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Dialogflow.V2beta1.GcsDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :uri, 1, type: :string
end
