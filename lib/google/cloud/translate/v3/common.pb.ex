defmodule Google.Cloud.Translation.V3.OperationState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :OPERATION_STATE_UNSPECIFIED, 0
  field :OPERATION_STATE_RUNNING, 1
  field :OPERATION_STATE_SUCCEEDED, 2
  field :OPERATION_STATE_FAILED, 3
  field :OPERATION_STATE_CANCELLING, 4
  field :OPERATION_STATE_CANCELLED, 5
end

defmodule Google.Cloud.Translation.V3.GcsInputSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :input_uri, 1, type: :string, json_name: "inputUri", deprecated: false
end

defmodule Google.Cloud.Translation.V3.FileInputSource do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType", deprecated: false
  field :content, 2, type: :bytes, deprecated: false
  field :display_name, 3, type: :string, json_name: "displayName", deprecated: false
end

defmodule Google.Cloud.Translation.V3.GcsOutputDestination do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :output_uri_prefix, 1, type: :string, json_name: "outputUriPrefix", deprecated: false
end

defmodule Google.Cloud.Translation.V3.GlossaryEntry.GlossaryTermsPair do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :source_term, 1, type: Google.Cloud.Translation.V3.GlossaryTerm, json_name: "sourceTerm"
  field :target_term, 2, type: Google.Cloud.Translation.V3.GlossaryTerm, json_name: "targetTerm"
end

defmodule Google.Cloud.Translation.V3.GlossaryEntry.GlossaryTermsSet do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :terms, 1, repeated: true, type: Google.Cloud.Translation.V3.GlossaryTerm
end

defmodule Google.Cloud.Translation.V3.GlossaryEntry do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  oneof :data, 0

  field :name, 1, type: :string, deprecated: false

  field :terms_pair, 2,
    type: Google.Cloud.Translation.V3.GlossaryEntry.GlossaryTermsPair,
    json_name: "termsPair",
    oneof: 0

  field :terms_set, 3,
    type: Google.Cloud.Translation.V3.GlossaryEntry.GlossaryTermsSet,
    json_name: "termsSet",
    oneof: 0

  field :description, 4, type: :string
end

defmodule Google.Cloud.Translation.V3.GlossaryTerm do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.0", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode"
  field :text, 2, type: :string
end
