defmodule Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionScope do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPLETION_SCOPE_UNSPECIFIED, 0
  field :TENANT, 1
  field :PUBLIC, 2
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType do
  @moduledoc false

  use Protobuf, enum: true, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :COMPLETION_TYPE_UNSPECIFIED, 0
  field :JOB_TITLE, 1
  field :COMPANY_NAME, 2
  field :COMBINED, 3
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryRequest do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :parent, 1, type: :string, deprecated: false
  field :query, 2, type: :string, deprecated: false
  field :language_codes, 3, repeated: true, type: :string, json_name: "languageCodes"
  field :page_size, 4, type: :int32, json_name: "pageSize", deprecated: false
  field :company, 5, type: :string, deprecated: false

  field :scope, 6,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionScope,
    enum: true

  field :type, 7,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType,
    enum: true
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryResponse.CompletionResult do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :suggestion, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType,
    enum: true

  field :image_uri, 3, type: :string, json_name: "imageUri"
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryResponse do
  @moduledoc false

  use Protobuf, protoc_gen_elixir_version: "0.12.0", syntax: :proto3

  field :completion_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryResponse.CompletionResult,
    json_name: "completionResults"

  field :metadata, 2, type: Google.Cloud.Talent.V4beta1.ResponseMetadata
end

defmodule Google.Cloud.Talent.V4beta1.Completion.Service do
  @moduledoc false

  use GRPC.Service,
    name: "google.cloud.talent.v4beta1.Completion",
    protoc_gen_elixir_version: "0.12.0"

  rpc :CompleteQuery,
      Google.Cloud.Talent.V4beta1.CompleteQueryRequest,
      Google.Cloud.Talent.V4beta1.CompleteQueryResponse
end

defmodule Google.Cloud.Talent.V4beta1.Completion.Stub do
  @moduledoc false

  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.Completion.Service
end