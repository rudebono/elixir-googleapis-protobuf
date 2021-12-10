defmodule Google.Cloud.Documentai.V1beta3.RawDocument do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          content: binary,
          mime_type: String.t()
        }

  defstruct content: "",
            mime_type: ""

  field :content, 1, type: :bytes
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Documentai.V1beta3.GcsDocument do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t(),
          mime_type: String.t()
        }

  defstruct gcs_uri: "",
            mime_type: ""

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
  field :mime_type, 2, type: :string, json_name: "mimeType"
end
defmodule Google.Cloud.Documentai.V1beta3.GcsDocuments do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          documents: [Google.Cloud.Documentai.V1beta3.GcsDocument.t()]
        }

  defstruct documents: []

  field :documents, 1, repeated: true, type: Google.Cloud.Documentai.V1beta3.GcsDocument
end
defmodule Google.Cloud.Documentai.V1beta3.GcsPrefix do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri_prefix: String.t()
        }

  defstruct gcs_uri_prefix: ""

  field :gcs_uri_prefix, 1, type: :string, json_name: "gcsUriPrefix"
end
defmodule Google.Cloud.Documentai.V1beta3.BatchDocumentsInputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source:
            {:gcs_prefix, Google.Cloud.Documentai.V1beta3.GcsPrefix.t() | nil}
            | {:gcs_documents, Google.Cloud.Documentai.V1beta3.GcsDocuments.t() | nil}
        }

  defstruct source: nil

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
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          gcs_uri: String.t()
        }

  defstruct gcs_uri: ""

  field :gcs_uri, 1, type: :string, json_name: "gcsUri"
end
defmodule Google.Cloud.Documentai.V1beta3.DocumentOutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_output_config,
             Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig.t() | nil}
        }

  defstruct destination: nil

  oneof :destination, 0

  field :gcs_output_config, 1,
    type: Google.Cloud.Documentai.V1beta3.DocumentOutputConfig.GcsOutputConfig,
    json_name: "gcsOutputConfig",
    oneof: 0
end
