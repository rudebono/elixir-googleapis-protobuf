defmodule Google.Cloud.Vision.V1p4beta1.FaceRecognitionParams do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :celebrity_set, 1, repeated: true, type: :string, json_name: "celebritySet"
end
defmodule Google.Cloud.Vision.V1p4beta1.Celebrity do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :display_name, 2, type: :string, json_name: "displayName"
  field :description, 3, type: :string
end
defmodule Google.Cloud.Vision.V1p4beta1.FaceRecognitionResult do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :celebrity, 1, type: Google.Cloud.Vision.V1p4beta1.Celebrity
  field :confidence, 2, type: :float
end
