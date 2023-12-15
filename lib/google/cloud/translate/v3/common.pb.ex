defmodule Google.Cloud.Translation.V3.GcsInputSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri", deprecated: false
end

defmodule Google.Cloud.Translation.V3.FileInputSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :content, 2, type: :bytes, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Translation.V3.GcsOutputDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end