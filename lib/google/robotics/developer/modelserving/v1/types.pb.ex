defmodule Google.Robotics.Developer.Modelserving.V1.ContentChunk do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :data, 2, type: :bytes, deprecated: false
end

defmodule Google.Robotics.Developer.Modelserving.V1.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :chunks, 1,
    repeated: true,
    type: Google.Robotics.Developer.Modelserving.V1.ContentChunk,
    deprecated: false
end

defmodule Google.Robotics.Developer.Modelserving.V1.Prompt do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: Google.Robotics.Developer.Modelserving.V1.Content, deprecated: false

  field :extra_inputs, 2,
    type: Google.Robotics.Developer.Modelserving.V1.ExtraInputs,
    json_name: "extraInputs",
    deprecated: false

  field :model_key, 3, type: :string, json_name: "modelKey", deprecated: false
end

defmodule Google.Robotics.Developer.Modelserving.V1.Plan do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :content, 1, type: Google.Robotics.Developer.Modelserving.V1.Content
end