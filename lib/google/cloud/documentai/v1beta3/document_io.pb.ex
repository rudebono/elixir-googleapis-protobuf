defmodule Google.Cloud.Documentai.V1beta3.RawDocument do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Documentai.V1beta3.GcsDocument do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end

defmodule Google.Cloud.Documentai.V1beta3.GcsDocuments do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :documents, 1, repeated: true, type: Google.Cloud.Documentai.V1beta3.GcsDocument
end

defmodule Google.Cloud.Documentai.V1beta3.GcsPrefix do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_uri_prefix, 1, type: :string, json_name: "gcsUriPrefix"
end

defmodule Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :source, 0

  field :gcs_prefix, 1,
    type: Google.Cloud.Documentai.V1beta3.GcsPrefix,
    json_name: "gcsPrefix",
    oneof: 0

  field :gcs_documents, 2,
    type: Google.Cloud.Documentai.V1beta3.GcsDocuments,
    json_name: "gcsDocuments",
    oneof: 0
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :field_mask, 2, type: Google.Protobuf.FieldMask, json_name: "fieldMask"
end

defmodule Google.Cloud.Documentai.V1beta3.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.11.0", syntax: :proto3

  oneof :destination, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0
end