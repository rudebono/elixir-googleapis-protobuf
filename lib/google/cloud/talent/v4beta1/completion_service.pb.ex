defmodule Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPLETION_SCOPE_UNSPECIFIED | :TENANT | :PUBLIC

  field :COMPLETION_SCOPE_UNSPECIFIED, 0
  field :TENANT, 1
  field :PUBLIC, 2
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPLETION_TYPE_UNSPECIFIED | :JOB_TITLE | :COMPANY_NAME | :COMBINED

  field :COMPLETION_TYPE_UNSPECIFIED, 0
  field :JOB_TITLE, 1
  field :COMPANY_NAME, 2
  field :COMBINED, 3
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          parent: String.t(),
          query: String.t(),
          language_codes: [String.t()],
          page_size: integer,
          company: String.t(),
          scope: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionScope.t(),
          type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType.t()
        }

  defstruct [:parent, :query, :language_codes, :page_size, :company, :scope, :type]

  field :parent, 1, type: :string
  field :query, 2, type: :string
  field :language_codes, 3, repeated: true, type: :string, json_name: "languageCodes"
  field :page_size, 4, type: :int32, json_name: "pageSize"
  field :company, 5, type: :string

  field :scope, 6,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionScope,
    enum: true

  field :type, 7,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType,
    enum: true

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryResponse.CompletionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: String.t(),
          type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType.t(),
          image_uri: String.t()
        }

  defstruct [:suggestion, :type, :image_uri]

  field :suggestion, 1, type: :string

  field :type, 2,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryRequest.CompletionType,
    enum: true

  field :image_uri, 3, type: :string, json_name: "imageUri"

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.CompleteQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          completion_results: [
            Google.Cloud.Talent.V4beta1.CompleteQueryResponse.CompletionResult.t()
          ],
          metadata: Google.Cloud.Talent.V4beta1.ResponseMetadata.t() | nil
        }

  defstruct [:completion_results, :metadata]

  field :completion_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4beta1.CompleteQueryResponse.CompletionResult,
    json_name: "completionResults"

  field :metadata, 2, type: Google.Cloud.Talent.V4beta1.ResponseMetadata

  def transform_module(), do: nil
end

defmodule Google.Cloud.Talent.V4beta1.Completion.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4beta1.Completion"

  rpc :CompleteQuery,
      Google.Cloud.Talent.V4beta1.CompleteQueryRequest,
      Google.Cloud.Talent.V4beta1.CompleteQueryResponse
end

defmodule Google.Cloud.Talent.V4beta1.Completion.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4beta1.Completion.Service
end
