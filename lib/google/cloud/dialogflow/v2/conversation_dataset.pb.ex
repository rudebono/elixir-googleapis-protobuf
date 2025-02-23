defmodule Google.Cloud.Dialogflow.V2.ConversationInfo do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :language_code, 1, type: :string, json_name: "languageCode", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.InputConfig do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  oneof :source, 0

  field :gcs_source, 1,
    type: Google.Cloud.Dialogflow.V2.GcsSources,
    json_name: "gcsSource",
    oneof: 0
end

defmodule Google.Cloud.Dialogflow.V2.ConversationDataset do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  field :satisfies_pzi, 8,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzi",
    deprecated: false

  field :satisfies_pzs, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "satisfiesPzs",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :conversation_dataset, 2,
    type: Google.Cloud.Dialogflow.V2.ConversationDataset,
    json_name: "conversationDataset",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.GetConversationDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationDatasetsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :page_size, 2, type: :int32, json_name: "pageSize", deprecated: false
  field :page_token, 3, type: :string, json_name: "pageToken", deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ListConversationDatasetsResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation_datasets, 1,
    repeated: true,
    type: Google.Cloud.Dialogflow.V2.ConversationDataset,
    json_name: "conversationDatasets"

  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Google.Cloud.Dialogflow.V2.DeleteConversationDatasetRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ImportConversationDataRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :input_config, 2,
    type: Google.Cloud.Dialogflow.V2.InputConfig,
    json_name: "inputConfig",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.ImportConversationDataOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

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

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation_dataset, 1,
    type: :string,
    json_name: "conversationDataset",
    deprecated: false

  field :import_count, 3, type: :int32, json_name: "importCount"
end

defmodule Google.Cloud.Dialogflow.V2.CreateConversationDatasetOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3

  field :conversation_dataset, 1,
    type: :string,
    json_name: "conversationDataset",
    deprecated: false
end

defmodule Google.Cloud.Dialogflow.V2.DeleteConversationDatasetOperationMetadata do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.14.1", syntax: :proto3
end

defmodule Google.Cloud.Dialogflow.V2.ConversationDatasets.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.dialogflow.v2.ConversationDatasets",
    protoc_gen_elixir_version: "0.14.1"

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
