defmodule Google.Ai.Generativelanguage.V1.Modality do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :MODALITY_UNSPECIFIED, 0
  field :TEXT, 1
  field :IMAGE, 2
  field :VIDEO, 3
  field :AUDIO, 4
  field :DOCUMENT, 5
end

defmodule Google.Ai.Generativelanguage.V1.Content do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :parts, 1, repeated: true, type: Google.Ai.Generativelanguage.V1.Part
  field :role, 2, type: :string, deprecated: false
end

defmodule Google.Ai.Generativelanguage.V1.Part do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  oneof :data, 0

  field :text, 2, type: :string, oneof: 0

  field :inline_data, 3,
    type: Google.Ai.Generativelanguage.V1.Blob,
    json_name: "inlineData",
    oneof: 0
end

defmodule Google.Ai.Generativelanguage.V1.Blob do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :data, 2, type: :bytes
end

defmodule Google.Ai.Generativelanguage.V1.ModalityTokenCount do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.15.0", syntax: :proto3

  field :modality, 1, type: Google.Ai.Generativelanguage.V1.Modality, enum: true
  field :token_count, 2, type: :int32, json_name: "tokenCount"
end
