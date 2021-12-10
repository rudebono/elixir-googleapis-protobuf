defmodule Google.Cloud.Documentai.V1beta1.OperationMetadata.State do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3

  @type t ::
          integer
          | :STATE_UNSPECIFIED
          | :ACCEPTED
          | :WAITING
          | :RUNNING
          | :SUCCEEDED
          | :CANCELLED
          | :FAILED

  field :STATE_UNSPECIFIED, 0
  field :ACCEPTED, 1
  field :WAITING, 2
  field :RUNNING, 3
  field :SUCCEEDED, 4
  field :CANCELLED, 5
  field :FAILED, 6
end
defmodule Google.Cloud.Documentai.V1beta1.BatchProcessDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Documentai.V1beta1.ProcessDocumentRequest.t()],
          parent: String.t()
        }

  defstruct requests: [],
            parent: ""

  field :requests, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.ProcessDocumentRequest,
    deprecated: false

  field :parent, 2, type: :string
end
defmodule Google.Cloud.Documentai.V1beta1.ProcessDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Documentai.V1beta1.InputConfig.t() | nil,
          output_config: Google.Cloud.Documentai.V1beta1.OutputConfig.t() | nil,
          document_type: String.t(),
          table_extraction_params:
            Google.Cloud.Documentai.V1beta1.TableExtractionParams.t() | nil,
          form_extraction_params: Google.Cloud.Documentai.V1beta1.FormExtractionParams.t() | nil,
          entity_extraction_params:
            Google.Cloud.Documentai.V1beta1.EntityExtractionParams.t() | nil,
          ocr_params: Google.Cloud.Documentai.V1beta1.OcrParams.t() | nil
        }

  defstruct input_config: nil,
            output_config: nil,
            document_type: "",
            table_extraction_params: nil,
            form_extraction_params: nil,
            entity_extraction_params: nil,
            ocr_params: nil

  field :input_config, 1,
    type: Google.Cloud.Documentai.V1beta1.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :output_config, 2,
    type: Google.Cloud.Documentai.V1beta1.OutputConfig,
    json_name: "outputConfig",
    deprecated: false

  field :document_type, 3, type: :string, json_name: "documentType"

  field :table_extraction_params, 4,
    type: Google.Cloud.Documentai.V1beta1.TableExtractionParams,
    json_name: "tableExtractionParams"

  field :form_extraction_params, 5,
    type: Google.Cloud.Documentai.V1beta1.FormExtractionParams,
    json_name: "formExtractionParams"

  field :entity_extraction_params, 6,
    type: Google.Cloud.Documentai.V1beta1.EntityExtractionParams,
    json_name: "entityExtractionParams"

  field :ocr_params, 7, type: Google.Cloud.Documentai.V1beta1.OcrParams, json_name: "ocrParams"
end
defmodule Google.Cloud.Documentai.V1beta1.BatchProcessDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Cloud.Documentai.V1beta1.ProcessDocumentResponse.t()]
        }

  defstruct responses: []

  field :responses, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.ProcessDocumentResponse
end
defmodule Google.Cloud.Documentai.V1beta1.ProcessDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Documentai.V1beta1.InputConfig.t() | nil,
          output_config: Google.Cloud.Documentai.V1beta1.OutputConfig.t() | nil
        }

  defstruct input_config: nil,
            output_config: nil

  field :input_config, 1,
    type: Google.Cloud.Documentai.V1beta1.InputConfig,
    json_name: "inputConfig"

  field :output_config, 2,
    type: Google.Cloud.Documentai.V1beta1.OutputConfig,
    json_name: "outputConfig"
end
defmodule Google.Cloud.Documentai.V1beta1.OcrParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_hints: [String.t()]
        }

  defstruct language_hints: []

  field :language_hints, 1, repeated: true, type: :string, json_name: "languageHints"
