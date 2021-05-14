defmodule Google.Cloud.Documentai.V1beta2.OperationMetadata.State do
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

defmodule Google.Cloud.Documentai.V1beta2.BatchProcessDocumentsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          requests: [Google.Cloud.Documentai.V1beta2.ProcessDocumentRequest.t()],
          parent: String.t()
        }

  defstruct [:requests, :parent]

  field :requests, 1, repeated: true, type: Google.Cloud.Documentai.V1beta2.ProcessDocumentRequest
  field :parent, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.ProcessDocumentRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          input_config: Google.Cloud.Documentai.V1beta2.InputConfig.t() | nil,
          output_config: Google.Cloud.Documentai.V1beta2.OutputConfig.t() | nil,
          document_type: String.t(),
          table_extraction_params:
            Google.Cloud.Documentai.V1beta2.TableExtractionParams.t() | nil,
          form_extraction_params: Google.Cloud.Documentai.V1beta2.FormExtractionParams.t() | nil,
          entity_extraction_params:
            Google.Cloud.Documentai.V1beta2.EntityExtractionParams.t() | nil,
          ocr_params: Google.Cloud.Documentai.V1beta2.OcrParams.t() | nil,
          automl_params: Google.Cloud.Documentai.V1beta2.AutoMlParams.t() | nil
        }

  defstruct [
    :parent,
    :input_config,
    :output_config,
    :document_type,
    :table_extraction_params,
    :form_extraction_params,
    :entity_extraction_params,
    :ocr_params,
    :automl_params
  ]

  field :parent, 9, type: :string
  field :input_config, 1, type: Google.Cloud.Documentai.V1beta2.InputConfig
  field :output_config, 2, type: Google.Cloud.Documentai.V1beta2.OutputConfig
  field :document_type, 3, type: :string
  field :table_extraction_params, 4, type: Google.Cloud.Documentai.V1beta2.TableExtractionParams
  field :form_extraction_params, 5, type: Google.Cloud.Documentai.V1beta2.FormExtractionParams
  field :entity_extraction_params, 6, type: Google.Cloud.Documentai.V1beta2.EntityExtractionParams
  field :ocr_params, 7, type: Google.Cloud.Documentai.V1beta2.OcrParams
  field :automl_params, 8, type: Google.Cloud.Documentai.V1beta2.AutoMlParams
end

defmodule Google.Cloud.Documentai.V1beta2.BatchProcessDocumentsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          responses: [Google.Cloud.Documentai.V1beta2.ProcessDocumentResponse.t()]
        }

  defstruct [:responses]

  field :responses, 1,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta2.ProcessDocumentResponse
end

defmodule Google.Cloud.Documentai.V1beta2.ProcessDocumentResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          input_config: Google.Cloud.Documentai.V1beta2.InputConfig.t() | nil,
          output_config: Google.Cloud.Documentai.V1beta2.OutputConfig.t() | nil
        }

  defstruct [:input_config, :output_config]

  field :input_config, 1, type: Google.Cloud.Documentai.V1beta2.InputConfig
  field :output_config, 2, type: Google.Cloud.Documentai.V1beta2.OutputConfig
end

defmodule Google.Cloud.Documentai.V1beta2.OcrParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_hints: [String.t()]
        }

  defstruct [:language_hints]

  field :language_hints, 1, repeated: true, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.TableExtractionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          table_bound_hints: [Google.Cloud.Documentai.V1beta2.TableBoundHint.t()],
          header_hints: [String.t()],
          model_version: String.t()
        }

  defstruct [:enabled, :table_bound_hints, :header_hints, :model_version]

  field :enabled, 1, type: :bool

  field :table_bound_hints, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta2.TableBoundHint

  field :header_hints, 3, repeated: true, type: :string
  field :model_version, 4, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.TableBoundHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          page_number: integer,
          bounding_box: Google.Cloud.Documentai.V1beta2.BoundingPoly.t() | nil
        }

  defstruct [:page_number, :bounding_box]

  field :page_number, 1, type: :int32
  field :bounding_box, 2, type: Google.Cloud.Documentai.V1beta2.BoundingPoly
end

defmodule Google.Cloud.Documentai.V1beta2.FormExtractionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          key_value_pair_hints: [Google.Cloud.Documentai.V1beta2.KeyValuePairHint.t()],
          model_version: String.t()
        }

  defstruct [:enabled, :key_value_pair_hints, :model_version]

  field :enabled, 1, type: :bool

  field :key_value_pair_hints, 2,
    repeated: true,
    type: Google.Cloud.Documentai.V1beta2.KeyValuePairHint

  field :model_version, 3, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.KeyValuePairHint do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          key: String.t(),
          value_types: [String.t()]
        }

  defstruct [:key, :value_types]

  field :key, 1, type: :string
  field :value_types, 2, repeated: true, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.EntityExtractionParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          enabled: boolean,
          model_version: String.t()
        }

  defstruct [:enabled, :model_version]

  field :enabled, 1, type: :bool
  field :model_version, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.AutoMlParams do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          model: String.t()
        }

  defstruct [:model]

  field :model, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {atom, any},
          mime_type: String.t()
        }

  defstruct [:source, :mime_type]

  oneof :source, 0
  field :gcs_source, 1, type: Google.Cloud.Documentai.V1beta2.GcsSource, oneof: 0
  field :contents, 3, type: :bytes, oneof: 0
  field :mime_type, 2, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.OutputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          destination: {atom, any},
          pages_per_shard: integer
        }

  defstruct [:destination, :pages_per_shard]

  oneof :destination, 0
  field :gcs_destination, 1, type: Google.Cloud.Documentai.V1beta2.GcsDestination, oneof: 0
  field :pages_per_shard, 2, type: :int32
end

defmodule Google.Cloud.Documentai.V1beta2.GcsSource do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.GcsDestination do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          uri: String.t()
        }

  defstruct [:uri]

  field :uri, 1, type: :string
end

defmodule Google.Cloud.Documentai.V1beta2.OperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          state: Google.Cloud.Documentai.V1beta2.OperationMetadata.State.t(),
          state_message: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          update_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct [:state, :state_message, :create_time, :update_time]

  field :state, 1, type: Google.Cloud.Documentai.V1beta2.OperationMetadata.State, enum: true
  field :state_message, 2, type: :string
  field :create_time, 3, type: Google.Protobuf.Timestamp
  field :update_time, 4, type: Google.Protobuf.Timestamp
end

defmodule Google.Cloud.Documentai.V1beta2.DocumentUnderstandingService.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.documentai.v1beta2.DocumentUnderstandingService"

  rpc :BatchProcessDocuments,
      Google.Cloud.Documentai.V1beta2.BatchProcessDocumentsRequest,
      Google.Longrunning.Operation

  rpc :ProcessDocument,
      Google.Cloud.Documentai.V1beta2.ProcessDocumentRequest,
      Google.Cloud.Documentai.V1beta2.Document
end

defmodule Google.Cloud.Documentai.V1beta2.DocumentUnderstandingService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Documentai.V1beta2.DocumentUnderstandingService.Service
end
