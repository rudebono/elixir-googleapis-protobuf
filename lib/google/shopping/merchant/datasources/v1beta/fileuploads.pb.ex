defmodule Google.Shopping.Merchant.Datasources.V1beta.FileUpload.ProcessingState do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :PROCESSING_STATE_UNSPECIFIED, 0
  field :FAILED, 1
  field :IN_PROGRESS, 2
  field :SUCCEEDED, 3
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileUpload.Issue.Severity do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :SEVERITY_UNSPECIFIED, 0
  field :WARNING, 1
  field :ERROR, 2
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileUpload.Issue do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :title, 1, type: :string, deprecated: false
  field :description, 2, type: :string, deprecated: false
  field :code, 3, type: :string, deprecated: false
  field :count, 4, type: :int64, deprecated: false

  field :severity, 5,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileUpload.Issue.Severity,
    enum: true,
    deprecated: false

  field :documentation_uri, 6, type: :string, json_name: "documentationUri", deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileUpload do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
  field :data_source_id, 2, type: :int64, json_name: "dataSourceId", deprecated: false

  field :processing_state, 3,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileUpload.ProcessingState,
    json_name: "processingState",
    enum: true,
    deprecated: false

  field :issues, 4,
    repeated: true,
    type: Google.Shopping.Merchant.Datasources.V1beta.FileUpload.Issue,
    deprecated: false

  field :items_total, 5, type: :int64, json_name: "itemsTotal", deprecated: false
  field :items_created, 6, type: :int64, json_name: "itemsCreated", deprecated: false
  field :items_updated, 7, type: :int64, json_name: "itemsUpdated", deprecated: false

  field :upload_time, 8,
    type: Google.Protobuf.Timestamp,
    json_name: "uploadTime",
    deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.GetFileUploadRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.13.0", syntax: :proto3

  field :name, 1, type: :string, deprecated: false
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileUploadsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.shopping.merchant.datasources.v1beta.FileUploadsService",
    protoc_gen_elixir_version: "0.13.0"

  rpc :GetFileUpload,
      Google.Shopping.Merchant.Datasources.V1beta.GetFileUploadRequest,
      Google.Shopping.Merchant.Datasources.V1beta.FileUpload
end

defmodule Google.Shopping.Merchant.Datasources.V1beta.FileUploadsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Shopping.Merchant.Datasources.V1beta.FileUploadsService.Service
end