end
defmodule Google.Cloud.Documentai.V1beta1.TableExtractionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          table_bound_hints: [Google.Cloud.Documentai.V1beta1.TableBoundHint.t()],
          header_hints: [String.t()],
          model_version: String.t()
        }

  defstruct enabled: false,
            table_bound_hints: [],
            header_hints: [],
            model_version: ""

  field :enabled, 1, type: :bool

  field :table_bound_hints, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.TableBoundHint,
    json_name: "tableBoundHints",
    deprecated: false

  field :header_hints, 3,
    repeated: true,
    type: :string,
    json_name: "headerHints",
    deprecated: false

  field :model_version, 4, type: :string, json_name: "modelVersion"
end
defmodule Google.Cloud.Documentai.V1beta1.TableBoundHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_number: integer,
          bounding_box: Google.Cloud.Documentai.V1beta1.BoundingPoly.t() | nil
        }

  defstruct page_number: 0,
            bounding_box: nil

  field :page_number, 1, type: :int32, json_name: "pageNumber", deprecated: false

  field :bounding_box, 2,
    type: Google.Cloud.Documentai.V1beta1.BoundingPoly,
    json_name: "boundingBox"
end
defmodule Google.Cloud.Documentai.V1beta1.FormExtractionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          key_value_pair_hints: [Google.Cloud.Documentai.V1beta1.KeyValuePairHint.t()],
          model_version: String.t()
        }

  defstruct enabled: false,
            key_value_pair_hints: [],
            model_version: ""

  field :enabled, 1, type: :bool

  field :key_value_pair_hints, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta1.KeyValuePairHint,
    json_name: "keyValuePairHints"

  field :model_version, 3, type: :string, json_name: "modelVersion"
end
defmodule Google.Cloud.Documentai.V1beta1.KeyValuePairHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value_types: [String.t()]
        }

  defstruct key: "",
            value_types: []

  field :key, 1, type: :string
  field :value_types, 2, repeated: true, type: :string, json_name: "valueTypes"
end
defmodule Google.Cloud.Documentai.V1beta1.EntityExtractionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          model_version: String.t()
        }

  defstruct enabled: false,
            model_version: ""

  field :enabled, 1, type: :bool
  field :model_version, 2, type: :string, json_name: "modelVersion"
end
defmodule Google.Cloud.Documentai.V1beta1.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Documentai.V1beta1.GcsSource.t() | nil},
          mime_type: String.t()
        }

  defstruct source: nil,
            mime_type: ""

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Documentai.V1beta1.GcsSource,
    json_name: "gcsSource",
    oneof: 0

  field :mime_type, 2, type: :string, json_name: "mimeType", deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta1.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination:
            {:gcs_destination, Google.Cloud.Documentai.V1beta1.GcsDestination.t() | nil},
          pages_per_shard: integer
        }

  defstruct destination: nil,
            pages_per_shard: 0

  oneof :destination, 0

  field :gcs_destination, 1,
    type: Google.Cloud.Documentai.V1beta1.GcsDestination,
    json_name: "gcsDestination",
    oneof: 0

  field :pages_per_shard, 2, type: :int32, json_name: "pagesPerShard"
end
defmodule Google.Cloud.Documentai.V1beta1.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta1.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct uri: ""

  field :uri, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Documentai.V1beta1.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta1.OperationMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct state: :STATE_UNSPECIFIED,
            state_message: "",
            create_time: nil,
            update_time: nil

  field :state, 1, type: Google.Cloud.Documentai.V1beta1.OperationMetadata.State, enum: true
  field :state_message, 2, type: :string, json_name: "stateMessage"
  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
  field :update_time, 4, type: Google.Protobuf.Timestamp, json_name: "updateTime"
end
defmodule Google.Cloud.Documentai.V1beta1.DocumentUnderstandingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.documentai.v1beta1.DocumentUnderstandingService"

  rpc :BatchProcessDocuments,
      Google.Cloud.Documentai.V1beta1.BatchProcessDocumentsRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Documentai.V1beta1.DocumentUnderstandingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Documentai.V1beta1.DocumentUnderstandingService.Service
end
