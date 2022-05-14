defmodule Google.Cloud.Support.V1alpha1.GetSupportAccountRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Support.V1alpha1.ListSupportAccountsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :filter, 1, type: :string
  field :page_size, 2, type: :int64, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Support.V1alpha1.ListSupportAccountsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :accounts, 1, repeated: true, type: Google.Cloud.Support.Common.SupportAccount
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Support.V1alpha1.GetCaseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Support.V1alpha1.ListCasesRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :filter, 2, type: :string
  field :page_size, 3, type: :int64, json_name: "pageSize"
  field :page_token, 4, type: :string, json_name: "pageToken"
end
defmodule Google.Cloud.Support.V1alpha1.ListCasesResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :cases, 1, repeated: true, type: Google.Cloud.Support.Common.Case
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end
defmodule Google.Cloud.Support.V1alpha1.ListCommentsRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
end
defmodule Google.Cloud.Support.V1alpha1.ListCommentsResponse do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :comments, 1, repeated: true, type: Google.Cloud.Support.Common.Comment
end
defmodule Google.Cloud.Support.V1alpha1.CreateCaseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :parent, 1, type: :string
  field :case, 2, type: Google.Cloud.Support.Common.Case
end
defmodule Google.Cloud.Support.V1alpha1.UpdateCaseRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :case, 1, type: Google.Cloud.Support.Common.Case
  field :update_mask, 2, type: Google.Protobuf.FieldMask, json_name: "updateMask"
end
defmodule Google.Cloud.Support.V1alpha1.CreateCommentRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3

  field :name, 1, type: :string
  field :comment, 2, type: Google.Cloud.Support.Common.Comment
end
defmodule Google.Cloud.Support.V1alpha1.GetIssueTaxonomyRequest do
  @moduledoc false
  use Protobuf, protoc_gen_elixir_version: "0.10.0", syntax: :proto3
end
defmodule Google.Cloud.Support.V1alpha1.CloudSupport.Service do
  @moduledoc false
  use GRPC.Service,
    name: "google.cloud.support.v1alpha1.CloudSupport",
    protoc_gen_elixir_version: "0.10.0"

  rpc :GetSupportAccount,
      Google.Cloud.Support.V1alpha1.GetSupportAccountRequest,
      Google.Cloud.Support.Common.SupportAccount

  rpc :ListSupportAccounts,
      Google.Cloud.Support.V1alpha1.ListSupportAccountsRequest,
      Google.Cloud.Support.V1alpha1.ListSupportAccountsResponse

  rpc :GetCase, Google.Cloud.Support.V1alpha1.GetCaseRequest, Google.Cloud.Support.Common.Case

  rpc :ListCases,
      Google.Cloud.Support.V1alpha1.ListCasesRequest,
      Google.Cloud.Support.V1alpha1.ListCasesResponse

  rpc :ListComments,
      Google.Cloud.Support.V1alpha1.ListCommentsRequest,
      Google.Cloud.Support.V1alpha1.ListCommentsResponse

  rpc :CreateCase,
      Google.Cloud.Support.V1alpha1.CreateCaseRequest,
      Google.Cloud.Support.Common.Case

  rpc :UpdateCase,
      Google.Cloud.Support.V1alpha1.UpdateCaseRequest,
      Google.Cloud.Support.Common.Case

  rpc :CreateComment,
      Google.Cloud.Support.V1alpha1.CreateCommentRequest,
      Google.Cloud.Support.Common.Comment

  rpc :GetIssueTaxonomy,
      Google.Cloud.Support.V1alpha1.GetIssueTaxonomyRequest,
      Google.Cloud.Support.Common.IssueTaxonomy
end

defmodule Google.Cloud.Support.V1alpha1.CloudSupport.Stub do
  @moduledoc false
  use GRPC.Stub, service: Google.Cloud.Support.V1alpha1.CloudSupport.Service
end
