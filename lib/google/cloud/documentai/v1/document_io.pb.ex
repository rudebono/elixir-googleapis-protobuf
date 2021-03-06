defmodule Google.Cloud.Documentai.V1.RawDocument do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Documentai.V1.GcsDocument do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Documentai.V1.GcsDocuments do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Documentai.V1.GcsDocument
end
defmodule Google.Cloud.Documentai.V1.GcsPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_uri_prefix, 1, type: :string, json_name: "gcsUriPrefix"
end
defmodule Google.Cloud.Documentai.V1.BatchDocumentsInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :source, 0

  field :gcs_prefix, 1,
    type: Google.Cloud.Documentai.V1.GcsPrefix,
    json_name: "gcsPrefix",
    oneof: 0

  field :gcs_documents, 2,
    type: Google.Cloud.Documentai.V1.GcsDocuments,
    json_name: "gcsDocuments",
    oneof: 0
end
defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
end
defmodule Google.Cloud.Documentai.V1.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Documentai.V1.DocumentOutputConfig.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0
end
