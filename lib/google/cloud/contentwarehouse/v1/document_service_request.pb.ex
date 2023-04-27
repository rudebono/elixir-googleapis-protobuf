defmodule Google.Cloud.Contentwarehouse.V1.SearchDocumentsRequest.TotalResultSize do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :TOTAL_RESULT_SIZE_UNSPECIFIED, 0
  field :ESTIMATED_SIZE, 1
  field :ACTUAL_SIZE, 2
end

defmodule Google.Cloud.Contentwarehouse.V1.CloudAIDocumentOption.CustomizedEntitiesPropertiesConversionsEntry do
  @moduledoc false

  use Protobuf, map: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Google.Cloud.Contentwarehouse.V1.CloudAIDocumentOption do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :enable_entities_conversions, 1, type: :bool, json_name: "enableEntitiesConversions"

  field :customized_entities_properties_conversions, 2,
    repeated: true,
    type:
      Google.Cloud.Contentwarehouse.V1.CloudAIDocumentOption.CustomizedEntitiesPropertiesConversionsEntry,
    json_name: "customizedEntitiesPropertiesConversions",
    map: true
end

defmodule Google.Cloud.Contentwarehouse.V1.CreateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Contentwarehouse.V1.Document, deprecated: false

  field :request_metadata, 3,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"

  field :policy, 4, type: Google.Iam.V1.Policy

  field :cloud_ai_document_option, 5,
    type: Google.Cloud.Contentwarehouse.V1.CloudAIDocumentOption,
    json_name: "cloudAiDocumentOption"

  field :create_mask, 6, type: Google.Protobuf.FieldMask, json_name: "createMask"
end

defmodule Google.Cloud.Contentwarehouse.V1.GetDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :request_metadata, 2,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.UpdateDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :document, 2, type: Google.Cloud.Contentwarehouse.V1.Document, deprecated: false

  field :request_metadata, 3,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"

  field :cloud_ai_document_option, 5,
    type: Google.Cloud.Contentwarehouse.V1.CloudAIDocumentOption,
    json_name: "cloudAiDocumentOption"

  field :update_options, 6,
    type: Google.Cloud.Contentwarehouse.V1.UpdateOptions,
    json_name: "updateOptions"
end

defmodule Google.Cloud.Contentwarehouse.V1.DeleteDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false

  field :request_metadata, 2,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"
end

defmodule Google.Cloud.Contentwarehouse.V1.SearchDocumentsRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false

  field :request_metadata, 3,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"

  field :document_query, 4,
    type: Google.Cloud.Contentwarehouse.V1.DocumentQuery,
    json_name: "documentQuery"

  field :offset, 5, type: :int32
  field :page_size, 6, type: :int32, json_name: "pageSize"
  field :page_token, 7, type: :string, json_name: "pageToken"
  field :order_by, 8, type: :string, json_name: "orderBy"

  field :histogram_queries, 9,
    repeated: true,
    type: Google.Cloud.Contentwarehouse.V1.HistogramQuery,
    json_name: "histogramQueries"

  field :require_total_size, 10, type: :bool, json_name: "requireTotalSize"

  field :total_result_size, 12,
    type: Google.Cloud.Contentwarehouse.V1.SearchDocumentsRequest.TotalResultSize,
    json_name: "totalResultSize",
    enum: true

  field :qa_size_limit, 11, type: :int32, json_name: "qaSizeLimit"
end

defmodule Google.Cloud.Contentwarehouse.V1.LockDocumentRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :collection_id, 2, type: :string, json_name: "collectionId"

  field :locking_user, 3,
    type: Google.Cloud.Contentwarehouse.V1.UserInfo,
    json_name: "lockingUser"
end

defmodule Google.Cloud.Contentwarehouse.V1.FetchAclRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false

  field :request_metadata, 2,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"

  field :project_owner, 3, type: :bool, json_name: "projectOwner"
end

defmodule Google.Cloud.Contentwarehouse.V1.SetAclRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :resource, 1, type: :string, deprecated: false
  field :policy, 2, type: Google.Iam.V1.Policy, deprecated: false

  field :request_metadata, 3,
    type: Google.Cloud.Contentwarehouse.V1.RequestMetadata,
    json_name: "requestMetadata"

  field :project_owner, 4, type: :bool, json_name: "projectOwner"
end