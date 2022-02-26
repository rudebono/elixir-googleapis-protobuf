defmodule Google.Cloud.Dialogflow.V2.ConversationInfo do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          language_code: String.t()
        }

  defstruct language_code: ""

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.InputConfig do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          source: {:gcs_source, Google.Cloud.Dialogflow.V2.GcsSources.t() | nil}
        }

  defstruct source: nil

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Dialogflow.V2.GcsSources,
    json_name: "gcsSource",
    oneof: 0
end
defmodule Google.Cloud.Dialogflow.V2.ConversationDataset do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          display_name: String.t(),
          description: String.t(),
          create_time: Google.Protobuf.Timestamp.t() | nil,
          input_config: Google.Cloud.Dialogflow.V2.InputConfig.t() | nil,
          conversation_info: Google.Cloud.Dialogflow.V2.ConversationInfo.t() | nil,
          conversation_count: integer
        }

  defstruct name: "",
            display_name: "",
            description: "",
            create_time: nil,
            input_config: nil,
            conversation_info: nil,
            conversation_count: 0

  field :name, 1, type: :string, deprecated: false
  field :display_name, 2, type: :string, json_name: "displayName", deprecated: false
  field :description, 3, type: :string, deprecated: false

  field :create_time, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "createTime",
    deprecated: false

  field :input_config, 5,
    type: Google.Cloud.Dialogflow.V2.InputConfig,
    json_name: "inputConfig",
    deprecated: false

  field :conversation_info, 6,
    type: Google.Cloud.Dialogflow.V2.ConversationInfo,
    json_name: "conversationInfo",
    deprecated: false

  field :conversation_count, 7, type: :int64, json_name: "conversationCount", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.CreateConversationDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          conversation_dataset: Google.Cloud.Dialogflow.V2.ConversationDataset.t() | nil
        }

  defstruct parent: "",
            conversation_dataset: nil

  field :parent, 1, type: :string, deprecated: false

  field :conversation_dataset, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationDataset,
    json_name: "conversationDataset",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.GetConversationDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListConversationDatasetsRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          page_size: integer,
          page_token: String.t()
        }

  defstruct parent: "",
            page_size: 0,
            page_token: ""

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ListConversationDatasetsResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_datasets: [Google.Cloud.Dialogflow.V2.ConversationDataset.t()],
          next_page_token: String.t()
        }

  defstruct conversation_datasets: [],
            next_page_token: ""

  field :conversation_datasets, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationDataset,
    json_name: "conversationDatasets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Dialogflow.V2.DeleteConversationDatasetRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t()
        }

  defstruct name: ""

  field :name, 1, type: :string, deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ImportConversationDataRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          name: String.t(),
          input_config: Google.Cloud.Dialogflow.V2.InputConfig.t() | nil
        }

  defstruct name: "",
            input_config: nil

  field :name, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Dialogflow.V2.InputConfig,
    json_name: "inputConfig",
    deprecated: false
end
defmodule Google.Cloud.Dialogflow.V2.ImportConversationDataOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_dataset: String.t(),
          partial_failures: [Google.Rpc.Status.t()],
          create_time: Google.Protobuf.Timestamp.t() | nil
        }

  defstruct conversation_dataset: "",
            partial_failures: [],
            create_time: nil

  field :conversation_dataset, 1,
    type: :string,
    json_name: "conversationDataset",
    deprecated: false

  field :partial_failures, 2,
    repeated: true,
    type: Google.Rpc.Status,
    json_name: "partialFailures"

  field :create_time, 3, type: Google.Protobuf.Timestamp, json_name: "createTime"
end
defmodule Google.Cloud.Dialogflow.V2.ImportConversationDataOperationResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          conversation_dataset: String.t(),
          import_count: integer
        }

  defstruct conversation_dataset: "",
            import_count: 0

  field :conversation_dataset, 1,
    type: :string,
    json_name: "conversationDataset",
    deprecated: false

  field :import_count, 3, type: :int32, json_name: "importCount"
end
defmodule Google.Cloud.Dialogflow.V2.CreateConversationDatasetOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dialogflow.V2.DeleteConversationDatasetOperationMetadata do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{}

  defstruct []
end
defmodule Google.Cloud.Dialogflow.V2.ConversationDatasets.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.dialogflow.v2.ConversationDatasets"

  rpc :CreateConversationDataset,
      Google.Cloud.Dialogflow.V2.CreateConversationDatasetRequest,
      Google.Longrunning.Operation

  rpc :GetConversationDataset,
      Google.Cloud.Dialogflow.V2.GetConversationDatasetRequest,
      Google.Cloud.Dialogflow.V2.ConversationDataset

  rpc :ListConversationDatasets,
      Google.Cloud.Dialogflow.V2.ListConversationDatasetsRequest,
      Google.Cloud.Dialogflow.V2.ListConversationDatasetsResponse

  rpc :DeleteConversationDataset,
      Google.Cloud.Dialogflow.V2.DeleteConversationDatasetRequest,
      Google.Longrunning.Operation

  rpc :ImportConversationData,
      Google.Cloud.Dialogflow.V2.ImportConversationDataRequest,
      Google.Longrunning.Operation
end

defmodule Google.Cloud.Dialogflow.V2.ConversationDatasets.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Dialogflow.V2.ConversationDatasets.Service
end
