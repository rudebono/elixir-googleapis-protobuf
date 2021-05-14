defmodule Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionScope do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPLETION_SCOPE_UNSPECIFIED | :TENANT | :PUBLIC

  field :COMPLETION_SCOPE_UNSPECIFIED, 0

  field :TENANT, 1

  field :PUBLIC, 2
end

defmodule Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionType do
  @moduledoc false
  use Protobuf, enum: true, syntax: :proto3
  @type t :: integer | :COMPLETION_TYPE_UNSPECIFIED | :JOB_TITLE | :COMPANY_NAME | :COMBINED

  field :COMPLETION_TYPE_UNSPECIFIED, 0

  field :JOB_TITLE, 1

  field :COMPANY_NAME, 2

  field :COMBINED, 3
end

defmodule Google.Cloud.Talent.V4.CompleteQueryRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          tenant: String.t(),
          query: String.t(),
          language_codes: [String.t()],
          page_size: integer,
          company: String.t(),
          scope: Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionScope.t(),
          type: Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionType.t()
        }

  defstruct [:tenant, :query, :language_codes, :page_size, :company, :scope, :type]

  field :tenant, 1, type: :string
  field :query, 2, type: :string
  field :language_codes, 3, repeated: true, type: :string
  field :page_size, 4, type: :int32
  field :company, 5, type: :string
  field :scope, 6, type: Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionScope, enum: true
  field :type, 7, type: Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionType, enum: true
end

defmodule Google.Cloud.Talent.V4.CompleteQueryResponse.CompletionResult do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          suggestion: String.t(),
          type: Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionType.t(),
          image_uri: String.t()
        }

  defstruct [:suggestion, :type, :image_uri]

  field :suggestion, 1, type: :string
  field :type, 2, type: Google.Cloud.Talent.V4.CompleteQueryRequest.CompletionType, enum: true
  field :image_uri, 3, type: :string
end

defmodule Google.Cloud.Talent.V4.CompleteQueryResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          completion_results: [Google.Cloud.Talent.V4.CompleteQueryResponse.CompletionResult.t()],
          metadata: Google.Cloud.Talent.V4.ResponseMetadata.t() | nil
        }

  defstruct [:completion_results, :metadata]

  field :completion_results, 1,
    repeated: true,
    type: Google.Cloud.Talent.V4.CompleteQueryResponse.CompletionResult

  field :metadata, 2, type: Google.Cloud.Talent.V4.ResponseMetadata
end

defmodule Google.Cloud.Talent.V4.Completion.Service do
  @moduledoc false
  use GRPC.Service, name: "google.cloud.talent.v4.Completion"

  rpc :CompleteQuery,
      Google.Cloud.Talent.V4.CompleteQueryRequest,
      Google.Cloud.Talent.V4.CompleteQueryResponse
end

defmodule Google.Cloud.Talent.V4.Completion.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Talent.V4.Completion.Service
end
